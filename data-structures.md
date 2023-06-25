## Data Structures Easy to Advanced Course (Lecturer: William Fiset, Google)

In this course, we're going to understand why data structures are important, and how they can impact the efficiency of our code. We'll look at various types of data structures, like arrays, linked lists, trees, graphs, and more!

We'll be using this video resource: https://www.youtube.com/watch?v=RBSGKlAvoiM

The following are my notes and thoughts on the 8 hour course.


# What is a Data Structure?

A data structure (or DS) is a way of organizing data so it can be used effectively and efficiently. It's a way of organizing data so that it is later accessible, can be queried, or perhaps even updated with ease.


# Why Data Structures?

*They're essential to creating fast / powerful algorithms.
*They help manage and organize data.
*They make code cleaner more readable.

Coders who really excel fundementally understand how and when to use the appropriate data structure for the task.


# Abstract Data Types vs. Data Structures

Abstract Data Types (ADTs) are a form of abstract modeling. They provide a means to encapsulate the details of a data structure, hiding the implementation specifics and exposing only the necessary behaviors (or operations) to the users or other parts of the software.

For instance, when using a "List" ADT, you don't care whether it's implemented as an array or a linked list behind the scenes. You only care about being able to perform operations such as "add an item", "remove an item", "get the item at a particular index", etc.


# An Analogy of ADTs

To follow an example where ADTs are a mode of transportation:

The Abstract Data Type (ADT) would be the concept of "Transportation". It's a general idea that encompasses all possible ways of getting from point A to point B. The operations could be "Start", "Stop", "Speed Up", "Slow Down", but it does not specify how these operations are performed.

The specific modes of transport (walking, biking, driving a car, etc.) are the actual Data Structures. They provide the implementation of the operations defined by the ADT. For example, "Start" when you're walking would be to take a step forward, but "Start" when you're driving a car would be to turn on the engine and put the car in gear.


# I thought: That Sounds Very Object-Oriented, right?

ChatGPT says:

> Absolutely, yes! The concept of Abstract Data Types (ADTs) aligns very well with the principles of Object-Oriented Programming (OOP).

> In OOP, an object is an instance of a class, and a class provides an abstract blueprint for creating objects. It encapsulates data (attributes) and functions (methods) into one entity, similar to how an ADT encapsulates operations and data. The users of a class or an ADT need not know the internal workings of the class or the ADT; they only need to know what operations are available to them.

> So, you could say that a class in object-oriented programming is a way of implementing an ADT, where the ADT is the general concept and the class is the specific implementation.

> But it's also important to note that while they share similarities, ADTs and OOP are not synonymous. ADTs are a concept applicable to many types of programming, not just object-oriented. They're a way to define data types by their behavior (operations), but not their implementation, and this can be applied in numerous programming paradigms, not only in OOP.

> You could say that a class in object-oriented programming is a way of implementing an ADT, where the ADT is the general concept and the class is the specific implementation.


# Examples of ADTs and Implementations

* Lists
  - Dynamic Array
  - Linked List

* Queue
  - Linked List based Queue
  - Array based Queue
  - Stack based Queue

* Map
  - Tree Map
  - Hash Map
  - Hash Table

* Vehicle
  - Golf Cart
  - Bicycle
  - Submarine


# Computational Complexity Analysis

As programmers, we find ourselves asking the same two questions:

1. How much time does this algorithm need to finish?
2. How much space does this algorithm need for its computation?

If a program takes a long time to finish, it's no good. Similarly, if it runs in constant time but requires a vast amount of space, it's useless in a different way.


# Big-0 Notation

To standardize how much time / space is needeed for an algorithm, computer scientists have invented Big-0 Notation. It gives an upper bound of the complexity in the worst case, helping to quantify performance as input sizes become arbatrarily large.

Big-O notation is generally used as a noun, and it describes the upper bound of the time complexity or space complexity of an algorithm. Here are some examples of how it can be used in conversation:

"Our current search algorithm has a time complexity of O(n), but by implementing a binary search, we could bring it down to O(log n)."

"Since we're dealing with large data sets, we should focus on algorithms with good Big-O performance to ensure the efficiency of our application."

"The sorting algorithm we used in this project has a Big-O notation of O(n log n), which made it a good choice for handling the volume of data we anticipated."

For example, in a list of unique numbers, and you're searching in the list for the position where the integer '7' occurs. The issue isn't when it's at the beginning or middle of the list, but when it's the very last in the list. The time complexity would be linear in relation to the size of the list, because every element needs to be iterated until '7' is found.


# An Analogy for Big-0 Notation

Imagine you're playing hide and seek with your friends in a huge mansion. You're the one who's seeking.

If your friend is hiding in the first room you check, that's the best case scenario - you've found them straight away! This is like finding the number '7' at the start of the list.

Now, if your friend is hiding in the last room you check, you've had to go through the whole mansion before finding them. This takes a lot longer and is the worst case scenario. In computer science, this is what we often care about when we talk about "complexity" - the worst case scenario.

Big-O Notation is a way of describing how many rooms (or "operations") you might have to check in the worst case scenario, depending on how many friends (or "input size") are playing. In the hide and seek game, if you have to check every room in the mansion for your friend, we can say the time it takes is "linear" in relation to the size of the mansion. In Big-O terms, this is called O(n), where 'n' is the number of rooms.

Now, imagine if the mansion has multiple floors and each floor has the same number of rooms. If you have a way of knowing which floor your friend is hiding on, you could directly go to that floor and start searching room by room. This would be faster than having to search the entire mansion. This could be similar to a more efficient algorithm which has a better Big-O notation.

Big-O Notation gives us a way of comparing how well different "seeking methods" (algorithms) would work when the mansion gets arbitrarily large (when we have a lot of data to work with). It's like a measure of the worst-case "efficiency" of an algorithm as the amount of data it has to work with increases.


# Complexities Ordered from Smallest to Largest

Please note: n = size of input

Constant Time: 0(1)
Logarithmic Time: 0(log(n))
Linear Time: 0(n)
Linearithmic Time: 0(nlog(n))
Quadric Time: 0(n^2)
Cubic Time: 0(n^3)
Exponential Time: 0(b^n), b > 1
Factorial Time: 0(n!)

Almost any mathematical expression can be wrapped around a Big-0 notation. But, it's only interested when n is big in some way.


