#!/bin/sh
# -----------------------------------------------------------
# commit-vps.sh
# -----------------------------------------------------------

# Variables

localjekyll="${HOME}/blog.basilesimon.fr"
remotewebroot="/var/www/blog.basilesimon.fr/_site"
instancehost="basilesimon.fr"
sshuser="basile"
sshport="22"
sshidentity="${HOME}/.ssh/id_rsa"

# Execution

cd $localjekyll
# bundle install
export PATH=/Users/silverie/.gem/ruby/2.7.0/bin:$PATH
${HOME}/.gem/ruby/2.7.0/bin/jekyll build

echo "rsync to SSH host $instancehost ..."

rsync -vrhp -e "ssh -p $sshport -i $sshidentity" --exclude ".*" --delete-after \
  --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
  $localjekyll/_site/ $sshuser@$instancehost:$remotewebroot

echo "SSH connection closed. Done."
