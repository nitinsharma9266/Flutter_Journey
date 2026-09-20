import 'package:flutter/material.dart';

// ================= WIDGETS =================

import 'Widgets/align_widget.dart';
import 'Widgets/button_widget.dart';
import 'Widgets/center_widget.dart';
import 'Widgets/column_cross_axis.dart';
import 'Widgets/column_main_axis_size.dart';
import 'Widgets/column_widget.dart';
import 'Widgets/container_widget.dart';
import 'Widgets/hello_flutter.dart';
import 'Widgets/icon_widget.dart';
import 'Widgets/image_widget.dart';
import 'Widgets/padding_widget.dart';
import 'Widgets/scroll_view.dart';
import 'Widgets/sized_box.dart';
import 'Widgets/text_widget.dart';
import 'Widgets/column_vertical_direction.dart';
import 'Widgets/row_widget.dart';
import 'Widgets/row_main_axis_alignment.dart';
import 'Widgets/row_cross_axis_alignment.dart';
import 'Widgets/row_main_axis_size.dart';


// ================= DAYS =================

import 'Days/Day7/food_product_card.dart';
import 'Days/Day7/cupertino_basic.dart';
import 'Days/Day7/stateful_basic.dart';

import 'Days/Day7/Login_Screen_Project/Widgets/login_text_field.dart';
import 'Days/Day7/Login_Screen_Project/Widgets/login_input_decoration.dart';

import 'Days/Day7/Login_Screen_Project/Screens/login_screen.dart';
import 'Days/Day7/Login_Screen_Project/Screens/home_screen.dart';

import 'Days/Day_8/stack_example.dart';
import 'Days/Day_8/flexible_example.dart';
import 'Days/Day_8/widget_practice.dart';

import 'Days/Day_9/practice_questions.dart';


// ================= FOOD DELIVERY APP =================

import 'Food_Delivery_App/Front_Screen/homescreen.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Flutter Learning",

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),

      home: const Apphome(),
    );
  }
}


// =====================================================
//                    APP HOME
// =====================================================

class Apphome extends StatelessWidget {
  const Apphome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Flutter Learning"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        children: <Widget>[

          // ================= WIDGETS =================

          buildCard(
            context,
            "Align Widget",
            const AlignWidget(),
          ),

          buildCard(
            context,
            "Button Widget",
            const ButtonWidget(),
          ),

          buildCard(
            context,
            "Center Widget",
            const CenterWidget(),
          ),

          buildCard(
            context,
            "Column Widget",
            const ColumnWidget(),
          ),

          buildCard(
            context,
            "Column Cross Axis",
            const ColumnCrossAxis(),
          ),

          buildCard(
            context,
            "Column Main Axis Size",
            const ColumnMainAxisSize(),
          ),

          buildCard(
            context,
            "Container Widget",
            const ContainerWidget(),
          ),

          buildCard(
            context,
            "Hello Flutter",
            const HelloFlutter(),
          ),

          buildCard(
            context,
            "Icon Widget",
            const IconWidget(),
          ),

          buildCard(
            context,
            "Image Widget",
            const ImageWidget(),
          ),

          buildCard(
            context,
            "Padding Widget",
            const PaddingWidget(),
          ),

          buildCard(
            context,
            "Scroll View",
            const ScrollViewScreen(),
          ),

          buildCard(
            context,
            "SizedBox Widget",
            const SizedBoxWidget(),
          ),

          buildCard(
            context,
            "Text Widget",
            const TextWidget(),
          ),

          buildCard(
            context,
            "Column Vertical Direction",
            const ColumnVerticalDirectionWidget(),
          ),

          buildCard(
            context,
            "Row Widget",
            const RowWidget(),
          ),

          buildCard(
            context,
            "Row Main Axis Alignment",
            const RowMainAxisAlignmentWidget(),
          ),

          buildCard(
            context,
            "Row Cross Axis Alignment",
            const RowCrossAxisAlignmentWidget(),
          ),

          buildCard(
            context,
            "Row Main Axis Size",
            const RowMainAxisSizeWidget(),
          ),


          // ================= DAY 7 =================

          buildCard(
            context,
            "Food Product Card",
            const FoodProductCard(),
          ),

          buildCard(
            context,
            "Cupertino Basic",
            const CupertinoBasic(),
          ),

          buildCard(
            context,
            "Stateful Widget",
            const StatefulBasic(),
          ),


          // ================= LOGIN PROJECT =================

          buildCard(
            context,
            "Login TextField",
            const LoginTextField(),
          ),

          buildCard(
            context,
            "Login Input Decoration",
            const LoginInputDecoration(),
          ),

          buildCard(
            context,
            "Login Screen",
            const LoginScreen(),
          ),

          buildCard(
            context,
            "Home Screen",
            const HomeScreen(),
          ),


          // ================= DAY 8 =================

          buildCard(
            context,
            "Stack Example",
            const StackExample(),
          ),

          buildCard(
            context,
            "Flexible Example",
            const FlexibleExample(),
          ),

          buildCard(
            context,
            "Widget Practice",
            const WidgetPractice(),
          ),


          // ================= DAY 9 =================

          buildCard(
            context,
            "Practice Questions",
            const PracticeQuestions(),
          ),


          // ================= FOOD DELIVERY APP =================

          buildCard(
            context,
            "Food Delivery App",
            const FrontScreen(),
          ),
        ],
      ),
    );
  }


  // ===================================================
  //                    BUILD CARD
  // ===================================================

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

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

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