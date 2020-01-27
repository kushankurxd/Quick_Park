import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:quick_park/Widget/BottomSheet.dart';
import 'package:quick_park/Widget/marker.dart';

class MapView extends StatefulWidget{

  @override
  State createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context,true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black.withOpacity(0.6),
              size: 20,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          FlutterMap(
              options:  MapOptions(
                  center: LatLng(23.5231,86.23143),
                  minZoom: 13.5,
                  maxZoom: 14.5,
                  zoom: 14.0
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate:
                    "http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}",
                    subdomains:['mt0','mt1','mt2','mt3']
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                        point: LatLng(23.521,86.23043),
                        builder: (context) {
                          return GestureDetector(
                            onTap: (){
                              _showBottomSheet();
                            },
                              child: MeMarker()
                          );
                        }
                    ),
                    Marker(
                      width: 40,
                      height: 40,
                      point: LatLng(23.5301,86.23643),
                      builder: (context) {
                        return CustomMarker(Icons.local_parking,'34');
                      }
                    ),
                    Marker(
                        width: 40,
                        height: 40,
                        point: LatLng(23.5361,86.22283),
                        builder: (context) {
                          return CustomMarker(Icons.local_bar,'10');
                        }
                    ),
                    Marker(
                        width: 40,
                        height: 40,
                        point: LatLng(23.5051,86.22383),
                        builder: (context) {
                          return CustomMarker(Icons.local_movies,'16');
                        }
                    ),
                    Marker(
                        width: 40,
                        height: 40,
                        point: LatLng(23.5161,86.24283),
                        builder: (context) {
                          return CustomMarker(Icons.restaurant_menu,'24');
                        }
                    )
                  ],
                ),
              ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28,top: 100,right: 28,bottom: 10),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side: BorderSide.none,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  title: TextField(
                    enabled: false,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Where do you go?',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                            letterSpacing: 0.2
                        )
                    ),
                  ),
                  trailing: Icon(
                    Icons.search,
                    size: 27,
                    color: Colors.orange[400],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _visibility,
            child: DraggableSheet()
          ),
        ],
      ),
    );
  }

  bool _visibility = false;
  _showBottomSheet(){
    setState(() {
      _visibility = _visibility ? false : true;
    });
  }
}