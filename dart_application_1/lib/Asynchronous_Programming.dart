// ignore_for_file: file_names
// ignore: duplicate_ignore
// ignore: file_names

// Asynchronous Programming in Dart
// Asynchronous programming is a way of writing code that allows a program to do multiple tasks at the same time.


// Synchronous Programming in Dart
// In synchronous programming, the program is executed line by line, one at a time.
// Synchronous means that a task needs to be solved before proceeding to the next one.

// In asynchronous programming, program execution continues to the next line without waiting to complete other work.
// It simply means, dont wait.
// It represents the task that doesn't need to be solved before proceeding to the next one.
// Asynchronous programming improves the responsiveness of the program.

// Asynchronous is needed:
  // To fetch data from the internet
  // To write something to database
  // To execute a time consuming task
  // To read data from a file
  // To download a file

// Such asynchronous operations usually take a long time to complete, so it usually provides results in the form of a 'Future'.


// Future in Dart
// In dart, 'Future' represents a value or error that is not yet available.
// It is used to represent a potential value, or error, that will be available at some point in the future.
// Future is Dart's way of saying, "I'll give you a value later". 
// It is a promise that the value will arrive, but you can do other things in the mean time.


// Function that returns a future
Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => "Mark I made him a steak!");
}

// You can also create a future using Future.value() that will reutrn the Future<String> immediately.
Future<String> getUrName() {
  return Future.value("Bloseph Bloshart");
}


// How to use future in Dart
Future<String> getTheName() async {
  return Future.delayed(Duration(seconds: 2), () => "Fart");
}

void main() {
  getTheName().then((value) => print(value));
  print("Waiting for data (it will come in 2 seconds)");

  print("-" * 60);


  // Async and Await in Dart
  // Async or Await is a feature in Dart that allows us to write asynchronous code that looks and behave like synchronous code, making it easier to read.

  // When a function is marked async, it signifies that it will carry out some work that could take some time and will return a Future aobject that wraps the result of that work
  
  // The await keyword allows you to delay the execution of an async function until the awaited Future has finished.
  // It enables us to create code that appears to be synchronous but is actually asynchronous.
  // Await doesn't pause the whole program but just the function it is part of.

  // Example without async/await
  print("Start");
  middleFunction().then((data) => print(data));
  print("End");
  // Output: Start -> End -> Hello (after 5 seconds)

  
  print("-" * 60);


  // Example with async/await
  print("Start");
  getData();
  print("End");
  // Output: Start -> End -> Hello (after 5 seconds)
  // Output is the same as without async/await but code is easier to read and write
}

// Function example without async/await
Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}

// Functionn example with async/await
void getData() async {
  String data = await middleFunction(); // Waits here, but only for this function
  print(data);

  // Stream of data example
  await for (String name in getMyName()) {
    print(name); // Prints each name as it arrives
  }
  // Outputs one name per second
}


// Error handling is the same as regular code (using try-catch)


// Streams in Dart
// A stream is a sequence of asynchronous events representing multiple values that will arrive in the future.
// A stream has one or more listeners, and all listeners will receive the same value.
// A stream is like a Future, but for multiple values over time.
// Think of it as a flowing river of data.

// Creating a Stream using async* and yield
Stream<String> getMyName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Kunty Puth';
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark Henry Puhh';
  await Future.delayed(Duration(seconds: 1));
  yield 'Gargah Smith Economic State of the World';
}
// Here async* makes it an async generator and yield sends a value to the stream like 'pushing' data.

// You can also use Stream.fromIterable(['A', 'B']) for simple lists.