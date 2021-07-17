import 'package:flutter/material.dart';
import 'package:goodreads/screens/details_screen.dart';
import 'package:goodreads/widgets/book_rating.dart';
import 'package:goodreads/widgets/reading_card_list.dart';
import 'package:goodreads/widgets/two_side_rounded_button.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   var  size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "what are you \n reading"),
                        TextSpan(
                          text: "today?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                        )
                      ],
                    ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Dulanjali Dilshani",
                          rating: 4.9,
                          pressDetails: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context){
                                  return DetailsScreen();
                                },
                                ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/book-2.png",
                          title: "Top 10 Business",
                          auth: "Herman Joel",
                          rating: 4.7,
                        ),
                        SizedBox(width: 30,)
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(text: "day",
                              style: TextStyle(fontWeight: FontWeight.bold)
                              )
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText
                          (text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: "Continue"),
                            TextSpan(text: "reading...",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]
                        ) ,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              )
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Crushing & Influence",
                                              style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                              Text("Dulanjali Senarathna",
                                              style: TextStyle(
                                                color: kLightBlackColor
                                              ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text("Chapter 2 of 10 ",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: kLightBlackColor
                                                ),
                                                ),
                                              ),
                                              SizedBox(height: 5,)
                                            ],
                                        ),
                                        ),
                                        Image.asset("assets/images/book-1.png",
                                        width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  )
                ],
              ),
    ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  height: 205,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom:0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 24,
                              top: 24,
                              right: size.width * .35),
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA).withOpacity(.45),
                            borderRadius: BorderRadius.circular(29)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Sri Lankan Time Best For 12th of July ",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: kLightBlackColor
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("How to win\n Friends and Influence",
                                style: Theme.of(context).textTheme.headline6 ,
                              ),
                              Text("Dulanjali Dilshani",
                              style: TextStyle(color: kLightBlackColor) ,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: <Widget>[
                                  BookRating(score: 4.9,),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child :Text(
                                      "A complete sentence must have, at minimum, three things: a subject, verb, and an object..",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: kLightBlackColor
                                      ),
                                    )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                          top: 0,
                          child: Image.asset(
                              "assets/images/book-3.png",
                            width: size.width* .37,
                          ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          height: 40,
                          width: size.width * .3,
                          child: TwoSideRoundedButton(
                            text: "Read",
                            radios: 24,
                            press: (){},
                          ),
                        ),
                      )
                    ],
                  ),
                );
  }
}


