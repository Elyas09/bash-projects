#!/bin/bash

# Your Task:
#Step 1: Firstly you need to create a select statement in your script that will present to
#the user a list of the below cities to choose from.
#Tokyo, London, Los Angeles, Moscow, Dubai, Manchester, New York, Paris
#Bangalore, Johannesburg, Istanbul, Milan, Abu Dhabi, Pune, Nairobi, Berlin, Karachi

#Step 2: Secondly you need to set up a case statement that will match each of these
#cities as cases to their respective countries and echo out the country name to the
#user of the script.
#Note: You need to place your case statement inside of the select statement.
#Note: Some of the cities are in the same country. You can use a | to separate these
#within the same case rather than creating separate cases for each.


echo -n "Please enter the city you live in (enter digit): " 
echo ""
select city in Tokyo London "Los Angeles" Moscow Manchester "New York" Paris Istanbul Berlin;
do 
	case "$city" in
		Tokyo)
			country="Japan" ;;
		London|Manchester)
			country="United Kingdom" ;;
		Paris)
			country="France" ;;
		Berlin)
			country="Germany" ;;
		Istanbul)
			country="Turkey" ;;
		"Los Angeles"|"New York")
			country="United States" ;;
		Moscow)
			country="Russia" ;;
	esac
	echo "$city is in $country"
	break
done
