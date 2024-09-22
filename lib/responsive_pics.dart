import 'package:flutter/material.dart';

class ResponsivePics extends StatelessWidget {
  ResponsivePics({super.key});

  final List<String> images = [
    'https://th.bing.com/th/id/OIP.9Izv-aszItToTtEqRMSE0QHaE6?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.ToJNn8dYE9LMoN4RRbrCpgHaE8?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.9d812e0638aec020faa11d89795bb90f?rik=A006j6sL742cww&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f07%2fnatural-landscape-purple-lake-wallpaper-.jpg&ehk=pAMyN7JHIDi73moP1dIjfu7zY10pXVNw92GFzZalDaE%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.d315781b04de42e85ad008e8e9113b76?rik=pheJbmZ66EZ%2fmA&pid=ImgRaw&r=0',
  ];

  @override
  Widget build(BuildContext context) {
    Size window = MediaQuery.sizeOf(context);
    int width = window.width.toInt();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnBuilder(width), // Number of columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurpleAccent),
                  borderRadius: BorderRadius.circular(16.0)),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      images[index],
                    )
                  )
                ],
              ),
            );
          }
      ),
    );

  }
  int columnBuilder(int width){
    if(0<width && width<400){
      return 1;
    }
    if(400<width && width<600){
      return 2;
    }
    return 3;
  }
}
