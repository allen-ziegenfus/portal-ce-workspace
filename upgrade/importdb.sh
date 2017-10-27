DATABASE=lportal_2017_10_24
IMPORT=/Users/allenziegenfus/Downloads/www_lportal-2017-10-24_19-00-PDT.sql
mysql -u root --execute="DROP DATABASE IF EXISTS ${DATABASE}" 
mysql -u root --execute="CREATE DATABASE ${DATABASE}" 
mysql  --protocol=tcp --host=localhost --user=root --port=3306 --default-character-set=utf8 --comments --database=${DATABASE} < "$IMPORT"

