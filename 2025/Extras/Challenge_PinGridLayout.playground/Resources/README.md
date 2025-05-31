# Pin Grid Layout by Shortest Column Height

## **Problem Description**

Write a function that takes a list of pin objects, each with a height attribute, and a number of columns and returns a grid layout.
You put the next pin the shortest column (a column's height is the-sum-of-heights of pins in the column) so far.

## **Notes:**
If there is a tie, insert the pin into the left most column.
- Return a list which contains a-list for each column.
- The column lists each contain the pins in that column.

## **Examples:**
If for simplicity we implement a pin object as a simple dictionary with a "height" key, and we pass in this list of pins:
```
pins = [ {'id':1, 'height': 300},
         {'id':2, 'height': 200},
         {'id':3, 'height': 250},
         {'id':4, 'height': 350},
         {'id':5, 'height': 100}
]
```

So, `layout(pins, 2)` will return this output:
```
[
  # This list has the pins for the first column
  [ {'id':1, 'height': 300},
    {'id':4, 'height': 350} ],
  # This list has the pins for the second column
  [ {'id':2, 'height': 200},
    {'id':3, 'height': 250},
    {'id':5, 'height': 100} ]
]
```