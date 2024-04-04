import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {

  late final AnimationController _controller;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(title: const Text('image screeen')),
      body: ListView(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Network Image' ),
                Image.network('https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg' , width: 200,height: 200,),
              ],
            ),
          ),
    Container(
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Text('jpg img ' ),
    Image.asset('assets/image/flower2.jpeg' , width: 200,height: 200,),
    ],
    ),
    ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('png img ' ),
                Image.asset('assets/image/redflower.png' , width: 200,height: 200,),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('svg img' ),
                SvgPicture.asset('assets/image/elephant.svg' , width: 200,height: 200,
                  fit: BoxFit.fitHeight ,
                  semanticsLabel: 'SVG' , excludeFromSemantics: true ,clipBehavior: Clip.antiAlias,
                    allowDrawingOutsideViewBox: true , ),
              ],
            ),
          ),
          Container(
            color : Colors.yellow,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Lottiefile' ),
                Lottie.asset('assets/lottieFiles/Animation1 - 1707118583564.json',
                    height: 200,width: 200,fit: BoxFit.cover,
                  alignment: Alignment(50, 50),
                 reverse: true,
                 animate: true,
                  repeat: true,

                  delegates: LottieDelegates(
                    text: (initialText) => '**$initialText**',
                    values: [
                      ValueDelegate.color(
                        const ['Shape Layer 1', 'Rectangle', 'Fill 1'],
                        value: Colors.black87,
                      ),
                      ValueDelegate.opacity(
                        const ['Shape Layer 1', 'Rectangle'],
                        callback: (frameInfo) => (frameInfo.overallProgress * 100).round(),
                      ),
                      ValueDelegate.position(
                        const ['Shape Layer 1', 'Rectangle', '**'],
                        relative: const Offset(100, 200),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Lottiefile' ),
                Lottie.asset('assets/lottieFiles/Animation2 - 1707118816054 (1).json',
                    height: 200,width: 200,fit: BoxFit.cover,
                 reverse: true,
                 controller: _controller,
                  onLoaded: (composition) {
                    _controller.duration = composition.duration;
                  },

                 // animate: true,
                //  repeat: false,
                   // delegates: LottieDelegates(
                   //   text: (initialText) => '**$initialText**',
                   //   values: [
                   //     ValueDelegate.color(
                   //       const ['Shape Layer 1', 'Rectangle', 'Fill 1'],
                   //       value: Colors.black87,
                   //     ),
                   //     ValueDelegate.opacity(
                   //       const ['Shape Layer 1', 'Rectangle'],
                   //       callback: (frameInfo) => (frameInfo.overallProgress * 100).round(),
                   //     ),
                   //     ValueDelegate.position(
                   //       const ['Shape Layer 1', 'Rectangle', '**'],
                   //       relative: const Offset(100, 200),
                   //     ),
                   //   ],
                   // ),

                ),
              ],
            ),
          ),
          //
          // Text('svg img ' , textAlign: TextAlign.center),
          // SizedBox(height: 20,),
          // Container(
          //   height: 50,
          //   width: 200,
          //   child: SvgPicture.asset('assets/image/elephant.svg' , height: 40 , width: 30,color: Colors.pinkAccent,),
          // ),

        ],
      ),
    );
  }
}
