
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwnm/theclasses.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  String _image;
   bool tapped1,tapped2,tapped3,tapped4;
 static  double  siz=1, siz2=1, siz3=1;
 TextEditingController con1= TextEditingController();
  TextEditingController con2= TextEditingController();
  TextEditingController con3= TextEditingController();
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image =pickedFile.path;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
               title: Text("Profile"),
               backgroundColor: PCDLStyle.pcdlBlue,
              
             ),
             body: SingleChildScrollView(
                            child: SafeArea(
                 child:Column(
                   children: <Widget>[
                      SizedBox(height: 35,),
                      Stack(
                       children: [
                         CircleAvatar(
                         radius: 50,
                
                    backgroundColor:Colors.grey,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: PCDLStyle.pcdlBlue,
                      backgroundImage:  _image == null
                          ?AssetImage("Older network image")
                          :AssetImage(_image),
    
                    ),
    
                  ),
                     /*Addded this keys to the IOS info.plist
                     <Key>NSPhotoLibraryUsageDescription</Key>
	                    <Key>NSCameraUsageDescription</Key>
	                   <Key>NSMicrophoneUsageDescription</Key>
	                   ******************************************
	                   */
                   GestureDetector(
                     onTap:(){getImage();},
                     child: Container(padding: EdgeInsets.all(2),
                     decoration: BoxDecoration(  borderRadius: new BorderRadius.all(new Radius.circular(40.0))),
                     child: Icon(Icons.photo_camera,size: 25,color: Colors.blue,),),
                   ),
                  ],
                      ),
                      SizedBox(height:10,),
                      Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 30,),
                        tapped1==null?
                        AnimatedOpacity(
                          duration: Duration(seconds:1,microseconds: 400),
                          opacity: siz,
                          child: Text(PCDLGlobal.userTitle+" "+PCDLGlobal.userFirstname+" "+PCDLGlobal.userLastname, style: TextStyle(color: PCDLStyle.pcdlBlue,
                      fontWeight:FontWeight.bold, fontSize:22  )),
                        )
                            :Container(
                               width: 250,
                              height: 50,
                              child: TextField(
                                controller: con1,
                               textCapitalization: TextCapitalization.sentences,
                               style: TextStyle(color: Colors.blue),
                               decoration: InputDecoration(
                                 hintText:PCDLGlobal.userTitle+" "+PCDLGlobal.userFirstname+" "+PCDLGlobal.userLastname,
                                 hintStyle: TextStyle(color: Colors.blue),
                              ),

                               ),

                            ),
                            SizedBox(width: 40,),
                            GestureDetector(onTap: (){
                              setState(() {
                                siz=0;
                              });
                              Future.delayed(Duration(seconds: 1,microseconds: 200),(){
                               setState(() {
                                 tapped1=true;
                               });
                               siz=1;
                              })    ;

                            }, child: Icon(Icons.edit,size: 20,color: PCDLStyle.pcdlBlue,))

                        ],
                      ),
                       SizedBox(height:20,),
                      Container(height:4,color: Colors.grey[200],),
                      SizedBox(height:10,),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(PCDLGlobal.subcriptionName,textAlign:TextAlign.center,style:TextStyle(color: PCDLStyle.pcdlBlue,
                            fontWeight:FontWeight.bold,letterSpacing:2, fontSize:18  ),),
                              SizedBox(height:32,),

                            Row(mainAxisAlignment: MainAxisAlignment.center, children:<Widget>[Text("Turn on notifications"), SizedBox(width:100),Switch( activeColor: Colors.blue, value:false,  onChanged: (value) { })]),
                            SizedBox(height:15,),

                           SizedBox(width:200, child: Container( alignment:Alignment.center, decoration: new BoxDecoration(
                                      color:PCDLStyle.pcdlBlue, borderRadius: new BorderRadius.all(new Radius.circular (20.0)),
                                 ),
                                child:  FlatButton(onPressed:null, child: Text("Change password",textAlign:TextAlign.center ,style:TextStyle(color:Colors.white,
                            fontWeight:FontWeight.bold, fontSize:15  ),),),
                                  )),
                            tapped2==null?
                            AnimatedOpacity(
                              duration: Duration(seconds:1,microseconds: 400),
                              opacity: siz2,
                              child: Text('Email: '+PCDLGlobal.userEmail, style: TextStyle(color: PCDLStyle.pcdlBlue,
                                  fontWeight:FontWeight.bold, fontSize:22  )),
                            )
                                :Container(
                              width: 250,
                              height: 50,
                              child: TextField(
                                controller: con2,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.blue),
                                decoration: InputDecoration(
                                  hintText:'Email: '+PCDLGlobal.userEmail,
                                  hintStyle: TextStyle(color: Colors.blue),
                                ),

                              ),

                            ),
                            SizedBox(width: 40,),
                            GestureDetector(onTap: (){
                              setState(() {
                                siz2=0;
                              });
                              Future.delayed(Duration(seconds: 1,microseconds: 200),(){
                                setState(() {
                                  tapped2=true;
                                });

                              })    ;

                            }, child: Icon(Icons.edit,size: 20,color: PCDLStyle.pcdlBlue,)),
                               SizedBox(height:32,),
                            tapped3==null?
                            AnimatedOpacity(
                              duration: Duration(seconds:1,microseconds: 400),
                              opacity: siz3,
                              child: Text(PCDLGlobal.changechurch, style: TextStyle(color: PCDLStyle.pcdlBlue,
                                  fontWeight:FontWeight.bold, fontSize:22  )),
                            )
                                :Container(
                              width: 250,
                              height: 50,
                              child: TextField(
                                controller: con3,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.blue),
                                decoration: InputDecoration(
                                  hintText:PCDLGlobal.changechurch,
                                  hintStyle: TextStyle(color: Colors.blue),
                                ),

                              ),

                            ),
                            SizedBox(width: 40,),
                            GestureDetector(onTap: (){
                              setState(() {
                                siz3=0;
                              });
                              Future.delayed(Duration(seconds: 1,microseconds: 200),(){
                                setState(() {
                                  tapped3=true;
                                });

                              })    ;

                            }, child: Icon(Icons.edit,size: 20,color: PCDLStyle.pcdlBlue,)),
                            SizedBox(height:32,),
                          ],
                        ),
                      )
                        ,
                     SizedBox(width:100, child: Container( alignment:Alignment.center, decoration: new BoxDecoration(
                       color:PCDLStyle.pcdlBlue, borderRadius: new BorderRadius.all(new Radius.circular (20.0)),
                     ),
                       child:  FlatButton(onPressed:(){
                         if(con1.text.length>1){
                             var splittedtext= con1.text.split(" ");
                           setState(() {
                             PCDLGlobal.userTitle= splittedtext[0];
                             PCDLGlobal.userFirstname= splittedtext[1];
                             PCDLGlobal.userLastname= splittedtext[2];
                           });


                         }
                        if(con2.text.length>1){
                          setState(() {
                            PCDLGlobal.userEmail=con2.text;
                          });

                         }
                         if(con3.text.length>1){
                           setState(() {
                              PCDLGlobal.changechurch=con3.text;
                           });

                         }

                       }, child: Text("Save",textAlign:TextAlign.center ,style:TextStyle(color:Colors.white,
                           fontWeight:FontWeight.bold, fontSize:15  ),),),
                     )),
                   ],) ,),
             ),
    );
  }
}