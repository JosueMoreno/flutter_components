import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    scrollController.removeListener(() {});
    scrollController.dispose();
    super.dispose();
  }

  void addElements() {
    final int lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => e + lastId));
    setState(() {});
  }

  Future<void> fetchData() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));
    addElements();

    setState(() {
      isLoading = false;
    });

    if (scrollController.position.pixels + 222 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 144,
      duration: const Duration(milliseconds: 333),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Center(
          child: Icon(Icons.logout),
        ),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: Theme.of(context).primaryColor,
              onRefresh: () async {
                await Future.delayed(const Duration(seconds: 2));
                final int lastId = imagesId.last;
                imagesId.clear();
                imagesId.add(lastId + 1);
                addElements();
              },
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesId.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 333,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage(
                      'assets/images/jar-loading.gif',
                    ),
                    image: NetworkImage(
                      'https://picsum.photos/id/${imagesId[index]}/500/400',
                    ),
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 33,
                left: MediaQuery.of(context).size.width * 0.5 - 33,
                child: const LoadingIcon(),
              ),
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.88),
        shape: BoxShape.circle,
      ),
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
