import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../model/menu.dart';
import '../widgets/menu.dart';

class SideBarMenu extends StatefulWidget {
  @override
  _SideBarMenuState createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu>
    with SingleTickerProviderStateMixin {
  double maxWidth = 250;
  double minWidgth = 70;
  bool collapsed = false;
  int selectedIndex = 0;

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));

    _animation = Tween<double>(begin: maxWidth, end: minWidgth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Color(0XFF1b1e44), spreadRadius: 2)
            ],
            color: drawerBgColor,
          ),
          width: _animation.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0XFF1b1e44),
                    image: DecorationImage(
                      image: NetworkImage(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARQAAAC3CAMAAADkUVG/AAAAeFBMVEV2r98/isrq6us7iMnx7ux1r99rqt7u7Ozz8O0pgshxrd95suA1hslDjMvm6Otlo9hJkM1opdnW3+m80eapyOSGt+Cgw+OPu+F2pdOAtODh5eqCrNWYv+LQ3OhcndRQldCwx97G1OOIr9aTttimwNy7zeFknNCFrtZyfCExAAAE+klEQVR4nN3c6VrcMAyFYYQHwkBoKd2nZe9y/3fYAAVGM1nsxNbR8XcF1fvkR4UFByLt7eoQVHN5cHTgMBFZo1Saq2OXJo8oKJXVnVOTJxRZ/waorD4eo4cfSp5V7sxVVrduTf6j2KusPvk1eUEJ67vG1OSLY5MXFAntlaFK8/MUPfhYglBpvro2eUPpVC5tVJrDz75NtlCsVJp3352bbKNICJvyKs3mwLuJQpEgxVWazZHT/8ZuJVrlvLBKc3nq32QHRcLFu5IqzRWDyS7Ko0o5E78roG4XRcLNYalvxfEKqNtDkbaUiucVULePIu11ERTXK6CuB0XaPwVUfK+Auj6UEirOV0BdL0qnkvnHK95XQF0/irTfcqr4XwF1AyhZVQhWQN0QirQ/cqk0mzMuk2GUTuUkkwnBCqgbRpH2PocKxwqoG0GR9cNyFZIVUDeGkkGFZQXUjaIsVqFZAXXjKLL+tUSFZwXUTaAsUiFaAXVTKAtOEphWQN0kymwVqhVQN40y81CDawXURaDMUWFbAXUxKOkqdCugLgol9XyFbwXUxaGENkWFcAXUxaFIWMcfajCugLpIlITzlW4FRA+1tFiU6EMNzhVQF40iIcSokK6AuniU7luZPkmowiQFJeJQg3YF1KWgTB718K6AuiQUCRdjKiveFVCXhjJ6vsK8AuoSUSTcDJw6ca+AulSUofMV8hVQl4wi7XWPCvsKqEtH6TvUaDY+f+9tZjNQ9lX4V0DdHJTd85UKVkDdLBR9qFHDCqibh7KtUse6o5qJ0qmcVGsyG+XlfKWSFVA3G0Xavyf1rIC6+Siyvj8hfgUcawGKrB/qNFmE0u1BZ+h/f5EWoUi4rlJlGUqlKgtR6lRZiiLhfX0qi1FqVFmOUqFKBpT6VHKgSPhQl0oWlE4FPUfW8qBIqGovzIRSl0ouFJGKVPKhSD0bc0aUelQymoRqVDKiSDivRCUnSvet1PEAlBWl+1bQ82QpL0qnUsO3khlFpIZvJTuKXKBHWl5+lApUCqDwq5RAkQvyH68UQQnkKkVQJHA/HZZBIVcphMKtUgqFWqUYCrNKORTiZ+aCKLwqJVFoVYqisKqURSFVKYzC+fheGoVSpTgKo0p5FEIVAxS+8xULFLrzFRMUNhUbFLLzFSMUCUzPzFYoVIcadihE34ohCs+3YodCpGKIwqNiiUJzvmKKwqJii0JyvmKNQnGSYI7CoGKPQqACQPF/voJAcX++gkBx/8wMQfGugkFxrgJC8a2CQnGtAkPx/MyMQ3GsAkTxq4JEcasCRfGqgkVx+vgORvGpgkZxqYI2camCJhGP5ytokcfcqaBBnvJ2voL2eM7Z+Qqa4yVXKmiM1zw9M6MtXvN0voK2eMuRCpriLUd/fQVNsZUfFbTEdm7+zggaQuXlfAXtsJMPFbTCbi5OEtAIe3lQQRvs50AFTdATXgUt0BP+fAUt0Bf8mRkN0BtaBT1/f2AV9PgDYVXQ0w8FVUEPPxjymRk9+3BAFfToI+FU0JOPBVNBDz4aSgU993igx3f02BNhVNBTTwVRQQ89GeIkAT3zdAAV9MgR2augJ47J/HwFPXBU1ucr6HnjMlZBjxub6TMzetjYTA810MPGZ6iCHjU6y78zgp41PkMV9KgJ2Z2voCdNyex8BT1oWkYq6DETs1FBT5mayUkCesjkLFTQM6ZnoIIeMb1QXOUf0M19/vvSGgoAAAAASUVORK5CYII='),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: _animation.value >= 250 ? 30 : 20,
                          ),
                          SizedBox(
                            width: _animation.value >= 250 ? 20 : 0,
                          ),
                          (_animation.value >= 250)
                              ? Text('Anurag Tekale',
                                  style: menuListTileDefaultText)
                              : Container(),
                        ],
                      ),
                      SizedBox(
                        height: _animation.value >= 250 ? 20 : 0,
                      ),
                      Spacer(),
                      (_animation.value >= 250)
                          ? Text(
                              'Anurag Tekale',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Container(),
                      (_animation.value >= 250)
                          ? Text(
                              'anuragtekale300@gmail.com',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, counter) {
                    return Divider(
                      height: 2,
                    );
                  },
                  itemCount: menuItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuItemTile(
                      title: menuItems[index].title,
                      icon: menuItems[index].icon,
                      animationController: _animationController,
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    collapsed = !collapsed;
                    collapsed
                        ? _animationController.reverse()
                        : _animationController.forward();
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.close_menu,
                  progress: _animationController,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
