# puppet-manifest-validatione-and-linting-on-commit

this script is based on an article form http://wadmiraal.net/lore/2014/07/14/how-git-hooks-made-me-a-better-and-more-lovable-developer/

the script 'pre-commit' is 


in order to test or use this script, you must first install puppet and puppet-lint

```
sudo apt-get update
sudo apt-get install puppet
sudo apt-get install puppet-lint
```

if you install them using other methods, make sure puppet and pupp-lint is in your PATH.
clone this repo and move to the new directory

```
git clone https://github.com/isberg1/puppet-manifest-validatione-and-linting-on-commit.git
cd puppet-manifest-validatione-and-linting-on-commit
```
next open the file 'helloworld/manifests/motd.pp' in a text editor, and introduce i syntax error like

change line 3 from

file { '/etc/motd':

to 

file { '/etc/motd' 

run a test to se that the script is working

```
git add .
git commit -m "new error"

```
expected console output 

```
Error: Could not parse for environment production: Syntax error at ';' (file: /home/isberg1/Desktop/gitHoksTest/helloworld/manifests/motd.pp, line: 3, column: 21)
	Aborting commit due to files with syntax errors.

```
to test linting, first correct the syntax error, and then introuduce a linting error like adding "  " to the end of a line


to use this script for yourself place the file 'pre-commit' in .git/hooks/pre-commit
```
cp pre-commit [filepath-to-git-repo]/.git/hooks/pre-commit
```
