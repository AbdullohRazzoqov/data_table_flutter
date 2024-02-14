import 'dart:math' as math;
import 'package:data_table/main.dart';
import 'package:flutter/material.dart';

class Table extends StatelessWidget {
  Table({super.key, required this.columnTableData});
  List columnTableData;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DataTable(columns: [
          ...List.generate(
            columnTableData.length,
            (index) => DataColumn(
              mouseCursor: MaterialStateMouseCursor.clickable,
              label: Text(
                columnTableData[index],
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF234182)),
              ),
            ),
          ),
        ], rows: [
          ...List.generate(
            100,
            (indexM) => DataRow(
              color: MaterialStateColor.resolveWith((states) =>
                  indexM % 2 == 0 ? Color(0xFFF8F8F8) : Color(0xFFFCFBFB)),
              cells: [
                ...List.generate(catigoryName.length, (index) {
                  return DataCell(
                    Text(
                      '${index == 0 ? '' : item[0][index]} $indexM',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B2357)),
                    ),
                  );
                }),
              ],
            ),
          ),
        ])
      ],
    );
  }
}
