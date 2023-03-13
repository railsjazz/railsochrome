# Railsochrome

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![Listed on OpenSource-Heroes.com](https://opensource-heroes.com/badge-v1.svg)](https://opensource-heroes.com/o/railsjazz)

Project created just for fun and because of curiosity.

The idea of this project is to print log messages from Rails app in Chrome console. It will work even if you have a simple JSON API call.

What is funny it can print log messages from the models. Just call a class method `Railsochrome.log`.

How it works see on the diagram below:

## Usage

1. Close the repo

2. Install chrome extension from the source code.

3. Add gem and use in your code:

```ruby
  # controller
  def index
    Railsochrome.log("Opening index action")
    Railsochrome.log("user_id = #{rand(111)}")
    Railsochrome.log("account_id = #{rand(111)}")

    @projects = Project.all
  end

  # model
  class Project < ApplicationRecord
    after_initialize do
      Railsochrome.log("after_initialize project id=#{self.id}")
    end
  end
```

## Installation

```ruby
gem "railsochrome"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install railsochrome
```

## Contributing

Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.or
g/licenses/MIT).


[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=peity_vanilla)
