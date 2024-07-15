import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class audio extends StatelessWidget{


 AudioPlayer Ap = AudioPlayer();

  audio({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: IconButton  (
            onPressed: ()async{

             await Ap.play(AssetSource("sounds/dog.mp3"));
              },
            icon: const Icon(Icons.audiotrack_rounded,size: 100,),
          ),
        ),
      ),
    );
  }


}