Given(/^I am logged in$/) do
  @app.home.visit
  binding.pry
  #@app.login.login
end

When(/^I go to the create event page$/) do
  @app.calendar.visit
end

When(/^enter valid event details$/) do
  @app.calendar.create_event
end

Then(/^it should appear on the calendar$/) do
  pending #expect calendar to show created events
end