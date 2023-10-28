import 'package:flutter/material.dart';
import 'package:maps_me/provider/userprovider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserProvider>().details();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Center(
            child: Text('User details', style: TextStyle(color: Colors.white))),
        actions: const [
          InkWell(
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Consumer<UserProvider>(
                builder: (BuildContext context, value, Widget? child) {
              return Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(value.userDetails![index].name!,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            Text(
                              value.userDetails![index].username!,
                              style: const TextStyle(color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(value.userDetails![index].email!,
                                style: const TextStyle(color: Colors.black87)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              value.userDetails![index].phone!,
                              style: const TextStyle(color: Colors.black87),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(color: Colors.black),
                  itemCount: value.userDetails!.length,
                ),
              );
            }),
            SizedBox(width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    
                  },
                  child: const Text('Click')),
            )
          ],
        ),
      ),
    );
  }
}
