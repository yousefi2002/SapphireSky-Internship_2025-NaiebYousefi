
//  --------------------------  OOP Programming  -----------------------------
//1. What are the four pillars of Object-Oriented Programming?
// The four pillars of OOP are Encapsulation, Abstraction, Inheritance, and Polymorphism.
//
// Encapsulation: Hiding data within a class and providing controlled access through methods.
// Abstraction: Hiding complex implementation details and exposing only necessary functionality.
// Inheritance: Enabling a class to inherit properties and methods from another class.
// Polymorphism: Allowing a method to behave differently based on the object that calls it.
//------------------------------------------------------------------------------

 //2. Define and provide an example of encapsulation in Dart
// Encapsulation restricts direct access to an object's data and allows controlled access via getter and setter methods.
// Private properties in Dart start with an underscore _.
//------------------------------------------------------------------------------

//3. How do Dart classes differ from traditional classes in languages like Java or C++?
// Dart classes are more flexible and support optional typing, mixins, and first-class functions.
// Unlike Java, Dart does not have explicit public, protected, or private access modifiers—only _ for privacy.
//------------------------------------------------------------------------------

//4. Write a class Car with properties brand, model, and a method displayInfo().
class Car {
  String brand = 'Tesla';
  String model = 'Tesla Pro';

  displayInfo(){
    print('This car is from $brand brand and is the $model model');
  }
}
void main(){
  Car car1 = Car();
  car1.displayInfo();
}
//------------------------------------------------------------------------------

//5. How Inheritance Works in Dart
// Inheritance in Dart allows a class to derive properties and methods from another class,
// promoting code reusability and a hierarchical class structure. The extends keyword is used for class inheritance.
// The parent class (superclass) contains common properties and methods.
// The child class (subclass) inherits these properties and methods but can also add new ones or override existing ones.
// The super keyword is used to access the parent class's properties, methods, or constructor.
// Example:
// class Vehicle {
//   void move() {
//     print("Vehicle is moving");
//   }
// }
//
// class Car extends Vehicle {}
//
// void main() {
//   Car myCar = Car();
//   myCar.move();
// }
// ------------------------------------------------------------------------------

//6. How do you create a private property in a Dart class?
// Dart uses an underscore (_) before a variable name to make it private to its library.
//------------------------------------------------------------------------------

//7. What is method overriding, and how can it be implemented in Dart?
// Method overriding allows a subclass to provide a different implementation of a method inherited from its superclass.
// The @override annotation is used for clarity.
//------------------------------------------------------------------------------

//8. Write an example demonstrating polymorphism in Dart
// Polymorphism allows objects of different classes to be treated as objects of a common superclass,enabling dynamic method invocation.
//------------------------------------------------------------------------------

//9. What is the purpose of super() in Dart classes?
// super() is used to call the constructor or methods of a parent class in Dart.
// This is useful when a subclass needs to initialize properties from its superclass.
//------------------------------------------------------------------------------

//10. Explain the difference between composition and inheritance
// Inheritance: A class inherits properties and methods from a parent class, creating a "is-a" relationship.
// Composition: A class contains an instance of another class instead of inheriting from it, forming a "has-a" relationship.


//  --------------------------  Debugging  -----------------------------
//1. What are the different types of errors in Dart?
// Dart has three main types of errors:
//
// Syntax Errors: Occur when the Dart syntax is incorrect.
// Runtime Errors: Happen during program execution, such as division by zero or null reference errors.
// Logical Errors: When the program runs but produces incorrect results due to flawed logic.
//------------------------------------------------------------------------------

//2. How can you debug a Dart program in VS Code or Android Studio?
// You can debug a Dart program in VS Code or Android Studio by:
//
// Using breakpoints to pause execution at specific lines.
// Running the program in debug mode (Shift + F5 in VS Code).
// Inspecting variable values in the debug console.
// Using logging and print statements for tracking execution flow.
//------------------------------------------------------------------------------

//3. What is the use of print(), and how can it help in debugging?
// The print() function in Dart outputs text to the console, helping to inspect variable values and execution flow.
//------------------------------------------------------------------------------

//4. Explain the purpose of try...catch in Dart.
// try...catch is used to handle exceptions, preventing runtime errors from crashing the program.
//------------------------------------------------------------------------------

//5. How do breakpoints help in debugging Dart code?
// Breakpoints pause the execution of a program at a specific line, allowing you to inspect variable values,
// step through code, and find issues without excessive print() statements.
// You can set breakpoints in VS Code or Android Studio by clicking next to the line number.
//------------------------------------------------------------------------------

//6. What is the difference between throw and print() in Dart?
// print() is used for logging messages and does not stop execution.
// throw generates an exception, stopping execution unless caught by try...catch.
//------------------------------------------------------------------------------

//7. Write a program that intentionally throws an error and catches it using try...catch.
// void main() {
//   try {
//     throw FormatException("Invalid input format");
//   } catch (e) {
//     print("Caught an error: $e");
//   }
// }
//------------------------------------------------------------------------------

//8. How can the debugger() statement be used in Dart?
// The debugger() statement pauses execution when running in debug mode. It helps inspect variables and step through the code.
//------------------------------------------------------------------------------

//9. What is a stack trace, and how can it help in debugging?
// A stack trace shows the execution path that led to an error, helping pinpoint where and why the issue occurred.
//------------------------------------------------------------------------------

//10. What are some best practices for writing bug-free Dart code?
// Use strong typing (int, String, etc.) to catch errors early.
// Enable null safety to avoid null reference errors.
// Write unit tests to verify code correctness.
// Use meaningful variable names for readability.
// Handle exceptions properly using try...catch.
// Use print() or logging to debug issues.
// Run code in debug mode and use breakpoints.