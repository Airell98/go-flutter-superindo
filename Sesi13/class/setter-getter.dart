void main() {
  var p1 = Person();
  p1.person_full_name = 'airell jordan';
  p1.person_age = 120;

  print('p1 full_name: ${p1.person_full_name}');
  print('p1 age: ${p1.person_age}');
}

class Person {
  String fullName = '';
  double age = 0;

  set person_full_name(String name) {
    var nameSplit = name.split(' ');
    var capitalizedName = '';

    nameSplit.forEach((s) {
      capitalizedName += "${s[0].toUpperCase()}${s.substring(1, s.length)}";
      if (s != nameSplit[nameSplit.length - 1]) capitalizedName += ' ';
    });

    this.fullName = capitalizedName;
  }

  String get person_full_name {
    return this.fullName;
  }

  set person_age(double personAge) {
    if (personAge < 0 || personAge > 100) {
      print('Age has to be more than 0 and cannot be more than 100');
    } else {
      this.age = personAge;
    }
  }

  double get person_age {
    return this.age;
  }
}
