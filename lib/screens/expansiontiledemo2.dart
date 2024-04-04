import 'package:flutter/material.dart';

class ExpansionTileDemo2 extends StatefulWidget {
  const ExpansionTileDemo2({super.key});

  @override
  State<ExpansionTileDemo2> createState() => _ExpansionTileDemo2State();
}
final ExpansionTileController expansionControl = ExpansionTileController();
bool isExpanded = false;

class _ExpansionTileDemo2State extends State<ExpansionTileDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(bottom: 210),
  child: Card(
// margin: EdgeInsets.all(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),side: BorderSide(width: 2,color: Colors.black)
    ),
   // color: Colors.purpleAccent,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
     // clipBehavior: Clip.none,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            buildImage(),
            buildeText(context),
          ],
        ),
      ),
    ),
  ),
),
    );
  }
  Widget buildeText(BuildContext context) =>
ExpansionTile(
  collapsedBackgroundColor: Colors.white,
  collapsedTextColor: Colors.purpleAccent,
controller: expansionControl,
  onExpansionChanged: (value) {
  },
  title: Text(
    'Hello Nature',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),
  ),
  children: [
    Container(
      color: Colors.purpleAccent,
      child: Text(style: TextStyle(fontSize: 22,color: Colors.white,),textAlign: TextAlign.center, 'Nature is the ultimate source of our'
          ' living. Both living and non-living things '
          'include nature, and everyone is interdependent, '
          'which helps maintain the ecosystem. Plants, animals, '
          'and humans all depend on nature for their survival.'
          ' It supplies oxygen, sunlight, soil, water, '
          'and other necessary components.Nature is the ultimate source of our living.'
          ' Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. ItNature is the ultimate source of our living. Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. It supplies oxygen,Nature is the ultimate source of our living. Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. Nature is the ultimate source of our living. Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. It supplies oxygen, sunlight, soil, water, and other necessary components. It supplies oxygen, sunlight, soil, water, and other necessary components. sunlight, soil, water, and other necessary components. supplies oxygen, sunlight, soil, water, and other necessary components.living. Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. It supplies oxygen, sunlight, soil, water, and other necessary components.'),
    ),
  ],
);
  Widget buildImage() => Image.asset(
    'assets/image/green.jpeg',height: 400,width: double.infinity,fit: BoxFit.cover,
  );

}
