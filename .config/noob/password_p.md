# generateur password

date +%s | sha256sum | base64 | head -c 10 ; echo
echo $RANDOM | sha256sum | head -c 32 ; echo
pwmake 128
echo "PASSWORD" | sha1sum
