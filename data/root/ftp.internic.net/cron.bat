E:
cd E:\Workspaces\.bind9\data\root\ftp.internic.net\
bash --login -i -c  "wget ftp://ftp.internic.net/* --no-host-directories --mirror --directory-prefix=./ --timestamping --verbose --server-response --output-file=./log/log_$(date -d today +%%Y%%m%%d_%%H%%M%%S).log"
rndc reload .
rndc reload root-servers.net
rndc reload arpa
rndc reload in-addr.arpa
rndc reload ip6.arpa
