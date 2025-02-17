import 'package:flutter/material.dart';

import 'my_details.dart';

class ListDataItems {
  final List<String> monthItems = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final ListDataItems item = ListDataItems();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      // ListView.separated를 사용하여 리스트 뷰를 생성합니다.
      body: ListView.separated(
        itemCount: item.monthItems.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(item.monthItems[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyDetails(item.monthItems[index])));
              });
        },
        // Divider 위젯을 사용하여 리스트 간의 구분선을 생성합니다.
        // color, thickness, height, indent 속성을 사용하여 색상, 두께, 높이, 들여쓰기를 설정합니다.
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
            indent: 16,
            endIndent: 4,
          );
        },
      ),
    );
  }
}