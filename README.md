
Method\_Name
================

A Ruby gem to turn strings into method names for 
your metaprogramming needs.

Installation
------------

    gem install Method_Name

Usage
------

    require "Method_Name"
    
    Method_Name? "file"          # -> true
    Method_Name? "file.sh"       # -> false
    Method_Name " dir/file.sh "  # -> "file_sh"


Run Tests
---------

    git clone git@github.com:da99/Method_Name.git
    cd Method_Name
    bundle update
    bundle exec bacon spec/main.rb



