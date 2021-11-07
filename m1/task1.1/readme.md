# This file presents work on task 1.1


### My 50 words what I think of DevOps  

I see DevOps it is new, fast-growing and in-demand profession. This specialist This specialist should be able to use a variety of tools,  
know and understand all stages of development, many development methods and be able to select the tools and methods suitable for a given project.  
DevOps takes part in all stages of project development.  

### My steps in completing the assignment  

#### 6. Clone repo to your workstation.  
    git clone git@github.com:Ponomarenko-Daria/DevOps_online_Avdeevka_2021Q4.git

#### 9. Create empty readme.txt file.  
    touch readme.txt

#### 10. Make init commit.
    git add -A
    git commit -m "Create readme.txt"

#### 11. Create develop branch and checkout on it.
    git checkout -b develop

#### 12. Create index.html empty file. Commit.
    touch index.html
    git add -A
    git commit -m "Create index.html"

#### 13. Create branch with name “images”. Checkout on it. Add images folder with some images inside it. Commit.
    git checkout -b images
    mkdir -p images
    git add -A
    git commit -m "Create folder images"

#### 14. Change your index.html. Add images source inside it. Commit.
    nano index.html
    git add -A
    git commit -m "Change index.html"

#### 15. Go back to develop branch.
    git checkout develop

#### 16. Create branch with name “styles”. Checkout on it. Add styles folder with styles source inside it. Commit.
    git checkout -b styles
    mkdir -p styles
    cd /styles
    touch styles.css
    nano styles.css
    git add -A
    git commit -m "Create folder Styles and file styles.css"

#### 17. Change your index.html. Commit.
    nano index.html
    git add -A
    git commit -m "Change index.html"

#### 18. Go to develop branch.
     git checkout develop

### 19. Merge two new branches into develop using git merge command. Resolve conflict if it appear. Do it in next sequence:
#### •merge “images” into “develop”
    git merge images
#### •merge “styles” into “develop”
    git merge styles
    nano index.html
    git add -A
    git commit

### 20. Do not delete any branches!

### 21. Merge develop into master.
    git checkout master
    git merge develop

### 23. Push all your changes with all your branches to origin (git push origin --all).
    git push origin --all

### 24. Execute command “git reflog“ and save it content somewhere (not inrepository) with filename “task1.1_GIT.txt”.
    git reflog
