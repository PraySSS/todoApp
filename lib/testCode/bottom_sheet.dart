/* 
ElevatedButton(
  onPressed: () {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder( // <-- SEE HERE
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(25.0),
          ),
        ),
        builder: (context) {
          return SizedBox(
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ...
              ],
            ),
          );
        });
  },
  child: const Text(
    'Choose Option',
    style: TextStyle(fontSize: 24),
  ),
) */