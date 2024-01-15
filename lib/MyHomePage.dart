import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  var title;

  MyHomePage({super.key, this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 10),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3tQHlfuZrbhjIsKjwHey4o3AAlY1QgNbgbPKG1MkN5gekVmoz21PUmTC-TeSRE12N7wU&usqp=CAU',height: 150,width: 150,),),
              );
            }),
      ),
    );
  }
}
