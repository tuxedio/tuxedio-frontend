[![Build Status](https://travis-ci.org/tuxedio/tuxedio-frontend.svg?branch=f-api-connect)](https://travis-ci.org/tuxedio/tuxedio-frontend)

Tuxedio Angular Frontend
======


###Workflow
  1. Pull remote changes
    - Use naming convention f-<featurename> for creating feature branches, c-<name> for chores
  2. Do development in feature branch
  3. Make sure you pass the tests and the feature does not break any other features
  4. Push the feature branch to github (git push origin f-<featurename>)
  5. Make a Pull request to merge back into development branch.


###Setup:
```
  $ gem update --system
  $ gem install compass
  $ nmp install
  $ bower install
  $ grunt serve
```


###Coding Style:
  1. "Make everything as simple as possible, but not simpler."
  2. Try to stay consistent in coding styles
  3. Use 2 spaces for tabbing
  4. Align characters when possible. (tip: use a monospaced font like Inconsolata)
  5. Naming conventions: 
    - Modules: lowerCamelCase
    - Controllers: UpperCamelCase (eg: "MyCtrl")
    - Directives: lowerCamel Case
    - Services: UpperCamelCase (singular similar to rails modules)
  6. Comment about WHAT your code does, not HOW. If someone else can't understand the logic, you might want to refactor your code...
