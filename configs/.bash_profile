### General Aliases
sh /etc/motd.sh
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/slamba/bin:/Users/slamba/Library/Python/3.6/bin"
#PS1='[\e[0;32m \h:\u\e[m \e[0;36m \W \e[m] \e[0;31m$\e[m '
#PS1="\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]\W\[\e[32;1m\])(\[\[\e[37;1m\] \[\e[32;1m\])-> \[\e[0m\]"
#PS1="[\[\e[0;32m\]\u\[\e[m\] ⌛  \[\e[m\]\[\e[0;33m\]\H\[\e[m\] \[\e[0;36m\] \W \[\e[m]\] \[\e[0;31m\]☘  \[\e[m\] "
PS1="[\[\e[0;32m\]\u\[\e[m\] ◯  \[\e[m\]\[\e[0;33m\]\H\[\e[m\] \[\e[0;36m\] \W \[\e[m]\] \[\e[0;31m\]☘  \[\e[m\] "
#PS1='[\[\e[0;32m\] \h☞ \u\[\e[m\] \[\e[0;36m\] \W \[\e[m]\] \[\e[0;31m\]☘  $\[\e[m\] '
HISTSIZE=3000
HISTFILESIZE=3000
HISTTIMEFORMAT="%d-%B-%Y %T "
alias c=clear
alias k=kubectl
alias ll='ls -Glrt'
#alias lls='ls -Glrt | sort -r -k 10'
alias lls='ls -Grt | sort -r -k 1,10 | grep "^[0-9]"'
alias sll='sudo ls -Glrt'
export CLICOLOR=1
export LSCOLORS="ExFxBxDxCxegedabagacad"
alias bashp="vi ~/.bash_profile"
alias bashr=". ~/.bash_profile"
####

###### GO
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
#####

#### GIT Aliases
alias gitpu='git push origin '
alias gc='git checkout '
alias gcchs='git config credential.helper store'
alias gpo='git push origin `git rev-parse --abbrev-ref HEAD` '
alias gb="git branch"
alias gl='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cgreen\\ [%cn]" --decorate  --all'
alias gmaster="git checkout master"
alias gdevelop="git checkout develop"
alias gitmergedev='git merge develop -m "Devops-Auto-Merge" '
gitag()
{
	git tag $1
        git push origin $1
}
gacpo()
{
	if [ "$1" == "" ]
	then
		echo "Please enter the comments"
		echo "Usage of Alias : gacpo \"Adding Comments\" "
		echo ""
	else
		git add .
        	git commit -m "$1"
        	git push origin `git rev-parse --abbrev-ref HEAD`
	fi
}
####

#### Docker Aliases
alias dockerps='docker ps -a'
alias dockerim='docker images'
alias dockerkill='docker kill $(docker ps -q)'
alias dockernuke='docker kill $(docker ps -a -q); docker rm $(docker ps -a -q)'
alias dockerstop='docker stop $(docker ps -q)'
dockerexec()
{
	docker exec -it ${1} /bin/bash
}
kexec()
{
	kubectl exec -it ${1} /bin/bash
}
####

#### Terraform
alias tplan='terraform plan -out plans/plan-`date +%s`.plan'
alias tdestroy='terraform plan -destroy -out plans/plan-destroy-`date +%s`.plan'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/slamba/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/slamba/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/slamba/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/slamba/Downloads/google-cloud-sdk/completion.bash.inc'; fi


#####
alias minirbac="minikube start --extra-config=apiserver.Authorization.Mode=RBAC"
alias minipsp="minikube start --extra-config=apiserver.Authentication.PasswordFile.BasicAuthFile=/etc/kubernetes/passwd --extra-config=apiserver.GenericServerRunOptions.AdmissionControl=NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,ResourceQuota,DefaultTolerationSeconds,PodSecurityPolicy --extra-config=apiserver.Authorization.Mode=RBAC"
alias t="terraform"

. ~/.aliases

### AWS
alias jumpaws='ssh -i /Users/slamba/terraform/01.William-Hill/06.openVPN/conf/aws-sandbox-jumphost.pem ec2-user@xx.xxx.xx.xx'
alias kx="kubectx"
alias kn="kubens"

openx509()
{
        openssl x509 -in $1 -noout -text | less
}
source <(kubectl completion bash)

### Kubectl
### GET Aliases
alias kci='kubectl cluster-info'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kgsecrets='kubectl get secrets'
alias kgcm='kubectl get configmaps'
alias kgname='kubectl get namespaces'
alias kgn='kubectl get nodes'
alias kgcr='kubectl get clusterroles'
alias kgcrb='kubectl get clusterrolebindings'
alias kgroles='kubectl get roles'
alias kgrb='kubectl get rolebindings'
alias kghpa='kubectl get hpa'

### DESCRIBE Aliases
alias kded='kubectl describe deployment '
alias kdep='kubectl describe pod '
alias kdes='kubectl describe service '

### EDIT Aliases
### Create Resources
alias kaf='kubectl apply -f '
alias kafdry='kubectl apply --dry-run -f '
alias kcf='kubectl create -f '
alias kdf='kubectl delete -f '
alias cll='clear; ls -lrt'

### Ansible
alias ap='ansible-playbook'

### Helm
alias h='helm'
