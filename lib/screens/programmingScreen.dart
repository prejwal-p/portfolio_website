import 'package:flutter/material.dart';
import 'package:portfolio/models/category.dart';
import 'package:portfolio/screens/navigationBar.dart';
import 'package:portfolio/utilities/hoverButton.dart';
import 'package:portfolio/utilities/inverseHoverButton.dart';
import 'package:portfolio/utilities/onHover.dart';
import 'package:portfolio/utilities/utils.dart';
import 'homeScreen.dart';

class ProgrammingScreen extends StatefulWidget {
  ProgrammingScreen({Key? key}) : super(key: key);
  static const String id = 'programming_screen';

  @override
  State<ProgrammingScreen> createState() => _ProgrammingScreenState();
}

class _ProgrammingScreenState extends State<ProgrammingScreen> {
  final List<Projects> projects = Utils.getProjects();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                'Flutter Projects',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: OnHoverWidget(builder: ((isHovered) {
                            final Color textColor =
                                isHovered ? Colors.white : Colors.black;
                            final Color backColor =
                                isHovered ? Colors.black : Colors.white;

                            return Card(
                              color: backColor,
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                height: 500,
                                width: 900,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              projects[index].name!,
                                              style: TextStyle(
                                                  fontSize: 35,
                                                  color: textColor),
                                            ),
                                            Text(
                                              projects[index].description!,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w200,
                                                  color: textColor),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
                                              child: InverseHoverButton(
                                                  buttonText: 'View Project',
                                                  pageUrl: projects[index].url),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Positioned.fill(
                                          child: Image.asset(
                                            projects[index].imageLoc!,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
