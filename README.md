# Railsochrome

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![Listed on OpenSource-Heroes.com](https://opensource-heroes.com/badge-v1.svg)](https://opensource-heroes.com/o/railsjazz)

Project was created just for fun and out of curiosity.

The idea of this project is to print log messages from the Rails app in a Chrome console. It will work even if you have a simple JSON API call.

What is funny, is that it can log messages from the models. Just call a class method Railsochrome.log.

How it works see on the diagram below:

<img width="1184" alt="image" src="https://user-images.githubusercontent.com/11101/224819017-f032aa4c-6e41-4e9c-9a7f-c76783936580.png">

## Usage

1. Clone the repo

2. Install chrome extension from the source code.

<img width="861" alt="image" src="https://user-images.githubusercontent.com/11101/224819113-aeaaa9e3-e3b4-4328-a97f-c86383f9ec4a.png">

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
4. Result:

<img width="749" alt="image" src="https://user-images.githubusercontent.com/11101/224819217-1125f72e-df96-47d7-b80f-89eaff9b3760.png">

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
