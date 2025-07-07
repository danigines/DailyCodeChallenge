# Estimate π using the Monte Carlo Method

## ***Problem Description***

The area of a circle is defined as **π r<sup>2</sup>**.
Estimate **π** to **3** decimal places using a _Monte Carlo method_.

## ***Notes:***
🧪<ins>Monte Carlo Strategy</ins>

Imagine a square with side length 1, and a circle of radius 1 inscribed within it:
- Generate N random points in [0,1] X [0,1]
- Count how many fall inside the circle:
>x<sup>2</sup> + y<sup>2</sup> ≤ 1
- The ratio of points inside the circle to total points approximates:
>Area<sub>circle</sub>/Area<sub>square</sub>  =  πr<sup>2</sup>/(2r)<sup>2</sup>  =  π/4
- Therefore:
>π ≈ 4 X Points<sub>Inside</sub>/Total<sub>Points</sub>

Hint:

&emsp;&emsp; The basic equation of a circle is x<sup>2</sup> + y<sup>2</sup> = r<sup>2</sup>.
