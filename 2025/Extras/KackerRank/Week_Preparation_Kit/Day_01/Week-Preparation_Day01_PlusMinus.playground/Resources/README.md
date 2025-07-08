# Plus Minus

## ***Problem Description***

Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.

Print the decimal value of each fraction on a new line with **6** places after the decimal.

## ***Notes:***
This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to **10^-4** are acceptable.

🖨️ <ins>Print<ins>

The ratios of ***positive, negative*** and ***zero*** values in the array. Each value should be printed on a separate line with **6** digits after the decimal. The function should not return a value.

### ***Examples***
<ins>Example 01:</ins>

`arr= [1,1,0, —1,-—1]`

There are **n = 5** elements, **two** positive, **two** negative and **one** zero. Their ratios are:
```
2/5 = 0.4
2/5 = 0.4
1/5 = 0.2
```

Results are printed as:
```
0.400000
0.400000
0.200000
```

<ins>Example 02:</ins>

`arr = [-4, 3, -9, 0, 4, 1]`

Sample Output:
```
0.500000
0.333333
0.166667
```
