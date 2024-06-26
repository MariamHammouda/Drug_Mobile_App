import 'package:flutter/material.dart';
import 'package:login_register_auth/models/prescription.dart';
import 'package:login_register_auth/pages/prescription_class.dart';

class PrescDetails extends StatelessWidget {
  final List<Prescription> prescriptions;
  final Function(int) onDelete;

  PrescDetails({
    Key? key,
    required this.prescriptions,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Prescription Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: prescriptions.length,
          itemBuilder: (context, index) {
            final prescription = prescriptions[index];
            return Container(
              margin: EdgeInsets.only(bottom: 20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Patient Name: ${prescription.patientName}"),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text("Age: ${prescription.age}"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone: ${prescription.phone}"),
                  ),
                  ListTile(
                    leading: Icon(Icons.wc),
                    title: Text("Gender: ${prescription.gender}"),
                  ),
                  ListTile(
                    leading: Icon(Icons.medical_services),
                    title: Text("Diagnosis: ${prescription.diagnosis}"),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_pharmacy),
                    title: Text("Drugs: ${prescription.drugs}"),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        onDelete(index);
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return PrescDetails(
                              prescriptions: prescriptions,
                              onDelete: onDelete,
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
