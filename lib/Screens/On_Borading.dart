import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poonji/Screens/screens.dart';
import 'package:poonji/widgets/Slider.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentSliderIndex = 0;
  @override
  void initState() {
    super.initState();

    slides = getSliders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        onPageChanged: (val) {
          currentSliderIndex = val;
        },
        itemBuilder: (context, index) {
          return Slider(
            imageAssetPath: slides[index].getImagepath(),
            text: slides[index].getTitle(),
            docs: slides[index].getDescription(),
          );
        },
      ),
      bottomSheet: currentSliderIndex != slides.length - 1
          ? Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Spacer(),
                  InkWell(
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ),
                          (route) => false);
                    },
                  ),
                  //Spacer(),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < slides.length; i++)
                        currentSliderIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false),
                    ],
                  ),
                  //Spacer(),
                  InkWell(
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      currentSliderIndex++;
                      if (currentSliderIndex == 3) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Dashboard(),
                            ),
                            (route) => false);
                      }
                    },
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}

class Slider extends StatelessWidget {
  final String imageAssetPath, text, docs;
  Slider({Key key, this.imageAssetPath, this.text, this.docs});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAssetPath),
            SizedBox(height: 20),
            Text(text),
            SizedBox(height: 12),
            Text(docs)
          ],
        ),
      ),
    );
  }
}

Widget pageIndexIndicator(bool isCurrentPage) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[200],
          borderRadius: BorderRadius.circular(12)));
}
