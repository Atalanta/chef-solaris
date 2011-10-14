Description
===========

This cookbook is used to provide patches to Chef to improve its operability with Solaris 10.   

Requirements
============

## Platforms

Tested on:

* Solaris 10

Recipes
=======

default
-------

The default recipe currently takes no action.  This cookbook is only used to provide access to the library it contains.

Resources/Providers
===================

The libarary directory contains the patches and/or extensions to Chef.  At present this is restricted to `usermod.rb` which fixes the way in which `modify_group_members` is handled in the  `Group` provider.

Usage
=====

Ensure the `solaris` cookbook is at the top of the run list to provide these patches to the rest of the cookbooks and recipes.

Changes/Roadmap
===============

## Future

* Ideally any patches in this cookbook should ultimately go into upstream Chef, so this cookbook/library may not have a future.

## 1.0.0:

* Initial release

License and Author
==================

Author:: Atalanta Systems (<support@atalanta-systems.com>)

Copyright:: 2011, Atalanta Systems Ltd
