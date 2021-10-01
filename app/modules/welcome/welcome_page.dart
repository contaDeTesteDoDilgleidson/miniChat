import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/global/widgets/icon_left_btn.dart';
import 'package:myapp/app/global/widgets/use_avatar.dart';
import 'package:myapp/app/modules/welcome/welcome_controller.dart';
import 'package:myapp/app/theme/app_theme.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeData.primaryColor,
      appBar: AppBar(
        leading: IconLeftBtn(
          icon: CupertinoIcons.multiply,
          press: () => controller.removeList(),
        ),
        elevation: 0.3,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  reverse: true,
                  controller: controller.scroll,
                  padding: EdgeInsets.only(left: 15, top: 25, right: 15),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Obx(
                      () => Column(
                        children: List.generate(
                          controller.listComments.length,
                          (index) => Container(
                            margin: EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    UseAvatar(
                                      radius: 18,
                                      press: () {},
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      child: Container(
                                        padding:
                                            EdgeInsets.only(top: 7, bottom: 7),
                                        child: Text(
                                          'Usuario',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Color(0xFF04d361),
                                          ),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 46,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${controller.listComments[index]['msg']}',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 46,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 20,
                                      ),
                                      width: Get.width - 76,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xFF9999999),
                                            width: 0.15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width - 80,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 120,
                      ),
                      child: TextField(
                        controller: controller.msg..text,
                        autofocus: true,
                        maxLines: null,
                        style: TextStyle(
                          color: Color(0xFF666666),
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: 'Escreva um comentário...',
                          hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 48,
                    child: InkWell(
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            CupertinoIcons.location_north,
                            color: Color(0xFF8257e6),
                            size: 40,
                          ),
                        ),
                      ),
                      onTap: () => controller.todoList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
