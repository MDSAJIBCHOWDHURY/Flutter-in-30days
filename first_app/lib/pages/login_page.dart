import 'package:first_app/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _name = '';
  var _tapOnButton = false;
  final _formKey = GlobalKey<FormState>();

  void moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _tapOnButton = true;
      });
      await Future.delayed(Duration(milliseconds: 1200));
      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        _tapOnButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome $_name',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        hintText: 'Enter User Name',
                      ),
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'User name must not be empty';
                        }
                         return  null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password must not be empty';
                        }
                         return  null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: _tapOnButton
                  ? BorderRadius.circular(50)
                  : BorderRadius.circular(5),
              child: InkWell(
                onTap: () => moveToHome(),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: _tapOnButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: _tapOnButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
      color: Colors.white,
    );
  }
}
