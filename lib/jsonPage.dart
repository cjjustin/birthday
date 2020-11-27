import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Shambhu's Slam book ",
          style: GoogleFonts.josefinSans(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.greenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: FutureBuilder(
            builder: (context, snapshot) {
              var showData = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          elevation: 15,
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            splashColor: Colors.red,
                            onTap: () {},
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Love from',
                                            style: GoogleFonts.satisfy(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(showData[index]['enterYourName'],
                                              style: GoogleFonts.pacifico(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Spacer(),
                                          IconButton(
                                            icon: Icon(
                                              Icons.local_activity,
                                              color: Colors.redAccent,
                                              size: 40.0,
                                            ),
                                            //onPressed: BOOKMARK,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      padding: EdgeInsets.all(3.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              'I meet you for the first time was at : ',
                                              style: GoogleFonts.pacifico(
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              showData[index][
                                                  'whereDidYouFirstMeetShambhu'],
                                              style: GoogleFonts.pacifico(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'I like to call you : ',
                                            style: GoogleFonts.pacifico(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            showData[index][
                                                'anyNicknameYouWouldLikeToHim'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text('You are superb at : ',
                                              style: GoogleFonts.pacifico(
                                                fontSize: 15.0,
                                              )),
                                          Text(
                                            showData[index]
                                                ['oneGoodThingAboutHim'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'This song describes the best of my feelings : ',
                                            style: GoogleFonts.pacifico(
                                                fontSize: 15.0),
                                          ),
                                          Text(
                                            showData[index]
                                                ['dedicateASongForHim'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'You are my : ',
                                          style: GoogleFonts.pacifico(
                                              fontSize: 15.0),
                                        ),
                                        Text(
                                          showData[index]['hesYour'],
                                          style: GoogleFonts.pacifico(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'I always wanted to say that : ',
                                            style: GoogleFonts.pacifico(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            showData[index][
                                                'anyPersonalMessageLetYourFeelingsFlow'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'I will never forget : ',
                                            style: GoogleFonts.pacifico(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            showData[index]
                                                ['bestMomentWithShambhu'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'I Dare you to : ',
                                            style: GoogleFonts.pacifico(
                                                fontSize: 15.0),
                                          ),
                                          Text(
                                            showData[index][
                                                'anyDareYouWantToGiveHimForHisBirthday'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'We get invisible for a day and : ',
                                            style: GoogleFonts.pacifico(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Text(
                                            showData[index][
                                                'ifYouAndShambhuGotInvisibleForADayWhatWouldBeTheMostSharaarateThingYouBothWouldDo'],
                                            style: GoogleFonts.pacifico(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          )),
                    ),
                  );
                },
                itemCount: showData.length,
              );
            },
            future: DefaultAssetBundle.of(context)
                .loadString("assets/emprecord.json"),
          ),
        ),
      ),
    );
  }
}
