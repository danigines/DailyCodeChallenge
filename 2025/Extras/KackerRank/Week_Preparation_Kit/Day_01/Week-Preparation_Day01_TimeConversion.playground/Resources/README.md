# Time Conversion

## ***Problem Description***
Given a time in **12** _hour AM/PM_ format, convert it to military (24-hour) time.

## ***Notes:***
- ***12:00:00AM*** on a 12-hour clock is ***00:00:00*** on a 24-hour clock.
- ***12:00:00PM*** on a 12-hour clock is ***12:00:00*** on a 24-hour clock.

<ins>Input Format<ins>

A single string `S` that represents a time in **12**-hour clock format (i.e.: **hh:mm:ssAM** or **hh:mm:ssPM**).

<ins>Constraints<ins>

All input times are valid

### ***Examples***
- s = "'12:01:00PM"

&emsp;`Return "12:01:00"`

- s = "'12:01:00AM"

&emsp;`Return '00:01:00'`

- s = "'07:05:45PM"

&emsp;`Return '19:05:45'`
