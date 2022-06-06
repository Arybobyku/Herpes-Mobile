import 'dart:math';

import 'package:flutter/material.dart';
import 'package:herpes_identification/ui/UjiProgram/model_buah.dart';

class UjiProgram extends StatefulWidget {
  const UjiProgram({Key? key}) : super(key: key);

  @override
  _UjiProgramState createState() => _UjiProgramState();
}

class _UjiProgramState extends State<UjiProgram> {
  int selectedFruits = -1;
  Random rnd = Random();
  bool first = true;
  bool question = true;
  int min = 0;
  int max = 4;
  int randomValue = 0;
  bool useResult = false;
  @override
  Widget build(BuildContext context) {
    if(first){
      randomValue = min + rnd.nextInt(max - min);
      first = false;
    }
    List<ModelBuah> fruits = [
      ModelBuah(namaBuah: "Apel", photoBuah: "images/apel.jpg"),
      ModelBuah(namaBuah: "Anggur", photoBuah: "images/anggur.jpg"),
      ModelBuah(namaBuah: "Cherry", photoBuah: "images/cherry.jpg"),
      ModelBuah(namaBuah: "Pisang", photoBuah: "images/pisang.jpg"),
      ModelBuah(namaBuah: "Salak", photoBuah: "images/salak.jpg"),
    ];

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              if(selectedFruits!=-1)
              Column(
                children: [
                  if(useResult==true)
                  Text("YEYYY JAWABAN ANDA BENAR :):) itu adalah ${fruits[randomValue].namaBuah} \n ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  if(useResult==false)
                    Text("YAHH jawaban anda salah :(( seharusnya itu adalah ${fruits[randomValue].namaBuah}  \n ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                    showQuestion(fruits[randomValue]),
                  ],
              ),
             if(selectedFruits==-1 && question==false)
              ListView.builder(
                shrinkWrap: true,
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  var fruit = fruits[index];
                  return GestureDetector(
                    onTap: () {
                        setState(() {
                          selectedFruits = index;
                          if(randomValue==selectedFruits){
                              useResult = true;
                          }
                        });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.pink
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        fruit.namaBuah,
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  );
                },
              ),
              if(question)
              Column(
                children: [
                  showQuestion(fruits[randomValue]),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        question = false;
                      });
                    },
                    child: Text("Lanjut"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showQuestion(ModelBuah modelBuah){
    return  Container(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(modelBuah.photoBuah),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
