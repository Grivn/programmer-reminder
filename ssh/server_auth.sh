#!/usr/bin

echo "================== basic info ================="

if [ -n "$1" ]
then
  echo 'user: ' "$1"
else
  echo "please input user name: sh ./server_auth.sh username ip_list_file_path local_public_key_file_path"
  exit 1
fi

if [ -n "$2" ]
then
  echo 'ip list file: ' "$2"
else
  echo "please input ip list file: sh ./server_auth.sh username ip_list_file_path local_public_key_file_path"
  exit 2
fi

if [ -n "$2" ]
then
  echo 'local public key: ' "$3"
else
  echo "please input local public key file: sh ./server_auth.sh username ip_list_file_path local_public_key_file_path"
  exit 3
fi

echo "================== start auth ================="

for line in `cat $2`
do
	echo 'auth: ' "$line"

	echo 'insert the local public key'
	ssh "$1"@"$line" 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' < "$3"
	
	echo 'change the mod'
	ssh "$1"@"$line" 'chmod 700 -R ~/.ssh && chmod 600 ~/.ssh/authorized_keys'
	
	echo 'successfully authorized '"$line"
done

echo "================== finished! ================="
