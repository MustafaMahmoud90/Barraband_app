import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/font_weight_helper.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:education_app/models/course.dart';
import 'package:education_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: kPrimaryLight,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: SubTitle(text:   'المبتدئين', size: 25, color: Colors.white, weight: FontWeightHelper.semiBold)
                      ),
                      Container(
                          width: 30,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xfffbdb4c),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              ))),
                      // Positioned(
                      //   left: 0,
                      //   child: CustomIconButton(
                      //     child: const Icon(Icons.arrow_back_ios),
                      //     height: 35,
                      //     width: 35,
                      //     onTap: () => Navigator.pop(context),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemBuilder: (_, int index) {
                      return CourseContainer(
                        course: courses[index],
                      );
                    },
                    itemCount: courses.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  final Course course;
  const CourseContainer({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    title: course.name,
                  ))),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfffbdb4c),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                course.thumbnail,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(course.name),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SubTitle(text: course.name, size: 22, color: darkBlue, weight: FontWeightHelper.medium)),
                  // Text(
                  //   "Author ${course.author}",
                  //   style: Theme.of(context).textTheme.bodySmall,
                  // ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // LinearProgressIndicator(
                  //   value: course.completedPercentage,
                  //   backgroundColor: Colors.black12,
                  //   color: kPrimaryColor,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
