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
//zls#include "realfinal.h"
#define PORT_NUMBER 3030
#define MAX 1024
#define SOCKET_ERROR -1

void error_handling(char *message);
void cnct_client(int port);
void recv_file(int port);
void recv_msg(int port);
void send_file(int port, char* file_name);
void send_msg(int port, char* message);
void cnct_server();

char target_name[MAX];
int iter_num;
char method[MAX];
int svr_sock;
int clt_sock;

char buf_msg[MAX];


int main(int argc, char** argv){
//void run_server(){
    int nRcv;
    char cmd[MAX];

    // if(argc <1){
    //     printf("Usage : %s [port: number]\n", argv[0]);
    //     exit(1);
    // }
    //TODO 1 : receive cmd and target files

    //Todo 2 : crestc target files

    //Todo 3 : cil Execution
    //kakao talk

    //todo 4 : receive sdz Execution
    //todo 5 : send input files
    //todo 6 : check exit message

    printf("connet 1");

    cnct_server();
    printf("connet 2");
    //recv_file(3030);
    send_file(3030,"1.txt");
    //<1 TODO: Receive Option
    // cnct_client(3030); //없앤 부분 시
    // while(1){
    //   printf("receives messages...");
    //   nRcv = recv(clt_sock, buf_msg, sizeof(buf_msg) - 1, 0);
    //
    //   if(nRcv == SOCKET_ERROR){
    //     printf("Receive Error...\n");
    //     break;
    //   }
    //   buf_msg[nRcv] = '\0';
    //
    //   if(strcmp(buf_msg, "exit") == 0){
    //     printf("Close Clinet Connection...\n");
    //     break;
    //   }
    //
    //   printf("Receive message : %s", buf_msg);
    //
    //   //printf(parse_string_solve(buf_msg));
    //
    //   printf("\nSend message : ");
    //   //gets(buf_msg);
    //
    //   if(strcmp(buf_msg, "exit") == 0){
    //     send(clt_sock, buf_msg, (int)strlen(buf_msg), 0);
    //     break;
    //   }
    //   const char* return_message = parse_string_solve(buf_msg);
    //   send(clt_sock, return_message, (int)strlen(return_message), 0);
    //   //send(clt_sock, buf_msg, (int)strlen(buf_msg), 0);
    // } //없앤 부분 마지
    //recv_msg(PORT_NUMBER);
    //sprintf(method,"%s",buf_msg);
    //printf("%s\n", buf_msg); //받은 메시지 출력

    //1>


    close(svr_sock);

}

void error_handling(char* message){

    fputs(message, stderr);
    fputc('\n', stderr);
    exit(1);

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
    serv_addr.sin_port=htons(PORT_NUMBER);

    setsockopt(svr_sock, SOL_SOCKET, TCP_NODELAY, &on, sizeof(on));

    if(bind(svr_sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr))==-1)
        error_handling("bind() error");

    if(listen(svr_sock, 1)==-1)
        error_handling("listen() error");
}
void cnct_client(int port){

    int clnt_addr_size;
    struct sockaddr_in clnt_addr;

    clnt_addr_size=sizeof(clnt_addr);
    while(1){
        clt_sock=accept(svr_sock, (struct sockaddr*)&clnt_addr,(socklen_t *)&clnt_addr_size);
        //printf("not yet...\n");
        if(clt_sock !=-1)break;

    }
    //error_handling("accept() error");
}

void recv_file(int port){

    struct stat file_info;

    int file_bin,left_size, file_size;

    char buf[MAX];
    char recv_file_name[MAX];

    //cnct_client(port);

    memset(recv_file_name, 0x00, MAX);
    printf("recv_file_name0 :  %s", recv_file_name);

    recv(clt_sock, recv_file_name,MAX,0);
    printf("recv_file_name1 :  %s", recv_file_name);

    //printf("recv_file name: %s", recv_file_name);

    file_bin = open(recv_file_name, O_WRONLY | O_CREAT |O_TRUNC, 0700);
    printf("recv_file_name2:  %s", recv_file_name);

    if(!file_bin) {
        perror("file open error : ");
        exit(1);
    }
    else send(clt_sock, recv_file_name,strlen(recv_file_name),0);

    memset(buf, 0x00, MAX);

    recv(clt_sock, buf,MAX,0);

    file_size = atoi(buf);

    send(clt_sock, "ok",strlen("ok"),0);

    while(1){

        memset(buf, 0x00, MAX);
        left_size = read(clt_sock, buf, MAX);

        write(file_bin, buf, left_size);

        stat(recv_file_name,&file_info);

        if(file_info.st_size >= file_size){
            write(clt_sock, "good", strlen("good"));
            break;
        }
    }
    close(file_bin);


    //close(clt_sock);


}
void recv_msg(int port){
    cnct_client(port);
    memset(buf_msg, 0x00, MAX);
    read(clt_sock, buf_msg, MAX);
    send(clt_sock, buf_msg,strlen(buf_msg),0);

    //close(clt_sock);
}
void send_file(int port, char* file_name){

    int file_bin, file_size, left_size;

    char buf[MAX];

    struct stat file_info;

    //cnct_client(port);

    file_bin = open(file_name, O_RDONLY);

    stat(file_name, &file_info);

    if(!file_bin) {
        perror("Error : ");
        exit(1);
    }

    send(clt_sock, file_name,strlen(file_name),0);
    memset(buf, 0x00, MAX);
    recv(clt_sock, buf,MAX,0);
    sprintf(buf,"%ld",file_info.st_size);
    send(clt_sock, buf,strlen(buf),0);
    memset(buf, 0x00, MAX);
    recv(clt_sock, buf,MAX,0);

    while(1) {
        memset(buf, 0x00, MAX);
        left_size = read(file_bin, buf, MAX);
        send(clt_sock, buf, left_size,0);//file content

        if(left_size == EOF | left_size == 0) {
            break;
        }
    }
    memset(buf, 0x00, MAX);

    recv(clt_sock, buf,MAX,0);

    close(file_bin);

    //close(clt_sock);



}
void send_msg(int port, char* message){

    cnct_client(port);

    char buf[MAX];

    send(clt_sock, message,strlen(message),0);

    memset(buf, 0x00, MAX);

    read(clt_sock, buf, MAX);

    close(clt_sock);

}
