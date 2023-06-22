import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String? fullName;
  String? email;
  String? date;
  String? salary;
  String? address;
  bool? maritalStatus;
  HomeScreen(
      {Key? key,
      this.fullName,
      this.email,
      this.address,
      this.maritalStatus,
      this.date,
      this.salary})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // String? fullName;
  // String? email;
  // DateTime? dateTime;
  // String? salary;
  // String? address;
  // bool? maritalStatus;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Name:"),
                    Text(
                      widget.fullName!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("email:"),
                    Text(
                      widget.email!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("DOB:"),
                    Text(widget.date!),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Address:"),
                    Text(
                      widget.address!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Salary:"),
                    Text(
                      widget.salary!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Marital Status:"),
                    Text(
                      "",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
