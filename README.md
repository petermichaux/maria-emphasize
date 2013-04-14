Maria-Emphasize
===============

A plugin for Maria adding emphasize and deEmphasize methods to view objects. Inspired by Squeak's View class.


Examples
--------

```javascript
var view = new maria.View();
view.emphasize();
view.deEmphasize();
```

Since view objects are composite, by default, child views will also be emphasized and de-emphasized along with the parent. You can override this behaviour as necessary.


Downloads
---------

See http://peter.michaux.ca/downloads/maria-emphasize/ for production ready builds.

Install via Bower with `bower install maria-emphasize`


Status
------

Ready.


Browser Support
---------------

This implementation is very basic. It should work in all browsers ever made.


Dependencies
------------

Just [Maria](https://github.com/petermichaux/maria).


Build
-----

To build the production ready files, you need [JSMin](http://www.crockford.com/javascript/jsmin.html) or any other tool with the same command line interface. Then just type "make" at the command line and look in the build directory for the results.

For the record, this is how I installed JSMin. Note that I have /Users/peter/bin in my PATH.

```sh
$ cd ~/tmp
$ curl -O https://raw.github.com/douglascrockford/JSMin/master/jsmin.c
$ gcc -o jsmin jsmin.c
$ mv jsmin ~/bin
$ rm jsmin.c
$ which jsmin
/Users/peter/bin/jsmin
```
