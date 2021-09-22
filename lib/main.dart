import 'package:automatickeepalivemixin/tabs/primary_user_info_tab.dart';
import 'package:automatickeepalivemixin/tabs/security_user_info_tab.dart';
import 'package:flutter/material.dart';

//https://stackoverflow.com/questions/65977424/flutter-how-to-manage-forms-in-tabs

import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabbedAppBar(),
    );
  }
}

class TabbedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabbed AppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: [PrimaryUserInfoTab(), SecurityUserInfoTab()],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              bool? primary = primaryUserInfoFormKey.currentState?.validate();
              bool? security = securityUserInFormKey.currentState?.validate();

              print("Primary is $primary , security is $security");
            },
          ),
        ),
      ),
    );
  }
}
