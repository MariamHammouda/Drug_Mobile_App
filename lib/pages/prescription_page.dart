import "package:flutter/material.dart";
import 'package:login_register_auth/pages/prescription_class.dart';
import 'package:login_register_auth/pages/prescription_details.dart';
import 'package:login_register_auth/models/prescription.dart';

class PrescriptionPage extends StatefulWidget {
  const PrescriptionPage({super.key});

  @override
  State<PrescriptionPage> createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  final _patientNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _diagnosisController = TextEditingController();
  final _drugsController = TextEditingController();
  String? _gender = 'Male'; // Default value

  final List<Prescription> _prescriptions = [];

  @override
  void dispose() {
    _patientNameController.dispose();
    _ageController.dispose();
    _phoneController.dispose();
    _diagnosisController.dispose();
    _drugsController.dispose();
    super.dispose();
  }

  void _addPrescription() {
    setState(() {
      _prescriptions.add(Prescription(
        patientName: _patientNameController.text,
        age: _ageController.text,
        phone: _phoneController.text,
        gender: _gender!,
        diagnosis: _diagnosisController.text,
        drugs: _drugsController.text,
      ));

      // Clear the text fields after adding the prescription
      _patientNameController.clear();
      _ageController.clear();
      _phoneController.clear();
      _diagnosisController.clear();
      _drugsController.clear();
    });

    // Navigate to the details page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return PrescDetails(
          prescriptions: _prescriptions,
          onDelete: _deletePrescription,
        );
      }),
    );
  }

  void _deletePrescription(int index) {
    setState(() {
      _prescriptions.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Prescription",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff016CA5),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _patientNameController,
              decoration: InputDecoration(
                labelText: "Patient Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(
                      labelText: "Age",
                      prefixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.note_add),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Diagnosis",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _diagnosisController,
              decoration: InputDecoration(
                // labelText: "Diagnosis",
                // prefixIcon: Icon(Icons.medical_services),
                border: OutlineInputBorder(),
              ),
              maxLines: 3, // For increased height
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.note_add),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Drugs",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _drugsController,
              decoration: InputDecoration(
                // labelText: "Drugs",
                // prefixIcon: Icon(Icons.local_pharmacy),
                border: OutlineInputBorder(),
              ),
              maxLines: 6, // For increased height
            ),
            SizedBox(height: 30),
            MyButton(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton MyButton(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff016CA5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: _addPrescription,
      child: Text(
        "Submit Prescription",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
