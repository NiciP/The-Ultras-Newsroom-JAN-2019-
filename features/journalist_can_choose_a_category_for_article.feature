   Feature: Journalist can choose a category for article
   
            As an journalist
            In order to group articles together by topic
            I would like to be able to select the category it belongs to
   
    Background:
        Given the following users exist
            | email                 | password | role       |
            | editor@craft.se       | password | editor     |
            | journalist@craft.se   | password | journalist |

        And the following categories exist
            | category            |
            | Lifestyle             | 
            | Breaking News         | 

        And the following articles exist
            | title                                 | lead                   | content                                          | user                  | 
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | editor@craft.se       | 
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | journalist@craft.se   | 

    Scenario: Journalist can select category an article belongs to
        When I visit journalist create article page
        And I click "Lifestyle" 
        Then I should see 