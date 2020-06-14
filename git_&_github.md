# Git & Github

* clone : Bring a repository that is hosted somewhere like github into your local machine
* add : Track and changes in Git
* commit : saves your file in Git
* push : Upload Git commits to a remote repo, like Github
* pull : Download changes from remote repo to your local machine, the opposit of **push**
* branch : lists different branches and master
* checkout <branch_name> : to move between branches
* checkout -b <branch_name>: to create new branch
* diff : shows diff in diff branches and master
* merge <branch_name> : merge branches
**ls -la : list all files including hidden folders**

* reset or reset <file_name> : unstage file
* reset HEAD~1 : undo this recent commit and point to the last commit

* log : view log of your actions

* reset <commit_id> : for unstaging changing to a particular commit

reset only unstages, means it will not reflect changes in your file, for that
* reset --hard <commit_id>

* for commenting in *git commit -m "added file.pug" -m "some description"*

this id to be undone