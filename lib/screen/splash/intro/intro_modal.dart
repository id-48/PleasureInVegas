import '../../../../utils/image_utils.dart';

class Commonpage {
  String? boldname;
  String? discription;
  String? image;
  Commonpage({this.boldname, this.discription, this.image});
}


List<Commonpage>  contents = [


  Commonpage(
    boldname: 'Food',
    discription: "The easiest way to order food from your favourite Restaurant!",
    image: introOne,
  ),

  Commonpage(
    boldname: 'NightLife',
    discription: 'Night Life Party for your family and friends!',
    image: introTwo,
  ),

  Commonpage(
    boldname: 'Hotels and casinos',
    discription: "Best discount on every single service we offer!",
    image: introThree,
  ),

  Commonpage(
    boldname: 'Transportation',
    discription: "Book any transportation and travel in the world!",
    image: introThree,
  ),



];

