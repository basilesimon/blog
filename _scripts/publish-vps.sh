#!/bin/sh
# -----------------------------------------------------------
# commit-vps.sh
# -----------------------------------------------------------

# Variables

localjekyll="${HOME}/blog.basilesimon.fr"
remotewebroot="/var/www/blog.basilesimon.fr/_site"
instancehost="basilesimon.fr"
newinstancehost="51.159.139.203"
sshuser="basile"
newsshuser="b"
sshport="22"
sshidentity="${HOME}/.ssh/id_rsa"

# Execution

cd $localjekyll
# bundle install
export PATH=/Users/silverie/.gem/ruby/2.7.0/bin:$PATH
${HOME}/.gem/ruby/2.7.0/bin/jekyll build

# echo "rsync to SSH host $instancehost ..."

# rsync -rhp -e "ssh -p $sshport -i $sshidentity" --exclude ".*" --delete-after \
#   --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
#   $localjekyll/_site/ $sshuser@$instancehost:$remotewebroot


echo "rsync to SSH host $newinstancehost ..."
rsync -vrhp -e "ssh -p $sshport -i $sshidentity" --exclude ".*" --delete-after \
  --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
  $localjekyll/_site/ $newsshuser@$newinstancehost:$remotewebroot

echo "SSH connection closed. Done."
