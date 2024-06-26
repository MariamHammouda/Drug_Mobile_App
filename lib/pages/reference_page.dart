import "package:flutter/material.dart";
import "package:login_register_auth/pages/data/data.dart";

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  List<RefData> _rowdata = List.from(data);

  bool _isSortAsc = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Reference",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      child: SizedBox.expand(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: _createColumns(),
              rows: _createRows(),
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text("Id"),
      ),
      DataColumn(
        label: const Text("Abbreviation"),
        onSort: (columnIndex, _) {
          setState(() {
            if (_isSortAsc) {
              _rowdata.sort(
                (a, b) => a.abbreviation.compareTo(b.abbreviation),
              );
            } else {
              _rowdata.sort(
                (a, b) => b.abbreviation.compareTo(a.abbreviation),
              );
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      const DataColumn(
        label: Text("Its Meaning"),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return _rowdata.map((e) {
      return DataRow(
        cells: [
          DataCell(
            Text(
              e.id.toString(),
            ),
          ),
          DataCell(
            Text(
              e.abbreviation,
            ),
          ),
          DataCell(
            Text(
              e.meaning,
            ),
          ),
        ],
      );
    }).toList();
  }
}
