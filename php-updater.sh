echo "\nDownloading latest php8 build. It will be seen as ./bin/php7 but it's PHP 8!"
curl -sSL -o php.binary.tar.gz https://jenkins.pmmp.io/job/PHP-8.0-Aggregate/lastSuccessfulBuild/artifact/PHP-8.0-Linux-x86_64.tar.gz
echo "\nUnpacking php8 binaries"
tar -xzvf ./php.binary.tar.gz
echo "\nRemoving temp file."
rm -rf ./php.binary.tar.gz
echo "\nCreating php.ini"
chmod 777 ./bin/php7/bin/php.ini
rm ./bin/php7/bin/php.ini
curl -sSL https://raw.githubusercontent.com/shadowdevfr/standalone-php-webserver/main/php.ini > ./bin/php7/bin/php.ini
echo "\nDownloading certificate..."
curl -sSL -o ./bin/php7/bin/cacert.pem https://curl.haxx.se/ca/cacert.pem
echo "==============================================="
echo "Updated to the latest PHP version successfully."
echo "==============================================="
