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
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  _tapOnButton = true;
                });
                await Future.delayed(Duration(milliseconds: 1200));
                Navigator.pushNamed(context, MyRoutes.homePage);
              },
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
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: _tapOnButton
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(5)),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homePage);
            //   },
            //   child: Text('Login'),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(150, 40),
            //     textStyle: TextStyle(
            //       fontSize: 24,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      color: Colors.white,
    );
  }
}
