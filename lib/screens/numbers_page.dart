import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/numbers.dart';
class numbersPage extends StatelessWidget {
  final List<item_data> Numbers = const [
    item_data(img:'assets/images/numbers/number_one.png' , jpname: 'ichi', enname: 'one',sound: 'sounds/numbers/number_one_sound.mp3'),
    item_data(img:'assets/images/numbers/number_two.png' , jpname: 'Ni', enname: 'two',sound: 'sounds/numbers/number_two_sound.mp3'),
    item_data(img:'assets/images/numbers/number_three.png' , jpname: 'San', enname: 'three',sound: 'sounds/numbers/number_three_sound.mp3'),
    item_data(img:'assets/images/numbers/number_four.png' , jpname: 'Shi', enname: 'four',sound: 'sounds/numbers/number_four_sound.mp3'),
    item_data(img:'assets/images/numbers/number_five.png' , jpname: 'Go', enname: 'five',sound: 'sounds/numbers/number_five_sound.mp3'),
    item_data(img:'assets/images/numbers/number_six.png' , jpname: 'Roku', enname: 'six',sound: 'sounds/numbers/number_six_sound.mp3'),
    item_data(img:'assets/images/numbers/number_seven.png' , jpname: 'Sebun', enname: 'seven',sound: 'sounds/numbers/number_seven_sound.mp3'),
    item_data(img:'assets/images/numbers/number_eight.png' , jpname: 'Hachi', enname: 'eight',sound: 'sounds/numbers/number_eight_sound.mp3'),
    item_data(img:'assets/images/numbers/number_nine.png' , jpname: 'Kyu', enname: 'nine',sound: 'sounds/numbers/number_nine_sound.mp3'),
    item_data(img:'assets/images/numbers/number_ten.png' , jpname: 'ju', enname: 'ten',sound: 'sounds/numbers/number_ten_sound.mp3'),
    ];
  const numbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text('Numbers',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: Numbers.length,
        itemBuilder: (context,index) {
          return item(number: Numbers[index],color: Color(0xffEF9253),);
        },
        ),
      );
  }
    // List<item> getlist (List<numbers> Numbers){
    //   List<item>itemsList = [];
    //   for(int i = 0 ; i < Numbers.length ;i++){
    //     itemsList.add(item(number: Numbers[i]));
    //   }
    //   return itemsList;
    // }
}


