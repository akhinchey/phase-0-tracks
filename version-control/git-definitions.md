# Git Definitions

* What is version control?  Why is it useful?
Version control essentially creates an interactive timeline where a project can be viewed at any point in the coding process. You can view the entire history of the project and all of the files in it, as well as revert to any point in that history and makes changes as you see fit. It is useful because it gives greater flexibility with modifying the project’s code without having to worry about making any permanent changes or saving multiple copies of project files.

* What is a branch and why would you use one?
A branch is a copy of a code project that you can add and make changes to and eventually merge back into the master copy of the project. It allows for multiple programmers to work on different parts of a project simultaneously without stepping on each other’s toes. Branches also allow for experimenting with a program without any danger of damaging the original copy and they can also be discarded if the changes made don’t turn out as hoped.

* What is a commit? What makes a good commit message?
A commit creates a save point in git, which you can then reference through version control. In order for version control to work as well as possible, it is important to make commits regularly whenever changes are made to a project as git does not do this automatically. Any commit should be accompanied by a good commit message that makes it very clear where the code has been altered and how, as other programmers could wind up working on the same files and will need to know the significance of each save point.

* What is a merge conflict?
A merge conflict is when git compares two branches or repositories and finds that there are conflicts that prevent from from being able to merge. These conflicts can include: 

- changing the same part of the same file
- when a file is edited in one branch but has been deleted in another branch

The good news is you will be notified of any conflicts before you’re able to actually merge so that you can troubleshoot as you see fit depending on the situation.