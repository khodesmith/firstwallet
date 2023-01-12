// ignore_for_file: prefer_const_constructors

import 'package:firstwallet/util/mybutton.dart';
import 'package:firstwallet/util/mycard.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Cards",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //cards + horizontal listview or PageView
            Container(
              height: 200,
              // color: Colors.redAccent,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5254.50,
                    cardNumber: 3443434343,
                    expiryMonth: 08,
                    expiryYear: 23,
                    color: Colors.purple[400],
                  ),
                  MyCard(
                    balance: 3124.50,
                    cardNumber: 2222333476,
                    expiryMonth: 12,
                    expiryYear: 26,
                    color: Colors.green[600],
                  ),
                  MyCard(
                    balance: 2996.50,
                    cardNumber: 7685432190,
                    expiryMonth: 10,
                    expiryYear: 26,
                    color: Colors.amber[400],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            //dots indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey),
            ),
            SizedBox(height: 15),

            //3 buttons: send pay bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    color: Colors.purple[600],
                    logo: "lib/icons/send-money.png",
                    buttonName: "Send",
                  ),
                  //pay button
                  MyButton(
                    logo: "lib/icons/credit-card.png",
                    buttonName: "Pay",
                    color: Colors.white,
                  ),
                  // bills button
                  MyButton(
                    logo: "lib/icons/bill.png",
                    buttonName: "Bills",
                    color: Colors.blue[400],
                  )
                ],
              ),
            )

            //column stats + transactions
          ],
        ),
      ),
    );
  }
}
