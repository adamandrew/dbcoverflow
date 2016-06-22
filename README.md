# dbcoverflow


## Install

```
gem install dbcoverflow
```

## Examples

```ruby
require 'dbcoverflow'

# initialize the DBCOverflow with username and password to log in
dbc = DBCOverflow.new("username", "password")

# create new question
dbc.new_question("title", "content")
```

## Executable
You can also add new question from the command line.

```
$ ruby -Ilib ./bin/dbcoverflow "username" "password" "title" "content"
```