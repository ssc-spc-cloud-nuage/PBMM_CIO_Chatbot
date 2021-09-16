# SSC Chatbot

## Background

This project deploys all the SSC Chatbot project infrastructure.

## Prerequisites

In order to start deploying your with CAF landing zones, you need admin rights on your development machine and the following components installed on it:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Git](https://git-scm.com/)

You can deploy it easily on Windows and MacOS with the following software managers:

| MacOS                                              | Windows                                                       |
| -------------------------------------------------- | ------------------------------------------------------------- |
| ```brew cask install visual-studio-code docker ``` | Install Chocolatey (https://chocolatey.org/docs/installation) |
| ```brew install git ```                            | ```choco install git vscode docker-desktop ```                |

Once installed, open **Visual Studio Code** and install "**Remote Development**" extension

## Deployment

Follow the README.md documentation in:

0. [envvars](./envvars/README.md)
1. [L0_blueprint_launchpad](./L0_blueprint_launchpad/README.md)
2. [L1_blueprint_base](./L1_blueprint_base/README.md)
3. [L2_blueprint_project](./L2_blueprint_project/README.md)

If all went well you will now have deployed the landinzone in the subscription.

## Notes
For Cognative Services they are now soft deleted so you need to issue a command like ```az resource delete --ids /subscriptions/<subscription id>/providers/Microsoft.CognitiveServices/locations/westus/resourceGroups/<resource group>/deletedAccounts/<cognative services name>```


Sometimes when deploying a KB the code gives an issue with the plan not matching the deployment.  The Lifecycle does not seem to be ignoring the code.  Running the code again usually fixes the issue.

If the development VM does not work with `rover login` edit /etc/resolv.conf to change the nameserver to 8.8.8.8