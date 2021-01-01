# Boolean2 [![[version]](https://badge.fury.io/rb/boolean2.svg)](https://badge.fury.io/rb/boolean2) [![[ci]](https://github.com/janlelis/boolean2/workflows/Test/badge.svg)](https://github.com/janlelis/boolean2/actions?query=workflow%3ATest)

Next time before you want to define a global `Boolean` class, consider using this bare-bones approach instead.

## Setup

Add to your `Gemfile`:

```ruby
gem 'boolean2'
```

## Usage

```ruby
true.is_a? Boolean2 #=> true
false.is_a? Boolean2 #=> true
nil.is_a? Boolean2 #=> false
Object.new.is_a? Boolean2 #=> false

true.to_boolean2 #=> true
false.to_boolean2 #=> false
nil.to_boolean2 #=> false
Object.new.to_boolean2 #=> true

Boolean2.new(true) #=> true
Boolean2.new(false) #=> false
Boolean2.new(nil) #=> false
Boolean2.new(Object.new) #=> true
```

## J-_-L

Copyright (C) 2015 Jan Lelis <https://janlelis.com>. Released under the MIT license.
