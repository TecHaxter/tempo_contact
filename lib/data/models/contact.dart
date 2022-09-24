class Contact {
  int? id;
  String? imageUrl;
  String? firstName;
  String? lastName;
  String? email;
  String? contactNumber;
  int? age;
  String? dob;
  double? salary;
  String? address;
  DateTime? lastCalled;

  Contact({
    this.id,
    this.imageUrl,
    this.firstName,
    this.lastName,
    this.email,
    this.contactNumber,
    this.age,
    this.dob,
    this.salary,
    this.address,
    this.lastCalled,
  });

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    age = json['age'];
    dob = json['dob'];
    salary = json['salary'];
    address = json['address'];
    lastCalled = json['lastCalled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['contactNumber'] = contactNumber;
    data['age'] = age;
    data['dob'] = dob;
    data['salary'] = salary;
    data['address'] = address;
    data['lastCalled'] = lastCalled;
    return data;
  }
}
