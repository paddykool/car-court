Feature: GoToCarListFromFavouritesPgae
  Test adding car to AddCarToFavourites

  Scenario: Test adding car to favourites list
    Given I am on the Featured Cars Page
    Then I expect the 'Feature Cars Title' to be 'Our Featured Cars'
    When I tap the 'favourites' icon
    Then I expect the button 'goToListButton' to be present within 2 seconds
    # Then I see the Go To Car List button