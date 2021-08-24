# Git

## how to initiate a repo?

steps:
1) clone the repo `git clone git@github.com/xxx/xxx.git`
2) create a `README.md` file
3) install 'git cz' module (see ***git cz***)
4) add `package-lock.json` and `node_modules` into `.gitignore`
5) generate initiation commitment and `git push origin master`

## git cz (commitment management)

### installation

make sure that you have already installed nodejs

steps: 
1) install commitizen package `npm install -g commitizen`
2) initiate npm `npm init --yes`
3) initiate commitizen `commitizen init cz-conventional-changelog --save --save-exact`

### how to install? (for others)

just install npm packages `npm install`

### how to commit?

just `git cz`
