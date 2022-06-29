import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1_project/custom_button.dart';
import 'package:task_1_project/custom_text.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Icon(
                  Icons.arrow_circle_left,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
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
                  text: 'Register',
                  textColor: Colors.black,
                  fontSize: 35,
                ),
                const SizedBox(
                  width: 100,
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: 'Email',
                textColor: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onEditingComplete: () {},
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'enter your email ',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
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
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: 'Password',
                textColor: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onEditingComplete: () {},
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'password',
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
          ),
          Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.all(6),
            child: const CustomButton(
              textColor: Colors.white,
              buttonColor: Colors.blue,
              buttonText: 'Register',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomText(
                    text: 'Have any account ? ', textColor: Colors.black54),
                CustomText(
                  text: 'Sign here',
                  textColor: Colors.blue,
                ),
              ],
            ),
          ),
          const CustomText(
            text: 'By registering your account.you are agree to our  ',
            textColor: Colors.black54,
            textHeight: 1.3,
          ),
          const CustomText(
            text: 'Terms and conditions',
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
