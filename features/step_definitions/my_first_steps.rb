Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)
end


When(/^user adds on the '\+" symbol$/) do
  touch("UINavigationButton accessibilityLabel:'Add'")
end


When(/^enter the "([^"]*)" as "([^"]*)" as values$/) do |field,value|
   sleep 5
  touch("UITableViewCell text:'"+field+"'")
  sleep 2
  clear_text("textField")
  keyboard_enter_text(value)
  touch("button index:1")

end


When(/^set the date as random in past$/) do

  touch("UITableViewCell text:'Copyright'")
  scroll "scrollView", :up
end



When(/^save the book$/) do
  touch("button index:1")
end

Then(/^the book name "(.*)" should be shown in the main screen$/) do   |title|
  sleep 2

  begin
    check_view_with_mark_exists(title)
  rescue
    begin
      scroll "scrollView", :down
      p "i am in rescue"
      sleep 2
      check_view_with_mark_exists(title)
    rescue
      scroll "scrollView", :down
      p "i am in rescue"
      sleep 2
      check_view_with_mark_exists(title)
    end
  end


end