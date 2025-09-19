#!/usr/bin/env bash
set -euo pipefail

echo ">>> Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y


echo ">>> Image Generation Folder Creation..."
sudo mkdir /imagegeneration
sudo chmod 777 /imagegeneration"


cp ./../scripts/helpers /imagegeneration/helpers

./../scripts/build/configure-apt-mock.sh

HELPER_SCRIPTS=/imagegeneration/helpers
DEBIAN_FRONTEND=noninteractive
./../scripts/build/install-ms-repos.sh
./../scripts/build/configure-apt-sources.sh
./../scripts/build/configure-apt.


./../scripts/build/configure-limits.sh


cp ./../scripts/build /imagegeneration/installers


cp ./../assets/post-gen /imagegeneration
cp ./../scripts/tests /imagegeneration
cp ./../scripts/docs-gen /imagegeneration



cp ./../../../helpers/software-report-base /imagegeneration/docs-gen/


cp ./../toolsets/toolset-2204.json /imagegeneration/installers/toolset.json


mv /imagegeneration/docs-gen /imagegeneration/SoftwareReport
mv /imagegeneration/post-gen /imagegeneration/post-generation




IMAGE_VERSION=0.1
IMAGE_OS=ubuntu22
HELPER_SCRIPTS=/imagegeneration/helpers
./../scripts/build/configure-environment.sh


DEBIAN_FRONTEND=noninteractive
HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers
./../scripts/build/install-apt-vital.sh


HELPER_SCRIPTS=/imagegeneration/helpers", "INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers"
./../scripts/build/install-powershell.sh"


HELPER_SCRIPTS=/imagegeneration/helpers", "INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers"
./../scripts/build/Install-PowerShellModules.ps1
./../scripts/build/Install-PowerShellAzModules.ps1



HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers
DEBIAN_FRONTEND=noninteractive"
"./../scripts/build/install-actions-cache.sh",
"./../scripts/build/install-runner-package.sh",
"./../scripts/build/install-apt-common.sh",
"./../scripts/build/install-azcopy.sh",
"./../scripts/build/install-azure-cli.sh",
"./../scripts/build/install-azure-devops-cli.sh",
"./../scripts/build/install-apache.sh",
"./../scripts/build/install-cmake.sh",
"./../scripts/build/install-container-tools.sh",
"./../scripts/build/install-dotnetcore-sdk.sh",
"./../scripts/build/install-gcc-compilers.sh",
"./../scripts/build/install-git.sh",
"./../scripts/build/install-github-cli.sh",
"./../scripts/build/install-java-tools.sh",
"./../scripts/build/install-kubernetes-tools.sh",
"./../scripts/build/install-sbt.sh",
"./../scripts/build/install-vcpkg.sh",
"./../scripts/build/configure-dpkg.sh",
"./../scripts/build/install-yq.sh",
"./../scripts/build/install-python.sh",


HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers
DOCKERHUB_LOGIN=${var.dockerhub_login}
DOCKERHUB_PASSWORD=${var.dockerhub_password}"
"./../scripts/build/install-docker.sh"

HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers
./../scripts/build/Install-Toolset.ps1
./../scripts/build/Configure-Toolset.ps1"

HELPER_SCRIPTS=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers"
./../scripts/build/install-pipx-packages.sh"

HELPER_SCRIPTS=/imagegeneration/helpers
DEBIAN_FRONTEND=noninteractive
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers"
./../scripts/build/install-homebrew.sh"

HELPER_SCRIPTS=/imagegeneration/helpers"
./../scripts/build/configure-snap.sh"

echo 'Reboot VM'
sudo reboot"


./../scripts/build/cleanup.sh"


HELPER_SCRIPT_FOLDER=/imagegeneration/helpers
INSTALLER_SCRIPT_FOLDER=/imagegeneration/installers
IMAGE_FOLDER=/imagegeneration"
./../scripts/build/configure-system.sh"
