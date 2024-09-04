import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
import 'package:csv/csv.dart';

class SearchPage2 extends StatefulWidget {
  const SearchPage2({super.key});

  @override
  State<SearchPage2> createState() => _SearchPage2State();
}

class _SearchPage2State extends State<SearchPage2> {
  List<List<dynamic>>? csvData;

  Future<List<List<dynamic>>> processCsv() async {
    var result = await DefaultAssetBundle.of(context).loadString(
      "assets/test2.csv",
    );
    return const CsvToListConverter().convert(result, eol: "\n");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Csv reader"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: csvData == null
            ? const CircularProgressIndicator()
            : DataTable(
                columns: csvData![0]
                    .map(
                      (item) => DataColumn(
                        label: Text(
                          item.toString(),
                        ),
                      ),
                    )
                    .toList(),
                rows: csvData!
                    .map(
                      (csvrow) => DataRow(
                        cells: csvrow
                            .map(
                              (csvItem) => DataCell(
                                Text(
                                  csvItem.toString(),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     csvData = await processCsv();
      //     setState(() {});
      //   },
      // ),
    );
  }
}