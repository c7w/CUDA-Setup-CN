USER=123
PASS=123
PROXY=10.0.0.15
PORT=11451

if [ -z $PROXY_ADDRESS ]
then
        export HTTP_PROXY=http://localhost:$PORT
        export HTTPS_PROXY=http://localhost:$PORT
        export ALL_PROXY=http://localhost:$PORT
        export http_proxy=http://localhost:$PORT
        export https_proxy=http://localhost:$PORT
        export all_proxy=http://localhost:$PORT
else
        export HTTP_PROXY=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
        export HTTPS_PROXY=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
        export ALL_PROXY=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
        export http_proxy=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
        export https_proxy=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
        export all_proxy=http://$USER:$PASS@$PROXY_ADDRESS:$PORT
fi
