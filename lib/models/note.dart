class Note{
  late int id;
  late String title;
  late String description;
  late String date;
  late bool finish= false;
  late bool archive=false;


  Note({required this.id, required this.title, required this.description,required this.date,required this.archive});
  Note.fromJson(Map<String,dynamic>data){
    this.id=data['id'];
    this.title=data['title'];
    this.description=data['description'];
    this.date=data['date'];
    this.finish=data['finish']==1? true:false;
    this.archive=data['archive']==1? true:false;

  }

}