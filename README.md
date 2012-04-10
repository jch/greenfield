# Greenfield

Greenfield is a minimal ruby web app skeleton.

## Included Libraries

* [sprockets](https://github.com/sstephenson/sprockets) - Rail's asset pipeline
* [compass](http://compass-style.org/) - CSS framework and utilities
* [sinatra](sinatrarb.com) - small and simple Ruby web framework
* [vendorer](https://github.com/grosser/vendorer.git) - manage external JS dependencies
* [rspec 2](https://www.relishapp.com/rspec) - testing framework
* [guard](https://github.com/guard/guard) - file watcher to refresh bundle and run specs

## Getting Started

```
git clone https://github.com/jch/greenfield
cd greenfield
rake setup
```

## Folder Structure

```
assets/            # asset pipeline compiled assets
  - javascripts/   # coffeescript enabled JS
  - stylesheets/   # sass, scss enabled CSS
  - templates/     # handlebar templates for client side rendering
views/             # sinatra layouts and views
public/            # static files
spec/              # rspec tests
  - integration/   # rspec integration tests
app.rb             # sinatra application
Rakefile           # rake tasks
Vendorfile         # external assets
```

## Rake Tasks

* `rake deploy` [heroku](http://heroku.com) initialization and deployment
* `rake clean` remove temp files

For a full list, run `rake -D`

## LICENSE

Copyright (c) 2012, Jerry Cheung
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  THIS SOFTWARE IS
PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
