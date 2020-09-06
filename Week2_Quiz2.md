# Week 2 | V. Octave Tutorial

## Question 1


Suppose I first execute the following Octave commands:

	A = [1 2; 3 4; 5 6];
	B = [1 2 3; 4 5 6];

Which of the following are then valid Octave commands? Check all that apply. (Hint: A' denotes the transpose of A.)

    * C = B' + A;
 
    * C = A' * B;
 
    * C = B + A;
 
    * C = A * B;

## Answer
First A = 3 × 2 matrix and B = 2 × 3 matrix
## Propertise of Matrix
* Addition and subtraction of matrices
- Two matrices A and B can be added (or subtracted) if and only if they have the same size m × n.
- Two matrices A and B can be multiplied if and only if they have the same inner size m × n. Which means size A = m × n and size B must be n × p then there product will be m × p.
* The Transpose of size A' = 2 × 3 and B' = 3 × 2
* The Final Answer is 
             **C = B' + A;**
             **C = A * B;**
---

## Question 2
![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?A = \begin{bmatrix}  16 &2&3&13 \\\\5&11&10&8\\\\9&7&6&12\\\\4&14&15&1 \end{bmatrix})

Which of the following indexing expressions gives

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?B = \begin{bmatrix}  16 &2 \\\\5&11\\\\9&7\\\\4&14 \end{bmatrix})
? Check all that apply.

    * B = A(:, 0:2);
 
    * B = A(:, 1:2);
 
    * B = A(1:4, 1:2);
 
    * B = A(0:4, 0:2);

### Answer
The size of matrix A is 4 x 4 and the size of matrix B is 4 x 2 as you see the matric B is the 1&2 col of matrix A 
* Note :- In matlab and octave the index number is starting from 1.
The correct answer is * **B = A(:, 1:2);**
 
                      * **B = A(1:4, 1:2);** 

---

## Question 3
Let A be a 10x10 matrix and x be a 10-element vector. Your friend wants to compute the product Ax and writes the following code:

	v = zeros(10, 1);
	for i = 1:10
	  for j = 1:10 
	    v(i) = v(i) + A(i, j) * x(j);
	  end
	end
	
	
How would you vectorize this code to run without any for loops? Check all that apply.

    * v = A * x;
 
    * v = sum (A * x);
 
    * v = A .* x;
 
    * v = Ax;


### Answer
* refer Vectorization topic by Anderw Ng. 
The correct answer is **v = A * x;**

---

## Question 4
Say you have two column vectors v and w, each with 7 elements (i.e., they have dimensions 7x1). Consider the following code:

	z = 0;
	for i = 1:7
	  z = z + v(i) * w(i);
	end

Which of the following vectorizations correctly compute z? Check all that apply.

    * z = v' * w;
 
    * z = v * w;
 
    * z = sum (v .* w); 
 
    * z = v .* w;

### Answer
The dimensions 7 x 1 
As i tell in question number 1) The inner size must be the same so we must convert the size by using transpose.
And if we use dot product we must add them together for more refer the vectorization tutorial 
The correct answer is * **z = v' * w;**
                      * **z = sum (v .* w);** 

---

## Question 5
In Octave, many functions work on single numbers, vectors, and matrices. For example, the sin function when applied to a matrix will return a new matrix with the sin of each element. But you have to be careful, as certain functions have different behavior. Suppose you have an 7x7 matrix X. You want to compute the log of every element, the square of every element, add 1 to every element, and divide every element by 4. You will store the results in four matrices, A,B,C,D. One way to do so is the following code:

	for i = 1:7
	  for j = 1:7
    	A(i, j) = log (X(i, j));
	    B(i, j) = X(i, j) ^ 2;
    	C(i, j) = X(i, j) + 1;
	    D(i, j) = X(i, j) / 4;
	  end
	end
	
Which of the following correctly compute A,B,C, or D? Check all that apply.

    * A = log(X);
 
    * C = X + 1;
 
    * D = X / 4;
 
    * B = X ^ 2;

### The Corect Answer is 

               * **A = log(X);**
 
               * **C = X + 1;**
 
               * **D = X / 4;**
 
               * **B = X .^ 2;**