import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                //     image: AssetImage('assets/images/Add_Friend.png'),
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
              child: DropdownButtonFormField(
                alignment: Alignment.topRight,
                elevation: 1,
                items: const [
                  DropdownMenuItem(
                    child: Text('Hi'),
                  ),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Lead name',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  // suffixIcon: IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.arrow_drop_down,
                  //     size: 35.0,
                  //     color: Color.fromRGBO(134, 0, 213, 1.0),
                  //   ),
                  // ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
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
                      decoration: InputDecoration(
                        labelText: 'Date',
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 15.0, 40.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'In time',
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                      decoration: InputDecoration(
                        labelText: 'Date',
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 15.0, 40.0, 0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'In time',
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                decoration: InputDecoration(
                  labelText: 'Phone No',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Mail Id',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Website',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Client Address',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Notes',
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
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
