import 'package:automatickeepalivemixin/wisget/keep_alive_wrapper.dart';
import 'package:flutter/material.dart';

import '../main.dart';


final GlobalKey<FormState> securityUserInFormKey = GlobalKey<FormState>();

class PrimaryUserInfoTab extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: KeepAliveWrapper(
         child: Form(
           key:securityUserInFormKey ,
           child: Container(
             color: Colors.redAccent,
           ),
         ),
       ),
     );
   }
}



