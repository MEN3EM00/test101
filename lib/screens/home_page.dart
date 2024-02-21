import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/screens/family_mebmers_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text('toku'
          ,style: (
              TextStyle(
                  color: Colors.white
              )
          ),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          category(
          text: 'numbers',
          color : Color(0xffEF9253),
            onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return numbersPage();
            }));
            },
          ),
          category(
              text: 'family members',
              color : Color(0xff558B37),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return familymemberspage();
                  }));
            },
          ),
          category(
              text: 'colors',
              color : Color(0xff79359f),
            onTap: (){

            },
          ),
          category(
              text : 'phrases',
              color : Color(0xff50ADC7),
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}

