import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_1_project/custom_button.dart';
import 'package:task_1_project/custom_text.dart';

class Date {
  final String title;
  final String description;
  final String imageUrl_1;
  final String imageUrl_2;

  Date({
    required this.title,
    required this.description,
    required this.imageUrl_1,
    required this.imageUrl_2,
  });
}

class PView extends StatefulWidget {
  const PView({Key? key}) : super(key: key);

  @override
  State<PView> createState() => _PViewState();
}

class _PViewState extends State<PView> {
  final _controller = PageController();
  final List<Date> myData = [
    Date(
      imageUrl_1: 'assets/image_2.png',
      imageUrl_2: 'assets/sammy_bicycle_courier_delivering_food.png',
      title: 'Get food delivery to your drop step asps ',
      description: 'we have young and professional delivery \n'
          ' team that will bring your food as soon as \n possible to your doorstep ',
    ),
    Date(
        imageUrl_1: 'assets/image_2.png',
        imageUrl_2: 'assets/sammy_done.png',
        title: 'Buy any food from your favourite restaurant ',
        description: 'We are constantly adding your favourite '
            ' \n restaurant throughout the territory and around '
            ' \n your area carefully selected  '),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: myData
              .map((item) => Container(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /* Image.asset('assets/image_2.png'),
                          Image.asset('assets/sammy_bicycle_courier_delivering_food.png'),*/
                          SizedBox(
                              width: 130, child: Image.asset(item.imageUrl_1)),
                          SizedBox(
                              width: 300, child: Image.asset(item.imageUrl_2)),
                          const SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              item.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pop'),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              item.description,
                              style: const TextStyle(
                                fontFamily: 'Pop',
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SmoothPageIndicator(
                            controller: _controller,
                            count: 2,
                            effect: const ExpandingDotsEffect(
                              activeDotColor: Colors.yellow,
                              dotHeight: 8,
                              dotWidth: 8,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              child: const CustomButton(
                                buttonColor: Colors.teal,
                                buttonText: 'Get Started',
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CustomText(
                                    text: 'Does not have any account ?',
                                    textColor: Colors.black54),
                                CustomText(
                                  text: 'Sign up',
                                  textColor: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
