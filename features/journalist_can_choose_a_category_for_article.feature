   Feature: Journalist can choose a category for article
   
            As an journalist
            In order to group articles together by topic
            I would like to be able to select the category it belongs to
   
    Background:
        Given the following users exist
            | email                 | password | role       |
            | editor@craft.se       | password | editor     |
            | journalist@craft.se   | password | journalist |

        And the following articles exist
            | title                                 | lead                   | content                                          | user                  | category |
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | editor@craft.se       | Lifestyle |
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | journalist@craft.se   | Breaking News|

    Scenario: Journalist can select category an article belongs to
        When I visit the journalist new article page
        And I click "Lifestyle" 
        And I click "Save article"