# Install OC client

if [[ ! -z $OC_DEV_TOOLS  ]]; then
    curl -L https://mirror.openshift.com/pub/openshift-v3/clients/3.11.100/linux/oc.tar.gz | tar xz
    mv oc /usr/local/bin

#    sh -c 'echo -e "[kubernetes]\nname=Kubernetes\nbaseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg" > /etc/yum.repos.d/kubernetes.repo'

#    yum install -y kubectl

    curl -L https://github.com/openshift/odo/releases/download/v0.0.20/odo-linux-amd64 --output /usr/local/bin/odo
    chmod +x /usr/local/bin/odo

    rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

    yum check-update
    yum install -y code

    yum autoremove -y
    yum clean all
fi
