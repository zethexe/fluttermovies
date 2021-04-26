import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica2/src/utils/configuration.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Configuration.colorHeader),
              accountName: Text('Julio C. García Escoto'),
              accountEmail: Text('17030696@itcelaya.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.shareicon.net/data/512x512/2016/05/24/770117_people_512x512.png'),
              ),
              onDetailsPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.trending_up,
                color: Configuration.colorIcons,
              ),
              title: Text('Trending'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/popular");
              },
              trailing: Icon(
                Icons.chevron_right,
                color: Configuration.colorIcons,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Configuration.colorIcons,
              ),
              title: Text('Search'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(
                Icons.chevron_right,
                color: Configuration.colorIcons,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Configuration.colorIcons,
              ),
              title: Text('Most Liked'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(
                Icons.chevron_right,
                color: Configuration.colorIcons,
              ),
            )
          ],
        ),
      ),
    );
  }
}
