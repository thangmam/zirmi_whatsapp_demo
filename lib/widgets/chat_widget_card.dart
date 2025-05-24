import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatWidgetCard extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String lastChatText;
  const ChatWidgetCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.lastChatText,
  });

  @override
  State<ChatWidgetCard> createState() => _ChatWidgetCardState();
}

class _ChatWidgetCardState extends State<ChatWidgetCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: widget.imageUrl,
          width: 60,
          height: 60,
          imageBuilder: (context, imageProvider) {
            return CircleAvatar(backgroundImage: imageProvider);
          },
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.name, style: TextStyle(fontSize: 16)),
              Text(
                widget.lastChatText,
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Text("05:32 pm"),
            Row(
              children: [
                Icon(Icons.alarm),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade400,
                  ),
                  child: Text("10", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
