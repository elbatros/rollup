Instruction to Run the hive script
-----------------------------------------

Step1: Download rollup.sh, roll.hql and InputData.txt, roll.properties from GitHub link to a local file directory

step2: Open rollup.sh in notepad and at line no 2 and 3 replace
/home/edureka/ with the local file directory path where the files are downloaded.

step3: open roll.hql in notepad and at line no. 4 replace 
/home/edureka/ with the local file directory path where the files are downloaded

step4: open unix command prompt and go to the file directory path where rollup.sh file is located
>cd file path

step5: Give executable permission to rollup.s file
>chmod 777 rollup.sh

step6: Execute below command
>./rollup.sh 

Step7: After complete execution 
Result folder will be created inside the  local file directory path 

Inside Result folder Result_Output.txt will be created

 

  



