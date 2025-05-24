import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zirmi_whatsapp/widgets/chat_widget_card.dart';

class TabUpdateScreen extends StatefulWidget {
  const TabUpdateScreen({super.key});

  @override
  State<TabUpdateScreen> createState() => _TabUpdateScreenState();
}

class _TabUpdateScreenState extends State<TabUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Status", style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          _buildStatusesWidget(context),
          SizedBox(height: 10),
          Row(
            children: [
              Text("Channels"),
              Spacer(),
              OutlinedButton(onPressed: () {}, child: Text("Explore")),
            ],
          ),
          SizedBox(height: 10),
          ChatWidgetCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrpM3UTTyyqIwGsPYB1gCDhfl3XVv0Cex2Lw&s",
            name: "BBC",
            lastChatText: "Hi there. How are you?",
          ),
          SizedBox(height: 6),
          ChatWidgetCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrpM3UTTyyqIwGsPYB1gCDhfl3XVv0Cex2Lw&s",
            name: "Flutter Dev",
            lastChatText: "Hi there. How are you?",
          ),
          SizedBox(height: 6),
          ChatWidgetCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrpM3UTTyyqIwGsPYB1gCDhfl3XVv0Cex2Lw&s",
            name: "Arsi",
            lastChatText: "Hi there. How are you?",
          ),
        ],
      ),
    );
  }

  Widget _buildStatusWidget(BuildContext context, {required String label}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black45,
      ),
      padding: EdgeInsets.only(left: 6, right: 6, top: 6, bottom: 6),
      height: 180,
      width: 100,
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft, child: CircleAvatar()),
          Spacer(),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildStatusesWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          _buildStatusWidget(context, label: "Add status"),
          _buildStatusWidget(context, label: "Shawn"),
          _buildStatusWidget(context, label: "John"),
          _buildStatusWidget(context, label: "Peter"),
          _buildStatusWidget(context, label: "Lily"),
        ],
      ),
    );
  }
}
