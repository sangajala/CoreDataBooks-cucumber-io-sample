Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

#Scenario: Example steps
#  Given I am on the Welcome Screen
#  Then I swipe left
#  And I wait until I don't see "Please swipe left"
#  And take picture
#  And I clear "<string>"



  Scenario: Add a book

    Given  I am on the Welcome Screen
    When user adds on the '+" symbol
    And enter the "Title" as "Pawan" as values
    And enter the "Author" as "SriramA" as values
    And set the date as random in past
    And save the book
    Then the book name "SriramA" should be shown in the main screen



