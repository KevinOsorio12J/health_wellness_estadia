import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:paciente_medico_app/provider/providers.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .tertiary
            .withOpacity(Constants.colorSecundaryOpacity),
        //borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        children: [
          if (!ResponsiveLayout.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: Provider.of<MenuProvider>(context).controlMenu,
            ),
          if (!ResponsiveLayout.isPhone(context))
            Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Health & Wellness.",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary)))),
          Spacer(),
          ProfileCard()
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Constants.primaryPanding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notifications_active),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          ),
          Image.asset(
            "assets/client_img.png",
            height: !ResponsiveLayout.isPhone(context) ? 44 : 40,
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          //color: bgColor,
          borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.search,
              //color: hintColor
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration.collapsed(
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                      //color: hintColor
                      ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
