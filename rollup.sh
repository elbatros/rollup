#!/bin/sh
FILE="/home/edureka/roll.properties"
HOME_PATH='/home/edureka'
INPUT_FILE="${HOME_PATH}/InputData.txt"

#db_name=$(grep -i 'databaseName' $FILE  | cut -f2 -d'=')
#table_name=$(grep -i 'tableName' $FILE  | cut -f2 -d'=')
echo "connecting to database - " $db_name
echo  "using table - " $table_name
hive -hiveconf DB_NAME=$db_name -hiveconf TABLE_NAME=$table_name -f "${HOME_PATH}/roll.hql"

OUTPUT_FILE="${HOME_PATH}/Result"
sed -n 1p "${INPUT_FILE}" > "${OUTPUT_FILE}/header.txt"
cat "${OUTPUT_FILE}/header.txt" "${OUTPUT_FILE}/000000_0" > "${OUTPUT_FILE}/Result_Output.txt"
cd $OUTPUT_FILE
rm header.txt
rm 000000_0

