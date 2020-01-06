import 'package:daraapp/models/RoomModel.dart';
import 'package:daraapp/services/apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../colors/appColors.dart';
import '../colors/appColors.dart';
import '../colors/appColors.dart';
import '../colors/appColors.dart';
import '../colors/appColors.dart';
import '../colors/appColors.dart';
import '../utils/appfonts.dart';
import '../utils/appfonts.dart';
import '../utils/staticstext.dart';
import 'cardRooms.dart';

class SearchResultsListWidget extends StatefulWidget {
  @override
  _SearchResultsListWidgetState createState() =>
      _SearchResultsListWidgetState();
}

class _SearchResultsListWidgetState extends State<SearchResultsListWidget> {
  TextEditingController _city = TextEditingController();
  TextEditingController _min = TextEditingController();
  TextEditingController _max = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(DarakAPIS.post == null){
      DarakAPIS.post = api.fetchPost();
    }
  }

  DarakAPIS api = DarakAPIS();
  @override
  Widget build(BuildContext context) {
    Future fitreMethod() async {
      setState(() {
        DarakAPIS.post = api.filtreData(
            _city.text.toString(), _min.text.toString(), _max.text.toString());
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => SearchResultsListWidget(),
        ),
      );
    }

    void filtre() async {
      showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100.0),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                title: Text('Choise Your Filtre Search'),
                content: StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _city,
                        decoration: InputDecoration(
                          hintText: 'City',
                        ),
                      ),
                      TextField(
                        controller: _min,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: 'Min price'),
                      ),
                      TextField(
                        controller: _max,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: 'Max price'),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          fitreMethod();
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }),
              ),
            );
          });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () async {
                      filtre();
                    },
                    icon: Icon(
                      FontAwesome.filter,
                      color: AppColors.subTitle,
                      size: 35,
                    ),
                  ),
                  Spacer(),
                  Text(
                    StaticText.titleFiltre,
                    style: AppFonts.subTitle,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 8.0,
                right: 8.0,
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.80,
                    child: FutureBuilder<List<RoomsModel>>(
                      future: DarakAPIS.post,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return RoomsCard(
                                roomModel: snapshot.data[index],
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 100,
                                    child: LinearProgressIndicator(),
                                  ),
                                ),
                              ),
                              Text(
                                'جار التحميل...',
                                style: AppFonts.cardPrice,
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        );
                      },
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
