import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodreads/constants.dart';
import 'package:goodreads/widgets/book_rating.dart';
import 'package:goodreads/widgets/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Stack(
             alignment: Alignment.topCenter,
            children: <Widget> [
              Container(
                height: size.height * .4,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fitWidth
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: size.height * .1,),
                      BookInfo(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * .4 - 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ChapterCard(
                      name: "Money",
                      chapterNumber: 1,
                      tag: "Copying any part of this website",
                      press: (){},
                    ),

                    ChapterCard(
                      name: "Money",
                      chapterNumber: 2,
                      tag: "Copying any part of this website",
                      press: (){},
                    ),
                    ChapterCard(
                      name: "Money",
                      chapterNumber: 3,
                      tag: "Copying any part of this website",
                      press: (){},
                    ),
                    ChapterCard(
                      name: "Money",
                      chapterNumber: 4,
                      tag: "Copying any part of this website",
                      press: (){},
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              )
            ],
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
                          TextSpan(text: "You might also\n"),
                          TextSpan(text: "read..",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 20,),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 24,top: 24,right: 150),
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: Color(0xFFFFF8F9)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                    text: TextSpan(
                                        style: TextStyle(color: kBlackColor),
                                        children: [TextSpan(text: "How To Win Friends & Influence\n",
                                            style: TextStyle(fontSize: 16)
                                        ),
                                          TextSpan(text: "Dulanjali Senarathna",
                                              style: TextStyle(color: kLightBlackColor)
                                          )
                                        ]
                                    )
                                ),
                                Row(
                                  children: <Widget>[
                                    BookRating(score: 4.9,),
                                    SizedBox(width: 10,),
                                    Expanded(child: RoundedButton(
                                      text: "Read",
                                      verticalPadding: 10,
                                    ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset("assets/images/book-3.png",
                            width: 100,
                          )
                      )
                    ],
                  )
                ],
              ),
            ),


            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name,tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    Key key, this.name, this.tag, this.chapterNumber, this.press,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding:
      EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84)
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [TextSpan(
                text: "Chapter $chapterNumber : $name\n",
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold
                )
              ),
                TextSpan(
                  text: tag,
                  style: TextStyle(
                    color: kLightBlackColor
                  )
                )
              ]
            ),
          ),
          Spacer(),
          IconButton(
              icon: Icon(
                  Icons.arrow_forward_ios,
              size: 18,
              ),
              onPressed: press)
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text("Crushing",
                style: Theme.of(context).textTheme.headline5,
            ),
              Text("& Influence",
                style: Theme.of(context).textTheme.headline5
                .copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text("There are some stereotypes that are used in daily life, at work, at school, in the hospital and many more. If we are just learning English, learning these stereotypes will add fluency.",
                        maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor
                          ),
                        ),
                        SizedBox(height: 5,),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                        )
                      ],
                    ),

                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.favorite_border)
                          , onPressed: () {}),
                      BookRating(score: 4.9,)
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
       Image.asset("assets/images/book-1.png",
        height: 200,width: 120,)
      ],
    );
  }
}
