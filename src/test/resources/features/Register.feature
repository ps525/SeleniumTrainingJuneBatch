@Runallcases
Feature: To test register functionality on Lowblaws website


@SuccessfulRegister
Scenario Outline: To test successful Register
Given User launches Loblaws url
#When User clicks on Sign In page
#Then User Clicks on Create PC id
#Then User creates an account by providing enter "<Email>","<Password>" and "<confirmPassword>"
#Then user clicks on Agree checkbox
#Then user clicks creates PC id button

Examples:
|Email|Password|confirmPassword|
|John_Singh10@gmail.com|FirstTest@001|FirstTest@001|




#working
@RegisterError
Scenario Outline: To test Error message on Register Page
Given User launches Loblaws url
When User clicks on Sign In page
Then User Clicks on Create PC id
Then User creates an account by providing enter "<Email>","<Password>" and "<confirmPassword>"
Then validates the error message on register page

Examples:
|Email|Password|confirmPassword|
|John_Singh10@gmail.com|FirstTest@001|FirstTest@0012|


#working
@Login  @AllTestCases
Scenario: To test login functionality
Given User launches Loblaws url
When User clicks on Sign In page
Then User enters "John_Singh01@gmail.com" and "FirstTest@001" to login
Then User click on My Account
Then User click on "Sign Out" in My Account


#working
#add a product to cart, create dynamic xpaths
@Addtocart  @AllTestCases
Scenario: To test Add to cart functionality
Given User launches Loblaws url
#When user searched "<product>" in search for product bar
When user searched "milk" in search for product bar
Then user clicks on sorting dropdown and validate all values in dropdown are displayed
#Then user selects "Relevance" from dropdown
Then search results are displayed

Then user add "Partly Skimmed Milk 2% MF" to the cart


########################################################################################

#working
# select filter and check the values from the filter, 
#getAttribute method for checking if dropdown is collapsed or expanded
@SelectFiltersWithCheckBox  @AllTestCases
Scenario: To test Filter functionality by selecting checkbox
Given User launches Loblaws url
When user searched "milk" in search for product bar
Then user select "Aisle" on the page
Then user select "Deals" on the page
Then user selects "Multi-Buy" option from the filter
Then user selects "Price Reduction" option from the filter
Then user selects "$1,$2,$3,$4,$5" option from the filter
#Then user select "Sellers" on the page
#Then user select "Price" on the page
#Then user select "Brand" on the page
#Then user select "Dietary" on the page


#working
# to search for a specific brand under brand filter.
# test for searchable field
@SelectFiltersWithSearchableCheckBox  @AllTestCases
Scenario: To test Filter functionality by selecting checkbox
Given User launches Loblaws url
When user searched "milk" in search for product bar
Then user select "Aisle" on the page
Then user select "Brand" on the page
Then user search for "Activia" brand in the filter
Then user search for "Nestle" brand in the filter




#working
# to test forward,backward, refresh for a page
@TestNavigation  @AllTestCases
Scenario: To test page navigation
Given User launches Loblaws url for page navigation


#working
#hover on category, select a subcategory and select the item under subcategory and click on it
@testMouseActionsforHover @AllTestCases
Scenario Outline: To test mouse actions and hover
Given User launches Loblaws url
When user selects one "<Category>" and "<SubCategory>"

Examples:
|Category|SubCategory|
|Grocery|International Foods|
#|Joe Fresh|Men|



@testMouseActions @AllTestCases
Scenario Outline: To test mouse actions
Given User launches Loblaws url
When user selects "<Category>" and "<SubCategory>"
Then user validates number of subcategories under a category is "<NumberOfSubcategories>"
Then user validates number of items under a subcategory is "<NumberOfItemsInSubcategories>"

Examples:
|Category|SubCategory|NumberOfSubcategories|NumberOfItemsInSubcategories|
|Grocery|International Foods|16|43|



#working , Testing in Frames
@testMouseActionsforDrag&Drop
Scenario: To test mouse actions and hover
Given User launches url to test drag and drop


#working
@TestBrowserPopups
Scenario: To test Javascript popup
Given User tests Javascript popup

#working
@TestWindowsPopups
Scenario Outline: To test windows popup
When User tests windows popup for "<fileName>"

Examples:
|fileName|
|TestDocumentForFileUpload.docx|
|TEST.pdf|


#working
@testwindowHandles  @AllTestCases
Scenario: To test window handles
#Given User wanted to test windowhandles
Given user wanted to test windowhandles for loblaws


#working
@testWebTable   @AllTestCases
Scenario: To test Web table
Given user wanted to test web table


#working
@testWebTableValidations   @AllTestCases
Scenario Outline: To test Web table with validations
Given user wanted to test web table for "<Country>" and validate "<Language>" ,  "<Currency>", "<WikipediaPageTitle>"

Examples:
|Country|Language|Currency|WikipediaPageTitle|
|India|Hindi, English|Indian Rupee|India - Wikipedia|
|China|Standard Chinese (Mandarin)|Renminbi (Yuan)|China - Wikipedia|
|Germany|German|Euro|Germany - Wikipedia|
|Canada|English, French|Canadian Dollar|Canada - Wikipedia|


#working   To get the list of suggestions in the search bar and click on them if required
@typeahead
Scenario: To test typeAhead
Given user wants to validate type ahead for a product


