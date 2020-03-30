#include <sys/socket.h>
#include <sys/stat.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <stdlib.h>
#include <netinet/tcp.h>
#include "server.h"
#include <sys/time.h>
#define MAX 1024
#define SOCKET_ERROR -1

int CREST_PORT = -1;
int svr_sock;
int clt_sock;


void start_server (int port) {
  CREST_PORT = port;
  cnct_server();
  cnct_client();

}

void close_server() {
  int close_signal = -1 ;

  int len = 0 ;
  int s = 0;
  char * buf = (char *) &close_signal ;
  while (len < 4 && (s = send(clt_sock, buf, 4 - len, 0)) > 0) {
    buf += s ;
    len += s ;
  }
  close(clt_sock);
  close(svr_sock);
}

void cnct_server(){

    struct sockaddr_in serv_addr;
    svr_sock=socket(PF_INET, SOCK_STREAM, 0);

    if(svr_sock == -1)
        error_handling("socket() error");

    const int on = 1;
    memset(&serv_addr, 0, sizeof(serv_addr));

    serv_addr.sin_family=AF_INET;
    serv_addr.sin_addr.s_addr=htonl(INADDR_ANY);
    serv_addr.sin_port=htons(2020);

    setsockopt(svr_sock, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on));
    setsockopt(svr_sock, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

    if(bind(svr_sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr))==-1)
        error_handling("bind() error");

    if(listen(svr_sock, 1)==-1)
        error_handling("listen() error");
}

void cnct_client(){

    int clnt_addr_size;
    struct sockaddr_in clnt_addr;
    clnt_addr_size=sizeof(clnt_addr);

    while(1){
        clt_sock=accept(svr_sock, (struct sockaddr*)&clnt_addr,(socklen_t *)&clnt_addr_size);
        if(clt_sock !=-1)break;

    }
    //error_handling("accept() error");
}

void send_input(const char* input) {
    const char * data = 0x0;
    int s ;

    // 1. send input string file length
    //input 파일 길이
    int input_file_len = strlen(input);
//    if (input_file_len > 0) {
//      input_file_len += 1; // for null character
 //   }

    char * finput_len = (char *) &input_file_len ;
    int static_input_name_size = 4 ;
    while (static_input_name_size > 0 && (s = send(clt_sock, finput_len, static_input_name_size, 0)) > 0) {
        finput_len += s ;
        static_input_name_size -= s ;
    }

    //fprintf(stderr, "input file len = %d", input_file_len);
    //보낼 데이터에 input 포인터 assign
    data = input;
    while (input_file_len > 0 && (s = send(clt_sock, data, input_file_len, 0)) > 0) {
       data += s ;
       input_file_len -= s ;
    } //while
   
}

void recv_szd_execution() {
  struct stat file_info; //지금까지 받은 파일 전체 크기
  FILE *fp;
  int len = 0;
  int *data = 0x0;
  char buf_msg[4096]; //buffer
  int s;
  int szd_execution_file_size ;

  // receive szd_execution size
  data = &szd_execution_file_size ;
  while (len < 4 && (s = recv(clt_sock, data, 4 - len, 0 )) > 0) {
    data +=s;
    len += s;
  }

  // receive szd_execution file
  fp = fopen("szd_execution", "wb");
 
  len = 0;
  s = 0;
  while(len < szd_execution_file_size) {
    if (szd_execution_file_size > 4096)
      s = recv(clt_sock, buf_msg, 4096, 0) ;
    else
      s = recv(clt_sock, buf_msg, szd_execution_file_size - len, 0) ;
    if (s <= 0)
      break ;
    fwrite(buf_msg, s , 1 , fp);

    len += s ;
  }

  fclose(fp);
}

void error_handling(char* message) {
    fputs(message, stderr);
    fputc('\n', stderr);
    exit(1);
}

// if(data == 0x0){
//     data = malloc(s);
//     memcpy(data, buf_msg, s);
//     len = s;
// }
// else {
//     data = realloc(data, len + s);
//     memcpy(data+len, buf_msg, s);
//     len += s ;
// }
//write(fp, data, s);
