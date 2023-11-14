import 'package:flutter/material.dart';



class TextSized extends StatelessWidget {
  final String text;
  final Color color;
  const TextSized({Key key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sizeText = _sizeText(text);
    return Container(
      child: Column(
        children: [
          Text(text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
            maxLines: 1,
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              for (int i =0; i<sizeText.width/5; i++)
                i. isEven? Container(
                  width: 5,
                  color: color,
                  height: 2,
                ): Container(
                  width: 5,
                  color: Colors.white,
                  height: 2,
                )
            ],
          )
        ],
      ),
    );
  }

  Size _sizeText(String text){
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      textDirection: TextDirection.ltr,
      maxLines: 1
    )..layout(maxWidth: double.infinity, minWidth: 0);

    return textPainter.size;
  }
}
