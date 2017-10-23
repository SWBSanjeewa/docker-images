#Pull base image
FROM cambio/microsoft_windowsservercore

#Install chocolatey - windows package manager 
RUN powershell -Command iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Set chocolatey to enable global confirmations like accepting licenses
RUN powershell -Command choco feature enable -n allowGlobalConfirmation

#Install latest jdk8
RUN powershell -Command choco install jdk8

#Install latest maven
RUN powershell -Command choco install maven

#Install git
RUN powershell -Command choco install git.install --version 2.13.0

#Copy powershell file to the container
ADD config.ps1 C:\\config.ps1
#Run the poershell file
RUN powershell -Command .\config.ps1
#remove the powershell file
RUN powershell -Command Remove-Item config.ps1

#Create variable from build-arg
ARG BASE_URL  

#Download the slave jar
RUN powershell -Command (New-Object System.Net.WebClient).DownloadFile('%BASE_URL%/jnlpJars/slave.jar', 'slave.jar') ; 
ENTRYPOINT ["java.exe", "-jar", ".\\slave.jar"]

