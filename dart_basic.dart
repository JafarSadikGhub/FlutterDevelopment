//1
int addNumbers(int num1, int num2) {
  return num1 + num2;
}
​
void main() {
  print(addNumbers(1, 2));
}
​//2
int addNumbers(int num1, int num2) {
  return num1 + num2;
}
​
void main() {
  var firstResult = addNumbers(1, 2);
  firstResult= addNumbers(1, 1);
  print(firstResult);
  print(firstResult + 1); 
}
//Variable type- double, int, var
//3.
class Person
{
  String name = "Max";
  int age=30;
}
int addNumbers(int num1, int num2) {
  return num1 + num2;
}
​
void main() {
  var p1 = new Person(); 
  var p2 = new Person();
  p2.name= 'Jafar';
  print(p1.age);
  print(p1.name);
  print(p2.name);
  print(addNumbers(1, 2));
}
​//4.
class Person
{
  String name;
  int age;
  
  Person({String name, int age = 30})
  {
    //name = inputName;
    //age = inputAge;
    //Curly braces in argument for multiple optional argument that could be used in object or could not be used
    this.name = name;
    this.age = age;
  }
}
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  var p1 = new Person(name: 'Max',age: 30); 
  var p2 = new Person(name: 'Manu', age: 31);
  //p2.name= 'Jafar';
  print(p1.age);
  print(p1.name);
  print(p2.name);
  print(p2.age);
  print(addNumbers(1, 2));
}
