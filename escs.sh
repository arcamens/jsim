##############################################################################
cd ~/projects/
git clone git@bitbucket.org:arcamens/jsim.git jsim-code
##############################################################################
# Push jsim staging branch.
cd ~/projects/jsim-code
git status
git add *
git commit -a
git push -u origin staging
##############################################################################
# Push jsim onto master.
cd ~/projects/jsim-code
git status
git add *
git commit -a
git push -u origin master
##############################################################################
# Create staging branch.
cd ~/projects/jsim-code
git branch -a
git checkout -b staging
git push --set-upstream origin staging
##############################################################################
# Create releases.

git tag -a v1.0.0 -m 'Initial release.'
git push origin : v1.0.0

##############################################################################
# merge staging into master.
git checkout master
git merge staging
git push -u origin master
git checkout staging
##############################################################################






