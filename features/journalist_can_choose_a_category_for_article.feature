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
            | name         |
            | Lifestyle    |
            | Breaking News|
        And I visit the journalist edit article page
        
    Scenario: Journalist can select category an article belongs to    
        And I click "Lifestyle"
        And I click "Update article"
        Then I should see "Article was successfully created."
        