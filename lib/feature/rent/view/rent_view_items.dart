part of '../rent_view.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: ElevatedButton(
                style: OutlineStyle.circleStyle,
                onPressed: () {},
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                )),
          ),
          const Expanded(child: const _SearchField()),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchField extends StatelessWidget {
  const _SearchField();
  static const title = 'Search';
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        showSearch<bool>(context: context, delegate: SearchDelegateCustom());
      },
      decoration: const InputDecoration(
        hintText: title,
        contentPadding: EdgeInsets.zero,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.black12, width: 1),
        ),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}

class SearchDelegateCustom extends SearchDelegate<bool> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            this.close(context, false);
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Text('dummy');
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Text('dummy');
      },
    );
  }
}
