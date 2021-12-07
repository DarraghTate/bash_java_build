# bash_java_build

A very simple Bash script that I use for compiling and running Java programs with 1 command.

To download the repository, enter the command:

    git clone https://github.com/DarraghTate/bash_java_build.git

To use, in a Linux environment navigate to the folder containing the file and input the command:

    bash run_java.sh
    
The user will then be asked to enter the name of the .java file. The script will proceed to check to see if an older compiled version exists, and if one does it is deleted. The program is then recompiled and executed.

Note that the Bash script must be located in the same directory as the target Java file.

Testing was done via shellcheck - <i><b>https://github.com/koalaman/shellcheck</b></i>
