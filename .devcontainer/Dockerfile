EXPOSE 8400

FROM sscspccloudnuage/rover:2009.0812
RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo && sudo yum install -y powershell
RUN sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main" | sudo apt-get update | sudo apt-get install libicu55
RUN sudo apt-get update | sudo apt-get install -y wget apt-transport-https software-properties-common 
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb | sudo dpkg -i packages-microsoft-prod.deb | sudo apt-get update | sudo apt-get install -y powershell