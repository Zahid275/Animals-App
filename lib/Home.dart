import 'package:animals_info/AniTIle.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class  Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() {
    return HomeState();
  }

}
class HomeState extends State<Home>{

  List AnimalsName = ["Camel","Cat","Cow","Crocodile","Deer","Dog","Dolphin","Duck","Elephant","Fox","Giraffe","Hippo","Lion","Monkey","Panda","Parrot","Rhino","Squirrel","Tiger","Turtle","Wolf","Zebra"];
  List AnimalsDesList = [
    "A large, long-legged mammal with distinctive humps, adapted to deserts.\n\nFacts: Camels can go weeks without water and drink up to 40 gallons at once. Their humps store fat for water and energy. They are known for their endurance and resilience in harsh environments.",
    "A small, typically furry, carnivorous mammal.\n\nFacts: Cats are known for their agility, playfulness, and independence. They have excellent night vision and can sleep for up to 16 hours a day.",
    "A large, domesticated, hooved, herbivorous mammal.\n\nFacts: Cows are ruminants, meaning they have a four-chambered stomach to digest plant-based foods. They are social animals and live in herds.",
    "A large reptile with a powerful jaw and scaly skin.\n\nFacts: Among the oldest reptiles, with the strongest bite. Can remain submerged for up to an hour.",
    "A wild or domesticated, hoofed, herbivorous mammal.\n\nFacts: Deer are agile and fast, with some species reaching speeds of up to 30 miles per hour. They have a highly developed sense of smell and can jump high and long distances.",
    "A domesticated, carnivorous mammal that is often kept as a pet.\n\nFacts: Dogs are highly social animals and are known for their loyalty and ability to be trained. They have a powerful sense of smell and can hear sounds that are too high for humans to hear.",
    "A highly intelligent, aquatic, carnivorous mammal.\n\nFacts: Dolphins are known for their playful and social behavior. They communicate using clicks and whistles and are capable of swimming at speeds of up to 25 miles per hour.",
    "A waterfowl with a broad beak and webbed feet.\n\nFacts: Excellent swimmers, can fly up to 60 miles per hour, and migrate long distances.",
    "A large herbivorous mammal with a trunk, tusks, and a highly developed brain.\n\nFacts: Elephants are among the smartest animals, forming strong social bonds and living up to 70 years in the wild." ,
    "A small, carnivorous mammal with a bushy tail and sharp teeth.\n\nFacts: Foxes are known for their cunning and adaptability. They are omnivores and can be found in a variety of habitats, from forests to grasslands.",
    "A tall, herbivorous mammal with a long neck and legs.\n\nFacts: Giraffes are the tallest mammals on Earth, with some males reaching heights of over 18 feet. They have a unique pattern of spots or patches on their coats and can run at speeds of up to 35 miles per hour.",
    "A bulky, herbivorous mammal with a huge mouth.\n\nFacts: Stays in water to keep cool. Can run up to 20 miles per hour on land and is highly dangerous.",
    "A large, carnivorous mammal with a shaggy mane and powerful jaws.\n\nFacts: Lions are known as the 'king of the jungle' and are social animals that live in prides. They are skilled hunters and can reach speeds of up to 50 miles per hour.",
    "A primate known for agility and social behavior.\n\nFacts: Highly intelligent, uses tools, and communicates with sounds. Often seen swinging from trees.",
    "A large bear-like mammal with black and white coloring, primarily feeding on bamboo.\n\nFacts: Pandas spend up to 14 hours a day eating bamboo and need about 28 pounds daily. They have a wrist bone that acts like a thumb for gripping bamboo.",
    "A colorful, intelligent, and social bird.\n\nFacts: Parrots are known for their ability to mimic human speech and other sounds. They are highly social birds that live in flocks and are found in a variety of habitats, from rainforests to grasslands.",
    "A large, thick-skinned herbivore with one or two horns on its snout.\n\nFacts: Rhinos have poor eyesight but an excellent sense of smell and hearing. They can weigh up to 2,200 pounds and can charge at speeds of up to 35 miles per hour when threatened.",
    "A small rodent with a bushy tail, known for agility and storing food.\n\nFacts: Skilled climbers and jumpers with keen memory for locating food caches.",
    "A large, carnivorous mammal with a distinctive orange and black stripe pattern.\n\nFacts: Tigers are apex predators and are known for their power and agility. They are solitary animals and have a highly developed sense of territory and hunting skills.",
    "A reptile with a hard shell, known for slow movement and longevity.\n\nFacts: Turtles can live over 100 years and are adapted to both land and water. Some species can hold their breath underwater for hours.",
    "A large, carnivorous mammal that is closely related to dogs.\nFacts: Wolves are highly social animals that live in packs. They are skilled hunters and can reach speeds of up to 40 miles per hour. They are also known for their howling, which is a form of communication.",
    "A black and white striped, herbivorous mammal. \n Facts: Zebras are known for their distinctive stripes, which act as camouflage in their grassland habitats. They are social animals that live in herds and are skilled runners, able to reach speeds of up to 40 miles per hour.",
  ];


  AudioPlayer audioPlayer = AudioPlayer();

  animalDes(index){
    showDialog(

        context: context, builder: (context) {
          return Dialog(
                  child: Container(
                    height: 500,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(11),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${AnimalsName[index]}",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("${AnimalsDesList[index]}",style: const TextStyle(fontSize: 20,color: Colors.black,fontFamily: "georgia",fontStyle: FontStyle.normal),),
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                              onPressed: (){

                                Navigator.pop(context);
                              }, child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back,color: Colors.white,weight: 50,size: 25,),
                              Text("Back",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                            ],
                          )),
                        )
                      ],
                    ),
      ));

        },);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animals App",style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white),),
        backgroundColor: Colors.green,

      ),
      body: Container(
        height: double.infinity,
        color: Colors.green[200],

        child: ListView.builder(
          itemCount: AnimalsName.length,
          itemBuilder: (context, index) {
          return AniTile(
            onAudioPlay: ()async{
             await audioPlayer.play(AssetSource("sounds/${AnimalsName[index].toString().toLowerCase()}.mp3"));

            },
            onPressed: (){
              animalDes(index);
              },
              aniName: AnimalsName[index],
              imgPath: "assets/images/${AnimalsName[index].toString().toLowerCase()}.jpg");
        },)
          ));







    }}
