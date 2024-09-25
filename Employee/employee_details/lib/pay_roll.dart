import 'package:flutter/material.dart';
import 'package:employee_details/details_screen.dart';

class ScreenPayroll extends StatelessWidget {
  late String name;
  late String id;
  late String dept;
  late String mail;
  late String gender;
  late String mob;
  late String addr;
  late String sal;
  late num saln;
  late num hra;
  late num da;
  late num ta;
  late num net;

  ScreenPayroll(
      {super.key,
      required this.name,
      required this.id,
      required this.dept,
      required this.mail,
      required this.gender,
      required this.mob,
      required this.addr,
      required this.sal}) {
    saln = num.parse(sal);
    calculateSalaryDetails();
  }
  void calculateSalaryDetails() {
    hra = saln * 0.1;
    da = saln * 0.15;
    ta = saln * 0.1;
    net =saln+hra + da + ta;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pay Roll',
          style: TextStyle(
              fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Employee Name: $name ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee ID: $id',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Department: $dept',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Email: $mail',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Gender: $gender',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee DOB: ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Mobile: $mob ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Address: $addr',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Basic Pay: $sal',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'DA: $da',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'HRA: $hra',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'TA: $ta',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                  'Net Salary $net',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
