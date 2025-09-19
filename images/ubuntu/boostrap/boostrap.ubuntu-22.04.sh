#!/usr/bin/env bash
set -euo pipefail

echo ">>> Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y


echo ">>> Image Generation Folder Creation..."
sudo mkdir /imagegeneration
sudo chmod 777 /imagegeneration



cp ./../scripts/helpers /imagegeneration/helpers

sudo ./../scripts/build/configure-apt-mock.sh


echo ">>> Setting Folder Paths and "
DEBIAN_FRONTEND=noninteractive
IMAGE_FOLDER=/imagegeneration
IMAGE_VERSION=0.1
IMAGE_OS=ubuntu22
HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers


sudo ./../scripts/build/install-ms-repos.sh
sudo ./../scripts/build/configure-apt-sources.sh
sudo ./../scripts/build/configure-apt.


sudo ./../scripts/build/configure-limits.sh


sudo cp ./../scripts/build /imagegeneration/installers


sudo cp ./../assets/post-gen /imagegeneration
sudo cp ./../scripts/tests /imagegeneration
sudo cp ./../scripts/docs-gen /imagegeneration



sudo cp ./../../../helpers/software-report-base /imagegeneration/docs-gen/


sudo cp ./../toolsets/toolset-2204.json /imagegeneration/installers/toolset.json


sudo mv /imagegeneration/docs-gen /imagegeneration/SoftwareReport
sudo mv /imagegeneration/post-gen /imagegeneration/post-generation





sudo ./../scripts/build/configure-environment.sh



sudo ./../scripts/build/install-apt-vital.sh



sudo ./../scripts/build/install-powershell.sh



sudo ./../scripts/build/Install-PowerShellModules.ps1
sudo ./../scripts/build/Install-PowerShellAzModules.ps1




sudo ./../scripts/build/install-actions-cache.sh
sudo ./../scripts/build/install-runner-package.sh
sudo ./../scripts/build/install-apt-common.sh
sudo ./../scripts/build/install-azcopy.sh
sudo ./../scripts/build/install-azure-cli.sh
sudo ./../scripts/build/install-azure-devops-cli.sh
sudo ./../scripts/build/install-apache.sh
sudo ./../scripts/build/install-cmake.sh
sudo ./../scripts/build/install-container-tools.sh
sudo ./../scripts/build/install-dotnetcore-sdk.sh
sudo ./../scripts/build/install-gcc-compilers.sh
sudo ./../scripts/build/install-git.sh
sudo ./../scripts/build/install-github-cli.sh
sudo ./../scripts/build/install-java-tools.sh
sudo ./../scripts/build/install-kubernetes-tools.sh
sudo ./../scripts/build/install-sbt.sh
sudo ./../scripts/build/install-vcpkg.sh
sudo ./../scripts/build/configure-dpkg.sh
sudo ./../scripts/build/install-yq.sh
sudo ./../scripts/build/install-python.sh



sudo ./../scripts/build/install-docker.sh


sudo ./../scripts/build/Install-Toolset.ps1
sudo ./../scripts/build/Configure-Toolset.ps1


sudo ./../scripts/build/install-pipx-packages.sh


sudo ./../scripts/build/install-homebrew.sh


sudo ./../scripts/build/configure-snap.sh

echo 'Reboot VM'
sudo reboot


sudo ./../scripts/build/cleanup.sh



sudo ./../scripts/build/configure-system.sh
