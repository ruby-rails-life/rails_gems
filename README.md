# rails_gems

gem一覧  

* [初心者](http://qiita.com/ktsujichan/items/cb9d2e35798b0261cd95)  

## ransack

【controller】topics#index

* [reference](http://qiita.com/LuckOfWise/items/e020e896e71d47d0c6a4)  

## nokogiri

【task】scraping:epoch_title

## baby_squeel

【controller】articles#index

* BabySqueel provides a Squeel-like query DSL for Active Record  
* [reference](https://github.com/rzane/baby_squeel)  

## config

【controller】articles#index

## carrierwave

【controller】articles#new

* install mysql5.7.18 for multiple file uploads using json field
* [reference](https://github.com/carrierwaveuploader/carrierwave)

## active_decorator

【controller】articles#index method:title_with_text  

* A simple and Rubyish view helper. Keep your helpers and views Object-Oriented!  
* [reference](https://github.com/amatsuda/active_decorator)

## active_hash 

【controller】country#index(Associations, Yaml file, Enum)  

* A readonly ActiveRecord-esque base class that lets you use a hash, a Yaml file or a custom file as the datasource   
* [reference_1](http://kotatu.org/blog/2014/10/09/active-hash-gem/)   
* [reference_2](https://github.com/zilkey/active_hash)  

## active_type

【controller】holidays#edit(Nested attributes)   
【controller】holidays#index(ActiveType.cast)  

* [reference](https://github.com/makandra/active_type)

## ActiveSupport::Concern

【controller】book#index

* controllers/concerns/common.rb    
* models/concerns/common_module.rb
* [reference](http://qiita.com/shizuma/items/ae6ecb85615f74444693)  

## acts_as_paranoid

【model】Paranoiac|Paranoid  

* This gem can be used to hide records instead of deleting them, making them recoverable later.  
* [reference](https://github.com/ActsAsParanoid/acts_as_paranoid)  

## seed_dump

* Seed Dump is a Rails 4 and 5 plugin that adds a rake task named db:seed:dump
* [reference](https://github.com/rroblak/seed_dump)  

## devise

* Devise is a flexible authentication solution for Rails based on Warden.
* [reference_1](http://qiita.com/Salinger/items/873e3c667462746ae707)
* [reference_2](http://ruby-rails.hatenadiary.com/entry/20140804/1407168000)

## devise + cancancan + rails_admin

* [reference_1](http://mdsgn.me/ruby-on-rails/cancancan%E3%81%A8rails_admin/)
* [reference_2](http://d.hatena.ne.jp/htz/20140718/1405690417)

## simple_form

【controller】simpleform(association:has_and_belongs_to_many, custom_inputs, I18n)   

* Simple Form aims to be as flexible as possible while helping you with powerful components to create your forms  
* [reference](https://github.com/plataformatec/simple_form)

## kaminari

【controller】simpleform#index(I18n, Customize view, Create friendly URLs)  

* A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web app frameworks and ORMs.   
* [reference_1](http://ruby-rails.hatenadiary.com/entry/20141113/1415874683)
* [reference_2](https://github.com/kaminari/kaminari)

## I18n

【controller】book#index, simpleforms#new(set routes.rb and locale file) 

* Create localized templates: 【index.html.erb, index.ja.html.erb】 and Access /book, /en/book, /ja/book
* Pluralization, html_safe, model 
* Customize ExceptionHandler:raise error when missing translation->lib/I18n/just_raise_exception_handler.rb

## breadcrumbs_on_rails

【controller】Application(add breadcrumbs for project)  

* A simple Ruby on Rails plugin for creating and managing a breadcrumb navigation for a Rails project. 
* Customize breadcrumbs->lib/custom_breadcrumbs_builder.rb

## better_errors

* Better Errors replaces the standard Rails error page with a much better and more useful error page.
* When better_errors does not work, add [BetterErrors::Middleware.allow_ip! "0.0.0.0/0"] to config/environments/development.rb

## rails-footnotes

* Customize notes->lib/footnotes/notes/current_user_note.rb
* [reference](https://github.com/josevalim/rails-footnotes)

## annotate

* [reference](https://github.com/ctran/annotate_models)

## rubocop

* RuboCop is a Ruby static code analyzer(.rubocop.yml, .rubocop_todo.yml)
* [reference](http://blog-ja.sideci.com/entry/2015/03/12/160441)

## brakeman

* Brakeman is an open source static analysis tool which checks Ruby on Rails applications for security vulnerabilities.

## letter_opener_web

* [reference](http://qiita.com/7sgg_m/items/178e0d90fc55c5716474)

## activerecord-import

【controller】book#bulkinsert  
