import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/numbers.dart';
class familymemberspage extends StatelessWidget {
  final List<item_data> Numbers = const [
    item_data(img:'assets/images/family_members/family_father.png' , jpname: 'ichi', enname: 'father',sound: 'sounds/family_members/father.wav'),
    item_data(img:'assets/images/family_members/family_mother.png' , jpname: 'Ni', enname: 'mother',sound: 'sounds/family_members/mother.wav'),
    item_data(img:'assets/images/family_members/family_grandfather.png' , jpname: 'San', enname: 'grand father',sound: 'sounds/family_members/grand father.wav'),
    item_data(img:'assets/images/family_members/family_grandmother.png' , jpname: 'Shi', enname: 'grand mother',sound: 'sounds/family_members/grand mother.wav'),
    item_data(img:'assets/images/family_members/family_daughter.png' , jpname: 'Go', enname: 'daughter',sound: 'sounds/family_members/daughter.wav'),
    item_data(img:'assets/images/family_members/family_son.png' , jpname: 'Roku', enname: 'son',sound: 'sounds/family_members/son.wav'),
    item_data(img:'assets/images/family_members/family_younger_brother.png' , jpname: 'y bro', enname: 'seven',sound: 'sounds/family_members/younger brohter.wav'),
    item_data(img:'assets/images/family_members/family_younger_sister.png' , jpname: 'y sis', enname: 'eight',sound: 'sounds/family_members/younger sister.wav'),
    item_data(img:'assets/images/family_members/family_older_brother.png' , jpname: 'o bro', enname: 'nine',sound: 'sounds/family_members/older bother.wav'),
    item_data(img:'assets/images/family_members/family_older_sister.png' , jpname: 'o sis', enname: 'ten',sound: 'sounds/family_members/older sister.wav'),
  ];
  const familymemberspage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text('Family members',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: Numbers.length,
        itemBuilder: (context,index) {
          return item(number: Numbers[index],color: Color(0xff558B37),);
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


