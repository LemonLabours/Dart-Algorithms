// ignore_for_file: avoid_print

void main() {
//1-Create a list of names and print all names using list.
  List<String> names = ['John', 'Jane', 'Alice', 'Bob', 'Emily'];

  for (String name in names) {
    print(name);
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//2-Create a set of fruits and print all fruits using loop.
  Set<String> fruits = {'apple', 'banana', 'orange', 'grape', 'mango'};

  for (String fruit in fruits) {
    print(fruit);
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//3-Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];

  // Adding names of the days
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  // Printing all days
  for (String day in days) {
    print(day);
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4-Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.

  List<String> friendNames = [
    'Alice',
    'Bob',
    'Alex',
    'John',
    'Andrew',
    'Emily',
    'David'
  ];

  // Finding names that start with 'A'
  Iterable<String> namesStartingWithA =
      friendNames.where((name) => name.startsWith('A'));

  print("Names starting with A:");
  for (String name in namesStartingWithA) {
    print(name);
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//5-Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
  Map<String, dynamic> person = {
    'name': 'John Doe',
    'address': '123 Main Street',
    'age': 30,
    'country': 'USA'
  };

  // Updating the country
  person['country'] = 'Canada';

  // Printing all keys and values
  person.forEach((key, value) {
    print('$key: $value');
  });
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//6-Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  Map<String, String> contacts = {
    'John': '1234567890',
    'Mike': '2345678901',
    'Anna': '3456789012',
    'Dave': '4567890123'
  };

  // Finding all keys with a length of 4
  Iterable<String> keysLengthFour =
      contacts.keys.where((key) => key.length == 4);

  print("Keys with length 4:");
  for (String key in keysLengthFour) {
    print(key);
  }
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}
