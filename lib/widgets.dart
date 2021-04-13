import 'package:flutter/material.dart';class GradientButtonWidget extends StatelessWidget {  final String textTitle;  final Function onTap;  final double opacity;  final IconData iconData;  final Color color1, color2,textColor, iconColor;  const GradientButtonWidget({Key key, this.textTitle, this.onTap,    this.iconData, this.opacity, this.color1,    this.color2, this.textColor, this.iconColor}) : super(key: key);  @override  Widget build(BuildContext context) {    return GestureDetector(      onTap:onTap,      child: Container(        margin: EdgeInsets.symmetric(horizontal: 10),        height: 50,        decoration: BoxDecoration(            gradient: LinearGradient(                begin: Alignment.bottomLeft,                end: Alignment.topRight,                colors: [                  color1,                  color2,                ]            ),            border: Border.all(color: Colors.white,width: 0.5),            borderRadius: BorderRadius.circular(25)        ),        child: Center(            child: Container(                margin: EdgeInsets.symmetric(horizontal: 20),                child: Row(                  mainAxisAlignment: MainAxisAlignment.spaceBetween,                  children: [                    Opacity(                        opacity: opacity,                        child: Icon(iconData,size: 20,color: iconColor,)),                    Text(textTitle,style: TextStyle(                      color: textColor,fontWeight: FontWeight.w700,                      fontSize: 18,letterSpacing: 0.5,                    ),),                    Opacity(                        opacity: 0,                        child: Icon(Icons.done,size: 20,color: Colors.white,)),                    //Icon(icon)                  ],                ))        ),      ),    );  }}