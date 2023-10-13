import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/info.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    return goToDialog(index, context, '${info[index]['name']}');
                  },
                  child: ListTile(
                    title: Text('${info[index]['name']}',
                        style: const TextStyle(fontSize: 18)),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        '${info[index]['profilePic']}',
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text('${info[index]['message']}',
                          style: const TextStyle(fontSize: 15)),
                    ),
                    trailing: Text(
                      '${info[index]['time']}',
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                );
              },
              itemCount: info.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: dividerColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void goToDialog(int index, BuildContext context, String name) {
    Navigator.of(context).pushNamed('/dialog', arguments: name);
  }
}
