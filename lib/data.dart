


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.");
  sliderModel.setTitle("Get It");
  sliderModel.setImageAssetPath("assets/illustration.jpeg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("I swear I couldn’t love you more than I do right now, and yet I know I will tomorrow.");
  sliderModel.setTitle("Love It");
  sliderModel.setImageAssetPath("assets/illustration2.jpeg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Just get it right, “it is not too late to dream”. You can do it now! This very moment, I mean right now! Let’s begin!");
  sliderModel.setTitle("Live It");
  sliderModel.setImageAssetPath("assets/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}