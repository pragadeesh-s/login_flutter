import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> name = ['Voni Smart', 'Vrihodha', 'Vayk'];
  String selectedLead = "Voni Smart";
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  final formatter = DateFormat('d/M/y');
  TextEditingController inTime = TextEditingController();
  TextEditingController outTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Lead'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 35.0, horizontal: 35.0),
                height: 110,
                width: 110,
                //color: const Color.fromRGBO(238, 247, 254, 1.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 247, 254, 1.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle_2188.png"),
                  ),
                ),
                // foregroundDecoration: const BoxDecoration(
                //   color: Color.fromRGBO(238, 247, 254, 1.0),
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/Rectangle_2188.png'),
                //   ),
                // ),
                child: Image.asset('assets/images/Group 37.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
              child: DropdownButtonFormField(
                borderRadius: BorderRadius.circular(10),
                value: selectedLead,
                items: name
                    .map(
                      (lead) => DropdownMenuItem(
                        value: lead,
                        child: Text(lead),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    selectedLead = value;
                    print(selectedLead);
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Lead name',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 15.0, 5.0, 0.0),
                    child: TextField(
                      controller: startDate,
                      style: const TextStyle(fontSize: 14.0),
                      readOnly: true,
                      onTap: () async {
                        final today = DateTime.now();
                        final pickedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(today.year, today.month),
                          lastDate: DateTime(today.year, today.month + 1),
                          initialDate: today,
                        );
                        if (pickedDate != null) {
                          setState(() {
                            startDate = TextEditingController(
                                text: formatter.format(pickedDate).toString());
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Start Date',
                        labelStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        suffixIcon: Icon(
                          (startDate.text.isEmpty)
                              ? null
                              : Icons.calendar_today_outlined,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(134, 0, 213, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 15.0, 40.0, 0.0),
                    child: TextField(
                      controller: inTime,
                      style: const TextStyle(fontSize: 14.0),
                      readOnly: true,
                      onTap: () async {
                        final pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (pickedTime != null) {
                          setState(() {
                            inTime = TextEditingController(
                              text: pickedTime.format(context),
                            );
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'In time',
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(134, 0, 213, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 15.0, 5.0, 0.0),
                    child: TextField(
                      controller: endDate,
                      style: const TextStyle(fontSize: 14.0),
                      readOnly: true,
                      onTap: () async {
                        final today = DateTime.now();
                        final pickedDate = await showDatePicker(
                          context: context,
                          firstDate:
                              DateTime(today.year, today.month, today.day + 1),
                          lastDate: DateTime(today.year, today.month + 1),
                          initialDate:
                              DateTime(today.year, today.month, today.day + 1),
                        );
                        if (pickedDate != null) {
                          setState(() {
                            endDate = TextEditingController(
                                text: formatter.format(pickedDate).toString());
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'End Date',
                        labelStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        suffixIcon: Icon(
                          (endDate.text.isEmpty)
                              ? null
                              : Icons.calendar_today_outlined,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(134, 0, 213, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 15.0, 40.0, 0.0),
                    child: TextField(
                      controller: outTime,
                      style: const TextStyle(fontSize: 14.0),
                      readOnly: true,
                      onTap: () async {
                        final pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (pickedTime != null) {
                          setState(() {
                            outTime = TextEditingController(
                              text: pickedTime.format(context),
                            );
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Out time',
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(134, 0, 213, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone No',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: const Icon(Icons.phone),
                  suffixIconColor: const Color.fromRGBO(134, 0, 213, 1.0),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Mail Id',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: const Icon(Icons.email_outlined),
                  suffixIconColor: const Color.fromRGBO(134, 0, 213, 1.0),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Website',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: const Icon(Icons.language_sharp),
                  suffixIconColor: const Color.fromRGBO(134, 0, 213, 1.0),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                minLines: 1,
                maxLines: 4,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: 'Client Address',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  suffixIcon: const Icon(Icons.location_on),
                  suffixIconColor: const Color.fromRGBO(134, 0, 213, 1.0),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Notes',
                  labelStyle: const TextStyle(
                    fontSize: 14,
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(134, 0, 213, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
