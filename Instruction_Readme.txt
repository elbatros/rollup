Instruction to Run the hive script
-----------------------------------------
Precodition : Hive should be installed. 

Step 01: Download the code from github project path.
		https://github.com/nandinirsahoo/RollUp
		unzip : RollUp-master.zip under your Local directory.
		Zipped Folder contains:
		rollup.sh, roll.hql and InputData.txt, roll.properties.

Step 02: Open rollup.sh in notepad and at line no 2 and 3 replace
		/home/TestCode/ with the Unix environment local file directory path where the code will be executed.
			
Step 03: Open roll.hql in notepad and at line no. 4 replace 
		/home/TestCode/ with the Unix environment local file directory path.

Step 4: Transfer the files from windows environment to your UNIX environment Local file directory path.

Step 05: Open unix command prompt and go to the file directory path where rollup.sh file is located
		>cd file path

Step 06: Provide executable permission to rollup.sh file
		>chmod 777 rollup.sh

Step 07: Execute below command
		>./rollup.sh 

Step 08: After complete execution 

Result folder will be created inside the  local file directory path 
Inside Result folder Result_Output.txt will be created

 

  



