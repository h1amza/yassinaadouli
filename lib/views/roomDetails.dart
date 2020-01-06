import 'dart:async';
import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/MsgSend.dart';
import 'package:daraapp/models/RoomModel.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:daraapp/views/cardroom.dart' show AppCardRoom;
import 'package:daraapp/views/orderDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class RoomDetails extends StatefulWidget {
  final RoomsModel roomModel;

  const RoomDetails({Key key, this.roomModel}) : super(key: key);
  @override
  _RoomDetailsState createState() => _RoomDetailsState();
}

class _RoomDetailsState extends State<RoomDetails> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _kGooglePlex;

  CameraPosition _kLake;

  @override
  void initState() {
    super.initState();
    MsgSend.postTitle = '${widget.roomModel.postTitle}';
    MsgSend.iduserRoom = '${widget.roomModel.userId}';
    MsgSend.idDroom = '${widget.roomModel.postId}';
    print('aaaaaaaaaa');
    _kLake = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(double.tryParse(widget.roomModel.propertyLatitude),
            double.tryParse(widget.roomModel.propertyLongitude)),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);
    _kGooglePlex = CameraPosition(
      target: LatLng(double.tryParse(widget.roomModel.propertyLatitude),
          double.tryParse(widget.roomModel.propertyLongitude)),
      zoom: 14.4746,
    );
  }

  Future<bool> _selectDate() async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
        context: context,
        initialFirstDate: DateTime.now(),
        initialLastDate: (DateTime.now()).add(Duration(days: 7)),
        firstDate: DateTime(2019),
        lastDate: DateTime(2030),
        textDirection: TextDirection.rtl);
    if (picked != null && picked.length == 2) {
      //print(picked);
      //print("title: ${MsgSend.postTitle} ,ro ${MsgSend.idDroom} , id ${MsgSend.iduser},id rom iser${MsgSend.iduserRoom}");
      MsgSend.pikDate = picked;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => OrderDetails(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    void toOrder() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => OrderDetails(),
        ),
      );
    }

    return Container(
      color: AppColors.barColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              '${widget.roomModel.postTitle}',
              style: AppFonts.appbarTitle,
            ),
            backgroundColor: AppColors.barColor,
          ),
          body: ListView(
            children: <Widget>[
              AppCardRoom(
                roomModel: widget.roomModel,
              ),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      child: Image.network(
                        '${widget.roomModel.postImages.isNotEmpty ? widget.roomModel.postImages.first.guid ?? 'http://www.camera-m.com/img/placeholder-image-wide.png' : 'http://www.camera-m.com/img/placeholder-image-wide.png'}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Icon(
                                FontAwesome.home,
                                size: 30,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.propertyRooms ?? ''}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                                child: SizedBox(
                                  height: 20,
                                  width: 1,
                                  child: Container(
                                    color: AppColors.cardPrice,
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesome.bed,
                                size: 30,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.propertyBedrooms ?? '1'}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                                child: SizedBox(
                                  height: 20,
                                  width: 1,
                                  child: Container(
                                    color: AppColors.cardPrice,
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesome.users,
                                size: 25,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.curMm ?? 'لا'}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                                child: SizedBox(
                                  height: 20,
                                  width: 1,
                                  child: Container(
                                    color: AppColors.cardPrice,
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesome.bathtub,
                                size: 25,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.propertyBathrooms ?? '0'}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                                child: SizedBox(
                                  height: 20,
                                  width: 1,
                                  child: Container(
                                    color: AppColors.cardPrice,
                                  ),
                                ),
                              ),
                              Icon(
                                FontAwesome.tv,
                                size: 25,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.tv ?? 'لا'}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                                child: SizedBox(
                                  height: 20,
                                  width: 1,
                                  child: Container(
                                    color: AppColors.cardPrice,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                FontAwesome.wifi,
                                size: 30,
                                color: AppColors.aliZarin,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${widget.roomModel.internet ?? '0'}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: AppColors.mdNigthBlue,
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
                child: Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Center(
                            child: Icon(
                              FontAwesome.newspaper_o,
                              size: 30,
                              color: AppColors.roomTitles,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'الوصف:',
                            style: AppFonts.roomsTitles,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        children: <Widget>[
                          Text(
                            '${widget.roomModel.postContent}',
                            style: AppFonts.subTitle,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: AppColors.mdNigthBlue,
                      height: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesome.cc_visa,
                            size: 25,
                            color: AppColors.roomTitles,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'قائمة الاسعار:',
                          style: AppFonts.roomsTitles,
                          textDirection: TextDirection.rtl,
                        ),
                        Divider(
                          color: AppColors.mdNigthBlue,
                          height: 1,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      child: Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'السعر: ${widget.roomModel.propertyPrice + r"""$""" ?? ''}',
                              style: AppFonts.subTitle,
                              textDirection: TextDirection.rtl,
                              maxLines: 2),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'سعر الليلة ل 7 يام: ${widget.roomModel.cleaningFee + r"""$""" ?? ''}',
                            style: AppFonts.subTitle,
                            textDirection: TextDirection.rtl,
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'سعر الليلة لمدة اكثر من 30 يوم ${widget.roomModel.propertyPricePerMonth + r"""$""" ?? ''}',
                            style: AppFonts.subTitle,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'رسوم التنظيف: ${widget.roomModel.cleaningFeePerDay + r"""$""" ?? ''}',
                            style: AppFonts.subTitle,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            color: AppColors.mdNigthBlue,
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Icon(
                                FontAwesome.map_marker,
                                size: 30,
                                color: AppColors.aliZarin,
                              ),
                            ),
                            Text(
                              'العنوان:',
                              style: AppFonts.roomsTitles,
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'العنوان: ${widget.roomModel.propertyAddress ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'المدينة: ${widget.roomModel.newpropertyCity ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'المنطقة: ${widget.roomModel.newpropertyArea ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'الدولة: ${widget.roomModel.propertyCountry ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'الحالة: ${widget.roomModel.propertyState ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'رمز البريد: ${widget.roomModel.propertyZip ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'الدولة: ${widget.roomModel.propertyCountry ?? ''}',
                          style: AppFonts.subTitle,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          child: GoogleMap(
                            mapType: MapType.normal,
                            markers: _createMarker(),
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: MaterialButton(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.check),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'احجز الان',
                                style: AppFonts.btnTxt,
                              ),
                            ],
                          ),
                          onPressed: () async {
                            _selectDate();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
        markerId: MarkerId("marker_1"),
        position: LatLng(
          double.tryParse(widget.roomModel.propertyLatitude),
          double.tryParse(widget.roomModel.propertyLongitude),
        ),
      ),
    ].toSet();
  }
}
