import 'package:flutter/material.dart';
import 'package:miniproject1_kendi/datamodel.dart';

class DetailScreen extends StatelessWidget {
  final DataModel item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  item.imageLocationUrl,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'address',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(item.address),
                  const Divider(),
                  const Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(item.phoneNumber),
                  const Divider(),
                  const Text(
                    'Latitude',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(item.lat.toString()),
                  const Divider(),
                  const Text(
                    'Longitude',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(item.long.toString()),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PhoneNumber {}

class Phone {}
