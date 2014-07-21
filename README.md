language_engine
===============

[![Build Status](https://travis-ci.org/dryade/language_engine.svg?branch=master)](https://travis-ci.org/dryade/language_engine)

language_engine is a rails engine for language with :
 * a controller
 * a helper
Views and assets are not defined because we think everybody wants to adapt the view in their page.

You can access to a demo on [http://appli.chouette.mobi](http://appli.chouette.mobi/chouette2/users/sign_in) with
 * login : demo@chouette.mobi
 * password : chouette

Requirements
------------

This code has been run and tested on Travis with :
* Ruby 1.9.3

Installation
------------

Add gem to your rails app in Gemfile : 

```sh
gem 'language_engine'
```

Download gem librairies : 

```sh
bundle install
```

Usage (with bootstrap plugin)
----

Can be used inline 
```html
 <ul class="nav navbar-nav navbar-right">
   <li class="<%= language_class('fr') %>"><%= link_to_language :fr %></li>
   <li class="<%= language_class('en') %>"><%= link_to_language :en %></li>
 </ul>
```

Or with dropdown :
```html
<ul class="nav navbar-nav navbar-right">
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
      <%= image_tag("language_engine/#{selected_language}_flag.png") %><b class='caret'></b>
    </a>
    <ul class="dropdown-menu">
      <li><%= link_to_language :fr %></li>
      <li><%= link_to_language :en %></li>
    </ul>
  </li>        
</ul>   
```

Test
----

```sh
bundle exec rake spec
```

License
-------

This project is licensed under the MIT license, a copy of which can be found in the [LICENSE](./MIT-LICENSE) file.

Support
-------

Users looking for support should file an issue on the GitHub [issue tracking page](../../issues), or file a [pull request](../../pulls) if you have a fix available.