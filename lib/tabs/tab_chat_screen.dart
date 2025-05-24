import 'package:flutter/material.dart';
import 'package:zirmi_whatsapp/widgets/chat_widget_card.dart';

class TabChatScreen extends StatefulWidget {
  const TabChatScreen({super.key});

  @override
  State<TabChatScreen> createState() => _TabChatScreenState();
}

class _TabChatScreenState extends State<TabChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              label: Text("Ask Meta AI or Search"),
              isCollapsed: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
              prefixIcon: Icon(Icons.search, size: 28),
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                _buildCustomChip(label: "All", isSelected: true),
                _buildCustomChip(label: "Unread 29"),
                _buildCustomChip(label: "Favourites"),
                _buildCustomChip(label: "Groups 6"),
                _buildCustomChip(label: "Arsi"),
                _buildCustomChip(label: "Arsi 2"),
              ],
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                children: [
                  ChatWidgetCard(
                    name: "Arsi Consultancy",
                    lastChatText: "Flutter hmangin WhatsApp UI kan siam mek",
                    imageUrl:
                        "https://img.freepik.com/premium-vector/male-face-avatar-icon-set-flat-design-social-media-profiles_1281173-3806.jpg?semt=ais_hybrid&w=740",
                  ),
                  ChatWidgetCard(
                    name: "Tui Group",
                    lastChatText:
                        "Vawiinah tui a lo haw dawn. lo in en vek ang u aw",
                    imageUrl:
                        "https://media.istockphoto.com/id/1465504312/vector/young-smiling-man-avatar-man-with-brown-beard-mustache-and-hair-wearing-yellow-sweater-or.jpg?s=612x612&w=0&k=20&c=9AyNmOwjadmLC1PKpANKEXj56e1KxHj9h9hGknd-Rb0=",
                  ),
                  ChatWidgetCard(
                    name: "John",
                    lastChatText: "Vawiinah eng nge i tih dawn ?",
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  ),
                  ChatWidgetCard(
                    name: "Henry",
                    lastChatText: "Flutter hmangin WhatsApp UI kan siam mek",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSNa_enPXd1H_1ODg8TMeOevHavXx_g8reXQ&s",
                  ),
                  ChatWidgetCard(
                    name: "John",
                    lastChatText: "Vawiinah eng nge i tih dawn ?",
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  ),
                  ChatWidgetCard(
                    name: "Henry",
                    lastChatText: "Flutter hmangin WhatsApp UI kan siam mek",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSNa_enPXd1H_1ODg8TMeOevHavXx_g8reXQ&s",
                  ),
                  ChatWidgetCard(
                    name: "Tui Group",
                    lastChatText:
                        "Vawiinah tui a lo haw dawn. lo in en vek ang u aw",
                    imageUrl:
                        "https://media.istockphoto.com/id/1465504312/vector/young-smiling-man-avatar-man-with-brown-beard-mustache-and-hair-wearing-yellow-sweater-or.jpg?s=612x612&w=0&k=20&c=9AyNmOwjadmLC1PKpANKEXj56e1KxHj9h9hGknd-Rb0=",
                  ),
                  ChatWidgetCard(
                    name: "Henry",
                    lastChatText: "Flutter hmangin WhatsApp UI kan siam mek",
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSNa_enPXd1H_1ODg8TMeOevHavXx_g8reXQ&s",
                  ),
                  ChatWidgetCard(
                    name: "Tui Group",
                    lastChatText:
                        "Vawiinah tui a lo haw dawn. lo in en vek ang u aw",
                    imageUrl:
                        "https://media.istockphoto.com/id/1465504312/vector/young-smiling-man-avatar-man-with-brown-beard-mustache-and-hair-wearing-yellow-sweater-or.jpg?s=612x612&w=0&k=20&c=9AyNmOwjadmLC1PKpANKEXj56e1KxHj9h9hGknd-Rb0=",
                  ),
                  ChatWidgetCard(
                    name: "John",
                    lastChatText: "Vawiinah eng nge i tih dawn ?",
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  ),
                  ChatWidgetCard(
                    name: "Steve",
                    lastChatText: "Hi, How are you?",
                    imageUrl:
                        "https://t3.ftcdn.net/jpg/03/30/78/62/360_F_330786249_i7inRCNEHz2FL88FrHvg55dgVel3gLYF.jpg",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomChip({required String label, bool? isSelected}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected == true ? Colors.green.shade700 : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelected == true ? Colors.white24 : Colors.grey,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected == true ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}
