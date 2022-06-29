import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1_project/custom_button.dart';
import 'package:task_1_project/custom_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Welcome To Fashion Daily',
                textColor: Colors.black45,
                fontSize: 13,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CustomText(
                  text: 'Sign In',
                  textColor: Colors.black,
                  fontSize: 35,
                ),
                const SizedBox(
                  width: 130,
                ),
                Row(
                  children: const [
                    CustomText(
                      text: 'Help',
                      textColor: Colors.blue,
                      fontSize: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.help_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: 'Phone Number',
                  textColor: Colors.black54,
                  fontSize: 14,
                )),
          ),
          const SizedBox(
            height: 2,
          ),
          TextFormField(
            onEditingComplete: () {},
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: 'enter your phone number ',
              hintStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
              contentPadding: const EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.all(6),
            child: const CustomButton(
              textColor: Colors.white,
              buttonColor: Colors.blue,
              buttonText: 'Login',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: const [
                CustomText(
                    text: 'Does not have any account ?',
                    textColor: Colors.black54),
                CustomText(
                  text: 'Register now',
                  textColor: Colors.blue,
                ),
              ],
            ),
          ),
          const CustomText(
            text: 'Use the application according to policy rules.'
                ' \nAny kind of violation will be subject to sanction',
            textColor: Colors.black54,
            textHeight: 1.3,
          )
        ],
      ),
    );
  }
}
