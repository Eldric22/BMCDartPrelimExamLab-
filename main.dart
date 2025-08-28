import 'dart:io';

void main() {
  print("=== Grade ===");
  
  print("Enter your First name:");
  String? firstName = stdin.readLineSync();
  
  print("Enter your Last name:");
  String? lastName = stdin.readLineSync();
  
  print("Enter your Email:");
  String? email = stdin.readLineSync();
  
  print("\n=== Registration Summary ===");
  print("Name: ${firstName} ${lastName}");
  print("Email: ${email}");
  
  // Simple validation
  if (firstName != null && lastName != null && email != null) {
    print("Registration successful!");
  } else {
    print("Please provide all required information.");
  }

  print("=== Calculator ===");
  
  print("Enter First number:");
  int? num1 = int.parse(stdin.readLineSync()!);
  
  print("Enter Second number:");
  int? num2 = int.parse(stdin.readLineSync()!);
  
  // This part is to calculate the grade from assigment score, midterm score, and final exam score.
  print("\n=== Results ===");
  print("Addition: ${num1 + num2}");
  print("Subtraction: ${num1 - num2}");
  print("Multiplication: ${num1 * num2}");
  print("Division: ${num1 / num2}");
  print("Integer Division: ${num1 ~/ num2}");
  print("Modulus: ${num1 % num2}");

  print("=== Grade Calculator ===");
  
  print("Enter assignment score (0-100):");
  double assignment = double.parse(stdin.readLineSync()!);
  
  print("Enter midterm score (0-100):");
  double midterm = double.parse(stdin.readLineSync()!);
  
  print("Enter final exam score (0-100):");
  double finalExam = double.parse(stdin.readLineSync()!);
  
  // Calculation weighted average
  double finalGrade = (assignment * 0.3) + (midterm * 0.3) + (finalExam * 0.4);
  
  print("\n=== Results ===");
  print("Assignment: ${assignment.toStringAsFixed(1)}%");
  print("Midterm: ${midterm.toStringAsFixed(1)}%");
  print("Final Exam: ${finalExam.toStringAsFixed(1)}%");
  print("Final Grade: ${finalGrade.toStringAsFixed(1)}%");
  
  // Determine letter grade. Where 60% is a passing grade
  String letterGrade;
  if (finalGrade >= 90) {
    letterGrade = "Passed";
  } else if (finalGrade >= 80) {
    letterGrade = "Passed";
  } else if (finalGrade >= 70) {
    letterGrade = "Passed";
  } else if (finalGrade >= 60) {
    letterGrade = "Failed";
  } else {
    letterGrade = "Failed";
  }
  
  print("Letter Grade: $letterGrade");
}