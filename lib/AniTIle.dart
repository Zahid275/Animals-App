import 'package:flutter/material.dart';

class AniTile extends StatelessWidget {
  String imgPath;
  String aniName;
  void Function()? onPressed;
  void Function()? onAudioPlay;

  AniTile({super.key, required this.aniName, required this.imgPath,this.onPressed,required this.onAudioPlay});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
          child: InkWell(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(11),
                boxShadow: const [BoxShadow(blurRadius: 2)]
              ),

                width: double.maxFinite,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                imgPath,)
                          ),
                        ),

                        const SizedBox(width: 25,),
                        Text(aniName,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                      ],
                    ),

                 Padding(
                   padding: const EdgeInsets.only(right: 20.0),
                   child: IconButton(onPressed: onAudioPlay, icon: const Icon(Icons.volume_up,size: 35,),),
                 )

                  ],
                )),
          ),
        );
  }
}
