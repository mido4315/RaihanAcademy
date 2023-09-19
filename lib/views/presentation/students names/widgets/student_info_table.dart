import 'package:flutter/material.dart';
import 'package:raihan_academy/core/constant.dart';

import '../../../../core/colors.dart';

class StudentInfoTable extends StatefulWidget {
  const StudentInfoTable({super.key});

  @override
  _StudentInfoTableState createState() => _StudentInfoTableState();
}

class _StudentInfoTableState extends State<StudentInfoTable> {
  // Dummy data for the table
  List<TableRowData> tableData = [
    TableRowData("5", "10", "أيمن محمد محمد"),
    TableRowData("3", "8", "Layla"),
    TableRowData("2", "6", "Khaled"),
  ];

  int selectedRow = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.lightOrange, borderRadius: BorderRadius.circular(22)),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ملاحظات",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),
              ),
              Text(
                "عدد الحصص",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
              Text(
                "اسم الطالب",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
            ],
          ),
          SizedBox(height: mediaH * 0.013,),
          SizedBox(
            height: mediaH * 0.7,
            child: ListView.builder(
              itemCount: tableData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRow = selectedRow == index ? -1 : index;
                    });
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        // Circular border for the main table
                        child: Container(
                          color: AppColor.orange,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: mediaW/4,
                                    child: Text(
                                      tableData[index].notes,
                                      style: const TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaW/4,
                                    child: Text(
                                      tableData[index].classes,
                                      style: const TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaW/4,
                                    child: Text(
                                      tableData[index].studentName,
                                      style: const TextStyle(color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),
                              if (selectedRow == index)
                                Column(
                                  children: [
                                    SizedBox(
                                      height: mediaH * 0.01,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      // Circular border for the container
                                      child: Container(
                                        color: AppColor.white,
                                        padding: const EdgeInsets.all(8.0),
                                        child: const Text(
                                          "الطالب حفظه متقن و لا يعاني من مشاكل شديدة فالتجويد.\n يتأخر 10 دقائق عن الحصة عادة",
                                          style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.right,

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: mediaH * 0.01,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TableRowData {
  final String notes;
  final String classes;
  final String studentName;

  TableRowData(this.notes, this.classes, this.studentName);
}