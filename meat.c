#include <sys/types.h> 
#include <stdio.h> 
#include <stdlib.h>
//#include "fcgi_config.h" 
#include "fcgiapp.h" 
//#include <fcgi_stdio.h>
#include <string.h>
#include <mysql/mysql.h>
#include <malloc.h>
#define SOCKET_PATH "127.0.0.1:9000" 
#define THREAD_COUNT 4
static int socketId; 

MYSQL *mysql_con()
{
    MYSQL *mysql;

    mysql = mysql_init(NULL);
    mysql_real_connect(mysql, "127.0.0.1", "pma", "intgrea7", 
          "meat", 0,NULL,0);
    mysql_set_character_set(mysql, "utf8mb4");

    char *query = "SET NAMES utf8mb4";
    mysql_real_query(mysql, query,strlen(query));
    
    
    return mysql;
}
char *copydata(char *filename)
{

  FILE * ptrFile = fopen(filename , "rb" );
 
  if (ptrFile == NULL)
  {
      exit(1);
  }
 
  fseek(ptrFile , 0 , SEEK_END);                          
  long lSize = ftell(ptrFile);                            
  rewind (ptrFile);                                      
 
  char * buffer = (char*) malloc(sizeof(char) * lSize); 
  if (buffer == NULL)
  {
      exit(2);
  }
 
  size_t result = fread(buffer, 1, lSize, ptrFile); 
  if (result != lSize)
  {
      exit (3);
  }
 
  
  fclose (ptrFile);
  return buffer;
}


void echodata(char *data, FCGX_Stream *out)
{
//		FCGX_FPrintF(out,"Content-type: text/html\r\n\r\n");
            FCGX_PutS("Content-type: text/html\r\n", out); 
            FCGX_PutS("\r\n", out); 

	    FCGX_PutS(data,out);
}
void rawdata(char *data, FCGX_Stream *out)
{
	    FCGX_PutS(data,out);
}


void art(FCGX_Stream *out,MYSQL *mysql,char *id)
{
    MYSQL_ROW row;	
	char *header1 = copydata("tpl/header1.tpl");
	echodata(header1, out);
	free(header1);

	char query1[150] = "SELECT name, id, DATE_FORMAT(reg_date, '%H:%i:%s - %W %M %Y'), article FROM art WHERE id=";
	char *query2 = strcat(query1,id);
//		mysql_real_query(mysql,query2,strlen(query2));
	mysql_query(mysql,query2);
//		rawdata(query2,out);
	MYSQL_RES *result = mysql_store_result(mysql);
	row = mysql_fetch_row(result);
	mysql_free_result(result);

	char *menu = copydata("tpl/menu.tpl");
	rawdata(menu,out);
	free(menu);
    
	char *header2 = copydata("tpl/header2.tpl");
	rawdata(header2,out);
	free(header2);
	rawdata(row[0],out);

	char *header3 = copydata("tpl/header3.tpl");
	rawdata(header3,out);
	free(header3);
	rawdata(row[1],out);
	rawdata(row[3],out);
	char *header4 = copydata("tpl/header4.tpl");
	rawdata(header4,out);
	free(header4);

	rawdata(row[2],out);
	
//		 while ((row = mysql_fetch_row(result))) 
//		{ 
//  		    for(int i = 0; i < num_fields; i++) 
//  		    { 
//        		 rawdata(row[0],out);
//  		    } 
//		}
	char *footer = copydata("tpl/footer.tpl");
	rawdata(footer,out);
	free(footer);
	
}


void newart(FCGX_Stream *out,MYSQL *mysql)
{
    MYSQL_ROW row;
//		copydata("tpl/header1.tpl");
//		echodata(string,out);
	
/*		test = copydata("z");
//		rawdata(test,out);
	char *query1 = "UPDATE art SET name = 'Зеленый борщ из куриного филе' , article = '";
//		char * query2 = strcat(query1,test);
	char *query3 = "', reg_date=NOW() WHERE id='2'";
	size_t sq1 = sizeof(query1);
	size_t sq3 = sizeof(query3);
	size_t st = sizeof(test);
	size_t size = sq1 + sq3 + st;
//		
//		mysql_real_query(mysql,query3,strlen(query3));
	char *total = malloc(size);
	memcpy(total,query1,sq1);
	memcpy(total + sq1, test, st);
	memcpy(total + sq1 + st, query3, sq3); 
	mysql_real_query(mysql,total,size);
	rawdata(mysql_error(mysql),out); 
	rawdata(total,out);
	free(total); 
	free(test);
	   FILE *fp;
	fp = fopen("/tmp/test.txt", "w");
	fprintf(fp, total);
	fclose(fp);
	test = copydata("footer.tpl");
	rawdata(test,out);
	free(test);
*/

}
void doit() 
{ 
    int rc, i; 
    FCGX_Stream *in, *out, *err;
    FCGX_ParamArray envp;
    
    char *tmp;
    int count = 0; 
    char *v;
    int action;
    MYSQL *mysql = mysql_con();
    while (FCGX_Accept(&in, &out, &err, &envp) >= 0) 
    {
    char * method = FCGX_GetParam("REQUEST_METHOD", envp); 
        if (method == NULL)
        {
            continue;
        }

        char * intput;
        if (strcmp(method, "GET") == 0)
        {
            intput = FCGX_GetParam("QUERY_STRING", envp);
        }
//	echodata(intput,out);
    char *id ="'2'";
    if (strcmp(intput,"") == 0) action = 0; else
    if (strcmp(intput,"new") == 0) action = 1;
    switch (action) {
    default: art(out,mysql,id);
    break;
    case 1: newart(out,mysql);
    break;
    }
    }
    
    mysql_close(mysql);
} 

int main(void) 
{
    doit();    
    return 0; 
}