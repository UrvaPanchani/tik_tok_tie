import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ChangeNotifierProvider(create: (context) => model(),child: Consumer(builder: (context, value, child) {
        return Container(
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/ttt2.jpg'),
                  )
                  )
                  ),
                )
              ],
            ),
          );
      },),),),
    );
  }
}
class model extends ChangeNotifier
{
  
}
