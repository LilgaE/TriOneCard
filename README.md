# chemotaxis4
==========
Chemotaxis is when an organism moves toward or away from a chemical stimulus like food. Biologists write software using [random walks](http://www.mit.edu/~kardar/teaching/projects/chemotaxis(AndreaSchmidt)/random.htm) to model and study [how very small organisms like bacteria search for food](http://www.mit.edu/~kardar/teaching/projects/chemotaxis(AndreaSchmidt)/). In this assignment you will create a simulation of organisms moving away from a starting position using a random walk. To start the assignment, fork [this repository](https://github.com/ACS-Curriculum/chemotaxis4). You may find [slides 241 - 345](https://drive.google.com/file/d/0ByC9Jv9OkYcJRWhUZ1ZsdXlMZ00/view?usp=sharing) and the <a href="https://drive.google.com/file/d/0Bz2ZkT6qWPYTZ1FCOTZrWS1pb3M/view?usp=sharing">Arrays of Objects</a> worksheet helpful. NOTE: you must use `Math.random()` for all the random numbers in this assignment. 

Requirements
============
1. A class to represent a single bacteria or some other single organism. The class will have the following members:
  - 3 ints which hold the x and y coordinates of the bacteria position, and the bacteria color.
  - A constructor which initializes the 3 ints
  - `void move()` which moves the bacteria in a **random walk** pattern.
  - `void show()` which draws the bacteria in the correct position and color 
2. You will then use an array to store many *instances* of the Bacteria. 
   
Extensions
==========

If you have extra time, you might try to have the bacteria move in a "biased random walk" towards some stimulus like a piece of food or the mouse. You can use the mouse buttons to adjust the bias towards or away from the mouse. You can modify your class so the bacteria have a finite lifespan and can reproduce. You can simulate other organisms besides bacteria and even have multiple types of organisms like a predator and prey. Your simulation doesn't have to look like any other. Have fun and be creative.
