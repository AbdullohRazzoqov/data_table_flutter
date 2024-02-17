import 'package:data_table/screen/table.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

List<List> item = [
  [
    1,
    'Bolim',
    'Bolim',
    'Category',
    '2024-02-12 12:00',
    'Shaxs',
    'Status',
    '2024-02-12 10:00',
    'Утверждено фин отделом',
  ]
];
List<String> catigoryName = [
  'Номер заявки',
  'Дата',
  'Организация',
  'Подразделение',
  'Категория',
  'Заявитель',
  'Закупщик',
  'Срок',
  'Статус'
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DataTableFlutter(columns: [
          'Name',
          'Age'
        ], rows: [
          [
            'Abdulloh',
            '22',
          ]
        ]));
  }
}
