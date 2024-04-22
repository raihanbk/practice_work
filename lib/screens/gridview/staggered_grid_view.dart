import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterfeb/screens/gridview/widget/stag_product_listTile.dart';

class StagGridView extends StatelessWidget {
  const StagGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          'Staggered Grid View',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: const [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: ReaderTile(
                    image: NetworkImage(
                        'https://tourstravelfinder.com/wp-content/uploads/2023/08/france-eiffel-tower-paris.jpg'),
                    title: 'Wallpaper 1',
                    subTitle: '20 Jun 2013',
                    subTitle2: 'carl Sagan',
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: ReaderTile(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/4982737/pexels-photo-4982737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    height: 300,
                    title: 'Wallpaper 2',
                    subTitle: '21 Jun 2013',
                    subTitle2: 'carl Sagan',
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: ReaderTile(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3022403/pexels-photo-3022403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    title: 'Wallpaper 3',
                    subTitle: '22 Jun 2013',
                    subTitle2: 'carl Sagan',
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: ReaderTile(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/4503875/pexels-photo-4503875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    title: 'Wallpaper 4',
                    subTitle: '23 Jun 2013',
                    subTitle2: 'carl Sagan',
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: ReaderTile(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/2927854/pexels-photo-2927854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    title: 'Wallpaper 5',
                    subTitle: '24 Jun 2013',
                    subTitle2: 'carl Sagan',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
