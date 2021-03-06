Feature: Learning desks with PC with their current state
	As a guest
	I want to know basic information about the learning desk in the workspace
	So that I can decide whether I want to go to there

	Background:
		Given I am on the “CurrentState” page
		
		Examples: States
			| state    |
			| free     |
			| occupied |

	Scenario: display <state> computers
		Given one or more “computer” is currently “<state>”
		Then the currently “<state>” computers are displayed as “<state>”
		And the current operating system on the computer is displayed

	Scenario: display <state> printers
		Given one or more “printer” is currently “<state>”
		Then the currently “<state>” printers are displayed as “<state>”
		And the remaining number of orders is displayed

	Scenario: display out of order devices
		Given one or more “device” is currently “out of order”
		Then the currently “out of order” devices are displayed as “out of order”

	Scenario: display devices with no information
		Given one or more “device” is currently “unknown”
		Then the currently “unknown” devices are displayed as “unknown”
		And I get a hint to update the information

	Scenario: display devices with old information
		Given the data from the learning space is too old
		Then I get a hint to update the information
		And the last known state of the learning room with a time stamp is displayed