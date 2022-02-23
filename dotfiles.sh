git clone https://aclark4life@github.com/aclark4life/dotfiles.git Dotfiles
.local/bin/dotfiles -sf
rm ~/.git
chmod 600 ~/.ssh/*
cd ~/Dotfiles
git remote remove origin
git remote add origin git@github.com:aclark4life/dotfiles.git
git push --set-upstream origin main
