import 'package:employee_details/pay_roll.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenEmployeeDetails extends StatefulWidget {
 
  @override
  State<ScreenEmployeeDetails> createState() => _ScreenEmployeeDetailsState();
  
}

class _ScreenEmployeeDetailsState extends State<ScreenEmployeeDetails> {
  List<String> department = ['CIVIL', 'CSE', 'AI', 'ECE', 'EEE', 'MECH', 'MCA'];
  String? selectedDepartment;
  List<String> gender = ['Male', 'Female', 'Others'];
  String? selectedGender;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final idController = TextEditingController();
  final deptController = TextEditingController();
  final mailController = TextEditingController();
  final addrController = TextEditingController();
  final salController = TextEditingController();
  final mobController= TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with existing data from the widget
    // nameController.text = widget.name;
    // idController.text = widget.id;
    // deptController.text = widget.dept;
    // mailController.text = widget.mail;
    // addrController.text = widget.addr;
    // salController.text = widget.sal.toString();
    // selectedGender = widget.gender;
    // selectedDepartment = widget.dept;
    print(nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Employee Details',
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ))
          ],
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Name Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Employee Name',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: idController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Employee ID Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Employee ID',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    DropdownButton(
                        value: selectedDepartment,
                        hint: const Text('Select a department'),
                        items: department
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedDepartment = value;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: mailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    DropdownButton(
                        value: selectedGender,
                        hint: const Text('Gender'),
                        items: gender
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        controller: mobController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Mobile Number Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: addrController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Address Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        maxLines: 5,
                        decoration: const InputDecoration(
                            hintText: 'Address',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: salController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Basic Pay Cannot be empty!';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Basic Pay',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  ScreenPayroll(name: nameController.text, id: idController.text, dept: selectedDepartment!, mail: mailController.text, gender: selectedGender!,mob: mobController.text, addr: addrController.text, sal: salController.text)));
              
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.pink)),
                      child: const Text(
                        'Process Payroll',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
