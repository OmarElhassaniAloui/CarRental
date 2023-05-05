import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../widgets/cards/cars_grid.dart';
import '../../widgets/darwer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        // backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text(
            "Car Rental ",
            style: SubHeading,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        drawer: MyDrawer(),
        body:
            // ListView(
            //   children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     'Available Cars',
            //     style: MainHeading,
            //   ),
            // ),
            Padding(
          padding: const EdgeInsets.all(2),
          child: CarsGridView(),
        )
        //   ],
        // ),
        );
  }
}
