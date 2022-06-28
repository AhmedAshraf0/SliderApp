import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable{
  final String name;
  final String imageUrl;

  Category({
    required this.name , required this.imageUrl
});
  @override
  List<Object?> get props {
    return [name , imageUrl];
  }

  static List<Category> categories = [
    Category(name: "Get Food Delivery", imageUrl: "images/first.jpg"),
    Category(name: "Buy Any Food", imageUrl: "images/second.jpg"),
    Category(name: "Accomplished", imageUrl: "images/third.jpg"),
  ];
}