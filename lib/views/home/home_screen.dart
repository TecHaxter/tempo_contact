import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tempo_contacts/data/constants/constants.dart';
import 'package:tempo_contacts/data/models/models.dart';
import 'package:tempo_contacts/utils/utils.dart';
import 'package:tempo_contacts/views/common/common.dart';
import 'package:tempo_contacts/views/home/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Contact> allContacts = [];

  List<Contact> recentContacts = [];
  List<Contact> paginatedContacts = [];

  final ScrollController _scrollController = ScrollController();

  final alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  bool allLoaded = false, loading = false;

  String currentWord = 'A';

  @override
  void initState() {
    super.initState();
    loadJsonData();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels >=
                _scrollController.position.maxScrollExtent &&
            !loading) {
          _populateAllContactsJson();
        }
      });
    });
  }

  Future<void> loadJsonData() async {
    final String response =
        await rootBundle.loadString(AppAssets.employeesJson);
    final List data = await json.decode(response);
    allContacts = data.map((e) => Contact.fromJson(e)).toList();
    _populateRecentContacts();
    allContacts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    _populateAllContactsJson();
  }

  void populateAndScrollLetter(String letter) {
    loading = true;
    final index =
        allContacts.indexWhere((element) => element.firstName![0] == letter);
    if (paginatedContacts.length - 1 < index) {
      paginatedContacts = allContacts.getRange(0, index + 1).toList();
    }
    _scrollController.animateTo(
      index * 88.h,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    loading = false;
    setState(() {});
  }

  void _populateAllContactsJson() {
    if (allLoaded) {
      return;
    }
    loading = true;
    int lastToLoadIndex = (paginatedContacts.length + 50) > allContacts.length
        ? allContacts.length
        : paginatedContacts.length + 50;
    final newData = allContacts
        .getRange(paginatedContacts.length, lastToLoadIndex)
        .toList();
    paginatedContacts.addAll(newData);
    if (allContacts.length == paginatedContacts.length) {
      allLoaded = true;
    }
    loading = false;
    setState(() {});
  }

  void _populateRecentContacts() {
    recentContacts = allContacts.getRange(0, 10).toList();
    recentContacts = recentContacts
        .mapIndexed(
          (i, Contact e) {
            final now = DateTime.now();
            e.lastCalled = DateTime(
              now.year,
              now.month,
              now.day,
              now.hour,
              now.minute - (i * 2),
              now.second,
            );
            return e;
          },
        )
        .toList()
        .cast();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const AppNavBar(),
            ),
            sizedBoxWithHeight(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const AppSearchBar(),
            ),
            sizedBoxWithHeight(16),
            SizedBox(
              height: 152.h,
              width: double.maxFinite,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: recentContacts.length,
                separatorBuilder: (_, __) => sizedBoxWithWidth(8),
                itemBuilder: (context, index) => Container(
                  height: double.maxFinite,
                  width: 104.w,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 16.w : 0.0,
                    right: index == (recentContacts.length - 1) ? 16.w : 0.0,
                  ),
                  child: RecentContact(
                    imageUrl: recentContacts[index].imageUrl,
                    name:
                        '${recentContacts[index].firstName ?? ''} ${recentContacts[index].lastName ?? ''}',
                    lastCalled: recentContacts[index].lastCalled,
                  ),
                ),
              ),
            ),
            sizedBoxWithHeight(16),
            Container(
              width: double.maxFinite,
              height: 24.h,
              color: AppColors.lightGray,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              alignment: Alignment.centerLeft,
              child: Text(
                currentWord,
                style: AppTextStyles.text14w800Black,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: paginatedContacts.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 16.r,
                            left: 16.r,
                            bottom: index == (paginatedContacts.length - 1)
                                ? 16.r
                                : 0.0,
                          ),
                          child: ContactTile(
                            imageUrl: paginatedContacts[index].imageUrl,
                            name:
                                '${paginatedContacts[index].firstName} ${paginatedContacts[index].lastName}',
                            contactNumber:
                                paginatedContacts[index].contactNumber,
                            onForegroundChanged: (v) {
                              currentWord = paginatedContacts[index]
                                  .firstName![0]
                                  .toUpperCase();
                              WidgetsBinding.instance
                                  ?.addPostFrameCallback((_) {
                                setState(() {});
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: alphabets.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          populateAndScrollLetter(alphabets[index]);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            alphabets[index],
                            style: AppTextStyles.text8w500Black.copyWith(
                              color: currentWord == alphabets[index]
                                  ? AppColors.darkBlueAccent
                                  : AppColors.theBlack,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
