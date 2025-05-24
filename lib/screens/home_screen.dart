
import 'package:flutter/material.dart';
import 'package:zirmi_whatsapp/tabs/tab_calls_screen.dart';
import 'package:zirmi_whatsapp/tabs/tab_chat_screen.dart';
import 'package:zirmi_whatsapp/tabs/tab_community_screen.dart';
import 'package:zirmi_whatsapp/tabs/tab_update_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      _currentIndex = _tabController.index;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.qr_code),
          SizedBox(width: 12),
          Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New Community")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Read All")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TabChatScreen(),
          TabUpdateScreen(),
          TabCommunityScreen(),
          TabCallsScreen(),
        ],
      ),
      bottomNavigationBar: _buildCustomNavBar(),
      // bottomNavigationBar: TabBar(
      //   indicator: BoxDecoration(
      //     color: Colors.green.shade700.withAlpha(100),
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      //   indicatorSize: TabBarIndicatorSize.tab,
      //   tabs: [
      //     Tab(text: "Chat", icon: Icon(Icons.chat)),
      //     Tab(text: "Updates", icon: Icon(Icons.chat_bubble)),
      //     Tab(text: "Communities", icon: Icon(Icons.groups)),
      //     Tab(text: "Calls", icon: Icon(Icons.call)),
      //   ],
      // ),
    );
  }

  Widget _buildCustomNavBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              _tabController.animateTo(0);
            },
            child: _buildTabItem(
              icon: Icons.chat,
              label: "Chat",
              isSelected: _currentIndex == 0,
            ),
          ),
          InkWell(
            onTap: () {
              _tabController.animateTo(1);
            },
            child: _buildTabItem(
              icon: Icons.chat_bubble,
              label: "Updates",
              isSelected: _currentIndex == 1,
            ),
          ),
          InkWell(
            onTap: () {
              _tabController.animateTo(2);
            },
            child: _buildTabItem(
              icon: Icons.groups,
              label: "Communities",
              isSelected: _currentIndex == 2,
            ),
          ),
          InkWell(
            onTap: () {
              _tabController.animateTo(3);
            },
            child: _buildTabItem(
              icon: Icons.call,
              label: "Calls",
              isSelected: _currentIndex == 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected ? Colors.green.shade500 : Colors.transparent,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Icon(icon),
        ),
        Text(label),
      ],
    );
  }
}
