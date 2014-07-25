Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  Movie.where(title: arg1).first.director.should == arg2
end
