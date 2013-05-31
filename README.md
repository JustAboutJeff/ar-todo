# ActiveRecord TODOs

This challenge is to build a functioning Todo application using a database and command line interaction. You should leverage what you learned in Todo 1.0 and build upon that design, improving your OO implementation.

From the user's perspective, the final product will look similar to the Todo 1.0. We are still using the command line and we want to build something that works like this:

$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete <task_id>
$ ruby todo.rb complete <task_id>

Learning Goals
This application has all the moving parts of an MVC application: user input, display code, and data persistence. In addition it leverages the power of Active Record to manipulate a database of Todo records.

You will need to start with a solid OO design and implement a framework that will allow you to utilize Active Record.

In your design, it's important to think about what responsibilities this application has to fulfill.

Keep things like the single responsibility principle and separation of concerns in mind as you decide what objects and classes belong in your application.

As you work through the iterations, pay close attention to how change impacts your application. When a new feature is added how many files do you have to change? How frustrating is it to make those changes?

You will be using Git and GitHub to work with your group on this challenge. Here is the DBC Git Process you should follow. Every member of your group should commit to the code base at least once during the day.
