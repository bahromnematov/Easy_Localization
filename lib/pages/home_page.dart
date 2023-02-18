import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Localaztion"),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text('str_packages'.tr(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text('str_localization'.tr(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text('str_local_database'.tr(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text('str_networking'.tr(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: MaterialButton(
                    color: Colors.lightGreen,
                    onPressed: () {
                      context.setLocale(Locale("en","US"));
                    },
                    child: const Text("English",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      context.setLocale(Locale("ru","RU"));
                    },
                    child: const Text(
                      "Russia",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: MaterialButton(
                    color: Colors.black,
                    onPressed: () {
                      context.setLocale(Locale('uz','UZ'));
                    },
                    child: const Text("Uzb",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}
