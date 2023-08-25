import 'package:flutter/material.dart';

class AppPageHeaderActionsMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_horiz),
      offset: const Offset(0, 50),
      onCanceled: () {
        print('popupMenuButton: onCanceled');
      },
      onSelected: (value) {
        print('popupMenuButton: onSelected: $value');
      },
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 'stack',
          child: Row(
            children: [
              Icon(Icons.more_time_outlined, color: Colors.black54,),
              Text('更多菜单一')
            ],
          ),
        ),
        const PopupMenuItem(
          value: 'grid',
          child: Row(
            children: [
              Icon(Icons.radar_outlined, color: Colors.black54,),
              Text('更多菜单二')
            ],
          ),
        ),
        const PopupMenuItem(
          value: 'line',
          child:Row(
            children: [
              Icon(Icons.ice_skating_outlined, color: Colors.black54,),
              Text('更多菜单三')
            ],
          ),
        ),
      ],
    );
  }
}