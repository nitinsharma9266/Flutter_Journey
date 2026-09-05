import 'package:flutter/material.dart';

import 'align_widget.dart';
import 'button_widget.dart';
import 'center_widget.dart';
import 'column_cross_axis.dart';
import 'column_main_axis_size.dart';
import 'column_widget.dart';
import 'container_widget.dart';
import 'hello_flutter.dart';
import 'icon_widget.dart';
import 'image_widget.dart';
import 'padding_widget.dart';
import 'scroll_view.dart';
import 'sized_box.dart';
import 'text_widget.dart';
import 'column_vertical_direction.dart';
import 'row_widget.dart';
import 'row_main_axis_alignment.dart';
import 'row_cross_axis_alignment.dart';
import 'row_main_axis_size.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Apphome(),
    );
  }
}

class Apphome extends StatelessWidget {
  const Apphome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Learning"),
      ),

      body: ListView(
        children: [

          // 1. Align Widget
          buildCard(
            context,
            "Align Widget",
            const AlignWidget(),
          ),

          // 2. Button Widget
          buildCard(
            context,
            "Button Widget",
            const ButtonWidget(),
          ),

          // 3. Center Widget
          buildCard(
            context,
            "Center Widget",
            const CenterWidget(),
          ),

          // 4. Column Widget
          buildCard(
            context,
            "Column Widget",
            const ColumnWidget(),
          ),

          // 5. Column Cross Axis
          buildCard(
            context,
            "Column Cross Axis",
            const ColumnCrossAxis(),
          ),

          // 6. Column Main Axis Size
          buildCard(
            context,
            "Column Main Axis Size",
            const ColumnMainAxisSize(),
          ),

          // 7. Container Widget
          buildCard(
            context,
            "Container Widget",
            const ContainerWidget(),
          ),

          // 8. Hello Flutter
          buildCard(
            context,
            "Hello Flutter",
            const HelloFlutter(),
          ),

          // 9. Icon Widget
          buildCard(
            context,
            "Icon Widget",
            const IconWidget(),
          ),

          // 10. Image Widget
          buildCard(
            context,
            "Image Widget",
            const ImageWidget(),
          ),

          // 11. Padding Widget
          buildCard(
            context,
            "Padding Widget",
            const PaddingWidget(),
          ),

          // 12. Scroll View
          buildCard(
            context,
            "Scroll View",
            const ScrollViewScreen(),
          ),

          // 13. SizedBox Widget
          buildCard(
            context,
            "SizedBox Widget",
            const SizedBoxWidget(),
          ),

          // 14. Text Widget
          buildCard(
            context,
            "Text Widget",
            const TextWidget(),
          ),

          // Column Vertical Direction
          buildCard(
            context,
            "Column Vertical Direction",
            const ColumnVerticalDirectionWidget(),
          ),

          // Row Widget
          buildCard(
            context,
            "Row Widget",
            const RowWidget(),
          ),
          // Row Main Axis Alignment
          buildCard(
            context,
            "Row Main Axis Alignment",
            const RowMainAxisAlignmentWidget(),
          ),
          // Row Cross Axis Alignment
          buildCard(
            context,
            "Row Cross Axis Alignment",
            const RowCrossAxisAlignmentWidget(),
          ),
          // Row Main Axis Size
          buildCard(
            context,
            "Row Main Axis Size",
            const RowMainAxisSizeWidget(),
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      BuildContext context,
      String title,
      Widget screen,
      ) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.cyanAccent,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.black,

      child: ListTile(
        title: Text(title),

        trailing: const Icon(
          Icons.arrow_forward,
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },
      ),
    );
  }
}