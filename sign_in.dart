import 'package:flutter/material.dart';
import 'package:harsh_signinpage/custom_widget/custom_buton.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: Column(children: [
            Center(
              child: Image.asset(
                'images/person.jpeg',
                height: 80,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Create your account',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'where your conversations will live',
                        style: TextStyle(color: Colors.grey[200], fontSize: 12),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          // counterStyle: TextStyle(color: Colors.white),
                          hintText: 'matrix.org',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              side: const BorderSide(
                                  color: Colors.green, width: 4))),
                      onPressed: () {},
                      child: const Text('EDIT')),
                )
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4.0)))),
            SizedBox(
              height: 10,
            ),
            TextField(
                maxLength: 8,
                decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    labelStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4.0)))),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[600]),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.grey[200]),
                    ))),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Or',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            MySubmitButton(
              onPressed: () {},
              buttonText: "continue with google",
              prefixIcon: 'images/google.png',
              color: Colors.white,
              textcolor: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            MySubmitButton(
              onPressed: () {},
              buttonText: "continue with facebook",
              prefixIcon: 'images/facebook.png',
              color: Colors.blue,
              textcolor: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            MySubmitButton(
              onPressed: () {},
              buttonText: "continue with GitHub",
              prefixIcon: 'images/github.png',
              color: Colors.black,
              textcolor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            MySubmitButton(
              onPressed: () {},
              buttonText: "continue with GitLab",
              prefixIcon: 'images/gitlab.png',
              color: Colors.black,
              textcolor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            MySubmitButton(
              onPressed: () {},
              buttonText: "continue with Apple",
              prefixIcon: 'images/apple.png',
              color: Colors.white,
              textcolor: Colors.black,
            )
          ]),
        ),
      ),
    );
  }
}
