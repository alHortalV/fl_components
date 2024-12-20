import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    void add5() {
      final lastId = imagesIds.last;
      imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
      setState(() {});
    }

    Future fetchData() async {
      if (isLoading) return;
      isLoading = true;
      setState(() {});
      await Future.delayed(const Duration(seconds: 2));
      add5();
      isLoading = false;
      setState(() {});
    }

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage("assets/jar-loading.gif"),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesIds[index]}'));
              },
            ),
            if (isLoading)
              Positioned(
                  bottom: 40,
                  left: (size.width / 2) - 30,
                  child: const _LoadingIcon()),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: 20,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const CircularProgressIndicator());
  }
}
