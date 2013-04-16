 Feature: Manage User
  In to make a account
  As an user
  I want to create and manage articles

Scenario: What see User
    Given I have user account
    And I am on the home page
    When I follow "Sign in"
    And I fill in "Email" with "exampl@examppe.ru"
    And I fill in "Password" with "12345678"
    And I press "Sign in"
    Then I should see "Stawki"
    And I should see "YourBits"
  
Scenario: What see admin
    Given I have admin account
    And I am on the home page
    When I follow "Sign in"
    And I fill in "Email" with "examp@examppe.ru"
    And I fill in "Password" with "12345678"
    And I press "Sign in"
    Then I should see "Stawki"
    And I should see "YourBits"
    And I should see "News"
    And I should see "All Wallets"

Scenario: Show list of bits
  Given a bits with title "Bit#1" and status "suspense" and minbits "200"
  And a bits with title "Bit#2" and status "suspense" and minbits "150"
  And I sign_in
  When I go Stawki
  Then I should see "Listing events"
  And I should see "Bit#1"
  And I should see "suspense"
  And I should see "200"
  And I should see "Bit#2"
  And I should see "150"
    
Scenario: Admin create events
  Given I sign_in_as_admin
  And I go News
  And I fill in "Title" with "Bits1"
  And I fill in "Minbits" with "1234"
  And I press "Create Event"
  Then I should see "Bits1"
  And I should see "1234"
  And I should see "suspense"
  And I should see "Back"


# Scenario: User make bit
#   Given I sign_in
#   And I go Stawki
#   And a bits with title "Bit#1" and status "suspense" and minbits "200"
#   When I press "Make bit 0"
#   Then I should see "Bit was successfully created."  

# Scenario: User pay bit
#   Given I sign_in
#   And I go Stawki  
#   And a bits with title "Bit#1" and status "suspense" and minbits "200"
#   And a bits with title "Bit#2" and status "suspense" and minbits "150"
#   And I press "Make bit 0"
#   And I go YourBits 
#   When I press "Pay pay_this_bit"
#   Then I should see "Bit are made. Your balance is"
  
# Scenario: User pay bits
#   Given I sign_in
#   And I go Stawki  
#   And a bits with title "Bit#1" and status "suspense" and minbits "200"
#   And a bits with title "Bit#2" and status "suspense" and minbits "150"
#   And I press "Make bit 0"
#   And I go YourBits 
#   When I press "Pay bits"
#   Then I should see "Bits are made. Your balance is"

# Scenario: User see balance with create wallet
#   Given I sign_in
#   And I go Stawki  
#   And a bits with title "Bit#1" and status "suspense" and minbits "200"
#   And a bits with title "Bit#2" and status "suspense" and minbits "150"
#   And I press "Make bit 0"
#   And I go YourBits 
#   When I press "See_balance"
#   Then I should see "Your balance"
#   And I should see "Your wallet is create Your balance 10000.0"

# Scenario: User see balance with wallet
#   Given I sign_in
#   And I go Stawki  
#   And a bits with title "Bit#1" and status "suspense" and minbits "200"
#   And a bits with title "Bit#2" and status "suspense" and minbits "150"
#   And I press "Make bit 0"
#   And I go YourBits 
#   And I press "Pay bits"
#   And I press "See_balance"
#   Then I should see "Your balance"
#   And I should see "redirect to your balance:"


