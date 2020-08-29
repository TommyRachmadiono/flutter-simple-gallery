import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tugas_galeri/detail_image.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List images = [
    'https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg',
    'https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999__340.jpg',
    'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305__340.jpg',
    'https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706__340.jpg',
    'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552__340.jpg',
    'https://cdn.pixabay.com/photo/2017/03/13/13/39/pancakes-2139844__340.jpg',
    'https://cdn.pixabay.com/photo/2016/08/07/15/02/blueberries-1576409__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__340.jpg',
    'https://cdn.pixabay.com/photo/2016/02/17/19/26/tomato-1205699__340.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gallery App',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailImage(
                                  image: images[index],
                                ),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Hero(
                              tag: images[index],
                              child: Image.network(
                                images[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
