import 'package:flutter/material.dart';

class CardTimelineTexto extends StatelessWidget {
  // Consider adding constructors for customization (optional)
  const CardTimelineTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.accessibility_new)), 
        SizedBox(width: 15.0), // Spacing between icon and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NomeUser - @handle ° time"), // Username, handle, and timestamp
            Text("Informaçãoadfdasfd."), // Information text
            Row( // Row for action icons
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.0),  
 // Adjust spacing if needed

                Row( // First action icon and text
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.messenger_sharp, size: 17.0),
                    ),
                    Text("20", style: TextStyle(fontSize: 10.0)),
                  ],
                ),

                Row( // Second action icon and text
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share, size: 15.0),
                    ),
                    Text("20", style: TextStyle(fontSize: 10.0)),
                  ],
                ),

                Row( // Third action icon and text
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart_rounded, size: 15.0),
                    ),
                    Text("20", style: TextStyle(fontSize: 10.0)),
                  ],
                ),

                IconButton( // Fourth action icon without surrounding Row
                  onPressed: () {},
                  icon: Icon(Icons.download, size: 15.0),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}