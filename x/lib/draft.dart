/*




GestureDetector(
  onTap: (){
    
      
    
    
  },
  child: Padding(
    padding: EdgeInsets.all(10),
    child: CircleAvatar(
        radius: 15, backgroundImage: AssetImage("images/profilePhoto.jpg")),
  ),
)





Row(
      textDirection: TextDirection.rtl,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("images/$postAvatar"),
        ),
        Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  postWriter,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(postUser)
              ],
            ),
            Expanded(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: AssetImage("images/$postImage"),
                ),
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(Icons.chat_bubble_outline_outlined,
                    semanticLabel: reach.elementAt(0).toString()),
              ],
            )
          ],
        )
      ],
    );




























            */