class Project < ApplicationRecord

  after_create do
    Railsochrome.log("created id=#{self.id}")
  end
end
