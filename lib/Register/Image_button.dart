import 'package:flutter/material.dart';
import 'package:flutter_dev/Register/Login.dart';
import 'package:flutter_dev/Register/Sigin.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

Widget ImageLogo() {
  return CircleAvatar(
    radius: 50.5,
    backgroundImage: AssetImage('assets/images/pic2.jpg'),
  );
}

Widget UserText() {
  return SizedBox(
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.person,
          color: Colors.amber[900],
          size: 35,
        ),
        label: Text('Username'),
      ),
    ),
  );
}

Widget PasswordText() {
  return SizedBox(
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.amber[900],
          size: 35,
        ),
        label: Text('Password'),
      ),
    ),
  );
}

Widget LogInButton(BuildContext context) {
  return SizedBox(
    width: 150,
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget SignUpButton(BuildContext context) {
  return SizedBox(
    width: 150,
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SiginScreen()),
        );
      },
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget LogSigUpButton(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      LogInButton(context),
      SizedBox(
        width: 15,
      ),
      SignUpButton(context),
    ],
  );
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 15,
          ),
          ImageLogo(),
          const SizedBox(
            height: 15,
          ),
          UserText(),
          const SizedBox(
            height: 15,
          ),
          PasswordText(),
          const SizedBox(
            height: 15,
          ),
          LogSigUpButton(context),
        ],
      ),
    );
  }
}
