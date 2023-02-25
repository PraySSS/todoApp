import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //untuk menghilangkan showdebug
      title: 'List Tile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
          backgroundColor: Colors.blue, //Warna background App Bar
        ),
        body: ListView(
          //Widget ListView
          children: [
            ListTile(
              //Widget ListTile
              contentPadding: EdgeInsets.all(
                  10), //ruang space disekitar elemen atau konten atau menambah jarak
              title: Text(
                "Harfa Thandila",
                maxLines:
                    2, // banyaknya paragraf tulisan yang ditampilkan pada teks list
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                  "Hello! Welcome to Messager, Arsenal Women and Bristol City Women played an association football match on 1 December 2019 that ended with a scoreline of 11–1. It was part of the 2019–20"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              // Memberikan Garis
              color: Colors.black, // Warna pada garis
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Akbar Madi",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Akbar!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Maryam",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Maryam!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Nadilla C. Putri",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Nadilla!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Novita Aulia",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Novita!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Aim",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Aim!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Mama",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Mama!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Acil",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Acil!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Mia",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say Hello to Mia!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text(
                "Arin",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("Say hello to Arin!"),
              leading: CircleAvatar(), //awalan pada circle image
              trailing: Text("10.00 PM"),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
