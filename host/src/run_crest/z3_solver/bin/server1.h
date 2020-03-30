#ifndef __SERVER1_H__
#define __SERVER1_H__

void error_handling(char* message);
void cnct_server();
void cnct_client(int port);
void recv_file(int port);
void recv_msg(int port);
void send_file(int port, char* file_name);
void send_msg(int port, char* message);
void run_server();

#endif
