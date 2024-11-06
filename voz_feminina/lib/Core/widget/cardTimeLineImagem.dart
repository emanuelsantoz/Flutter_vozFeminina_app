import 'package:flutter/material.dart';

class CardTimelineImagem extends StatelessWidget {
  // Consider adding constructors for customization (optional)
  const CardTimelineImagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.accessibility_new)),
            SizedBox(width: 15.0),
            Column(
              children: [],
            ), // Spacing between icon and text Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("NomeUser - @handlen ° timem"),
            Text("Informaçãoadfdasfd."),
          ],
        ),
        Container(
          margin: EdgeInsetsDirectional.only(start: 10),
          width: 350,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue),
          child: Text("testset"),
        ),
        Padding(
              padding: EdgeInsetsDirectional.only(start: 50),           
              child: 
              Row(children: [
              Row(
                // First action icon and text
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.messenger_sharp, size: 17.0),
                  ),
                  Text("20", style: TextStyle(fontSize: 10.0)),
                ],
              ),
              Row(
                // Second action icon and text
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share, size: 15.0),
                  ),
                  Text("20", style: TextStyle(fontSize: 10.0)),
                ],
              ),
              Row(
                // Third action icon and text
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bar_chart_rounded, size: 15.0),
                  ),
                  Text("20", style: TextStyle(fontSize: 10.0)),
                ],
              ),
              IconButton(
                // Fourth action icon without surrounding Row
                onPressed: () {},
                icon: Icon(Icons.download, size: 15.0),
              ),

              ],),
            )
          ],
        );
  }
}
