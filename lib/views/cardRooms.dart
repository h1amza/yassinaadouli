import 'package:daraapp/colors/appColors.dart';
import 'package:daraapp/models/RoomModel.dart';
import 'package:daraapp/utils/appfonts.dart';
import 'package:daraapp/views/roomDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RoomsCard extends StatelessWidget {
  final RoomsModel roomModel;

  const RoomsCard({Key key, this.roomModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoomDetails(
              roomModel: roomModel,
            ),
          ),
        );
      },
      child: Card(
        child: Container(
          height: 200,
          child: Center(
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: Image.network(
                    '${roomModel.postImages.isNotEmpty ? roomModel.postImages.first.guid ?? 'http://www.camera-m.com/img/placeholder-image-wide.png' : 'http://www.camera-m.com/img/placeholder-image-wide.png'}',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 140),
                    SizedBox(
                      height: 60,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
                        color: AppColors.cardColor.withOpacity(0.8),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    '${roomModel.postTitle}',
                                    maxLines: 1,
                                    style: AppFonts.cardTitle,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${roomModel.propertyPrice}' + r""" $""",
                                      style: AppFonts.cardPrice,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              children: <Widget>[
                                RatingBar(
                                  initialRating: roomModel
                                          ?.propertyStars?.accuracy
                                          ?.toDouble() ??
                                      0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  ignoreGestures: true,
                                  itemCount: 5,
                                  itemSize: 25.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0.5),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: AppColors.colorPrincipal,
                                    size: 15,
                                  ),
                                  onRatingUpdate: (double value) {},
                                ),
                                Spacer(),
                                Text(
                                  'لليلة',
                                  style: AppFonts.cardPrice,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
