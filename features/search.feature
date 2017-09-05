Feature: Verify Search functionality of Moo
  As a Moo user
  I should be able to search for products listed on Moo

  Scenario Outline: Verify whether user is able to search products
    Given I am on Moo homepage
    When I search for <ProductName>
    Then I should see matching results for <ProductName>

    Examples:
    |ProductName|
    |"Business Cards"|

  Scenario Outline: User should be presented with error message on searching an invalid product
  Given I am on Moo homepage
  When I search for <InvalidQuery>
  Then I should see a user friendly message for <InvalidQuery>

    Examples:
    |InvalidQuery|
    |"dsssere"|
