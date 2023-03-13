class Project < ApplicationRecord
  after_initialize do
    Railsochrome.log("after_initialize project id=#{self.id}")
  end
end
