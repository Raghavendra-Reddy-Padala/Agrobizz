import 'package:flutter/material.dart';

class MySliverappbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverappbar({super.key,
  required this.child,
  required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      expandedHeight: 450,
      floating: false,
      pinned: true,
      collapsedHeight: 110,
      actions: [
        //cartbuuton
        IconButton(onPressed: (){
          //go to cartpage
        }, icon:const Icon(Icons.search),tooltip:"Search",
        )
      ],
      title:const Text("AGROBIZZ",style: TextStyle(color: Colors.blue),),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0,right: 0,bottom: 0),
      ),
    );
  }
}