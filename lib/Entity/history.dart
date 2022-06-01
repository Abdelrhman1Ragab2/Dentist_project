import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History{
  String day;
  String state;
  Color color_State;
  bool can_confirm;

  History({ required this.day,required this.state,required this.color_State,required this.can_confirm});

}
List <History> List_History =[
  History(day: "today", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "tomorrow", state: "12 pm to 5 pm", color_State: Colors.grey,can_confirm: true),
  History(day: "1/5", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "2/5", state: "12 pm to 5 pm", color_State: Colors.grey,can_confirm: true),
  History(day: "3/5", state: "12 pm to 5 pm", color_State: Colors.grey,can_confirm: true),
  History(day: "4/5", state: "3 pm to 8 pm", color_State: Colors.grey,can_confirm: true),
  History(day: "5/5", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "6/5", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "7/5", state: "5 pm to 10 pm", color_State: Colors.grey,can_confirm: true),
  History(day: "8/5", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "9/5", state: "No appointment available", color_State: Colors.grey,can_confirm: false),
  History(day: "10/5", state: "4 pm to 6 pm", color_State: Colors.grey,can_confirm: true),



];

int history_index=0;




