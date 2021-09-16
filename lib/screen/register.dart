import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          backgroundColor: Colors.amber[900],
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurName(),
                txtEmail(),
                txtPassword(),
                txtConfirmPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Name',
          icon: Icon(Icons.person),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please input your name';
          } else if (value.length < 2) {
            return 'Minimum Character is 2';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSurName() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Surname',
          icon: Icon(Icons.person_add),
          hintText: 'Input your lastname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please input your name';
          } else if (value.length < 2) {
            return 'Minimum Character is 2';
          }
        },
        onSaved: (value) {
          surname = value;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email),
          hintText: 'Input your email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'Invalid email form';
          } else if (!(value.contains('.'))) {
            return 'Invalid email form';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
        validator: (value) {
          password = value;
          if (value!.isEmpty) {
            return 'Enter your new password';
          } else if (value.length < 8) {
            return 'Password must be atleast 8 characters long';
          }
        },
        onSaved: (value) {
          value = password;
        },
      ),
    );
  }

  Widget txtConfirmPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 50),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          icon: Icon(Icons.lock),
          hintText: 'Please Re-Enter your password',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Re-Enter New Password';
          } else if (value.length < 8) {
            return 'Password must be atleast 8 characters long';
          } else if (value != password) {
            return 'Password must be the same as above';
          }
        },
        onSaved: (value) {
          value = password;
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amber[900],
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        shape: StadiumBorder(),
      ),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print(
              "Name: $name Surname: $surname Email: $email Password: $password");
        }
      },
      child: Text('Submit'));
}
