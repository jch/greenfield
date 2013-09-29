# Greenfield

This was a fun experiment in composing different Ruby libraries into a web framework. Since writing this library, I've built many more standalone Sinatra applications and found I prefer just using it's standard tools. Sprockets is still awesome, but it's so easy to mount that it's not really worth a template to set it up. I used to love guard, but now I'm fine with running tests manually or having an editor hook instead of adding a project dependency. No more love for RSpec. Love live Test::Unit *cough* minitest *cough*.

I'm archiving this here and hope someone finds it as useful as I did for learning.

## Introduction

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
bundle install
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

## Referencing Image Assets

The [sprockets-sass](https://github.com/petebrowne/sprockets-sass)
and [sprockets-helpers](https://github.com/petebrowne/sprockets-helpers) gems
provide helper to reference your assets.

For example, to reference an image in your sass files:

```css
// put your images in assets/images
.sidebar
  background: url(asset-path('bg.png'))
```

If you prefer to put your assets in a different path, append another
lookup path in config.ru.


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
