import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/numbers.dart';
class item extends StatelessWidget {
  const item({super.key, required this.number ,required this.color });
  final item_data number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
                color: Color(0xffFFFCD6),
                child: Image.asset(number.img)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(number.jpname,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
              Text(number.enname,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              )
            ],
          ),
          Spacer(flex: 1,),
          IconButton(onPressed:(){
            AudioPlayer player = AudioPlayer();
            player.play(AssetSource(number.sound));
          } ,
              icon: Icon(Icons.play_arrow,color: Colors.white,size: 28,)
          )
        ],
      ),
    );
  }
}
