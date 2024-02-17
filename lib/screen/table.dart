import 'dart:math' as math;
import 'package:data_table/main.dart';
import 'package:flutter/material.dart';

class DataTableFlutter extends StatelessWidget {
  DataTableFlutter(
      {super.key,
      required this.columns,
      this.columnStyle = const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      this.rowsStyle = const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF0B2357)),
      required this.rows});
  TextStyle columnStyle;
  TextStyle rowsStyle;
  List<String> columns;
  List<List<String>> rows;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          DataTable(
            columns: [
              ...List.generate(
                columns.length,
                (index) => DataColumn(
                  label: Text(
                    columns[index],
                    style: columnStyle,
                  ),
                ),
              ),
            ],
            rows: [
              ...List.generate(
                rows.length,
                (indexM) => DataRow(
                  color: MaterialStateColor.resolveWith(
                    (states) => indexM % 2 == 0
                        ? const Color(0xFFF8F8F8)
                        : const Color(0xFFFCFBFB),
                  ),
                  cells: [
                    ...List.generate(rows[0].length, (index) {
                      return DataCell(
                        GestureDetector(
                          child:  Container(
                            child: Text(
                              ' ${rows[0][index]} ',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0B2357)),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
