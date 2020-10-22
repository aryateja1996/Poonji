class SliderModel {
  List<String> text = [
    'Investment For Your Future. Just Join , And You Will Be Delighted',
    'We are committed to the principle of revenue maximization and reduction of the financial risks at investing.',
    ' Find out what the returns on your current investments will be valued at, in future',
  ];
  List<String> img = [
    'assets/onboarding/1.jpg',
    'assets/onboarding/2.jpg',
    'assets/onboarding/3.jpg'
  ];
  String imagepath;
  String title;
  String description;

  SliderModel({this.imagepath, this.title, this.description});

  void setImagepath(String getImagepath) {
    imagepath = getImagepath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImagepath() {
    return imagepath;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

List<SliderModel> getSliders() {
  List<SliderModel> slides = List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  sliderModel.setImagepath(sliderModel.img[0]);
  sliderModel.setTitle('Search');
  sliderModel.setDescription(sliderModel.text[0]);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setImagepath(sliderModel.img[1]);
  sliderModel.setTitle('Search');
  sliderModel.setDescription(sliderModel.text[1]);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setImagepath(sliderModel.img[2]);
  sliderModel.setTitle('Search');
  sliderModel.setDescription(sliderModel.text[2]);
  slides.add(sliderModel);

  return slides;
}

class DashBoardSlider {
  List<String> images = [
    'assets/carasol/funds.png',
    'assets/carasol/bonds.png',
    'assets/carasol/ipo.png',
    'assets/carasol/explore.png'
  ];
  List<String> titles = ['Mutual Funds', 'Bonds', 'IPO', 'Explore More'];
  List<String> discs = [
    'Start Your Investment Journey with us',
    'Its a good time to invest in bonds',
    'Get your funds invested in new IPO’s coming in',
    'Explore the amazing features that  we provide',
  ];
  List<String> btns = ['Get Mutual Funds', 'Get Bonds', 'IPO', 'Explore More'];

  String cardImgurl;
  String cardTitle;
  String cardDescription;
  String cardBtn;

  void setcardImg(String cardImgurl) {
    cardImgurl = cardImgurl;
  }

  void setcardTitle(String cardTitle) {
    cardTitle = cardTitle;
  }

  void setcardDescription(String cardDescription) {
    cardDescription = cardDescription;
  }

  void setcardBtn(String cardBtn) {
    cardBtn = cardBtn;
  }

  String getcardBtn() {
    return cardBtn;
  }

  String getcardDescription() {
    return cardDescription;
  }

  String getcardTitle() {
    return cardTitle;
  }

  String getcardImg() {
    return cardImgurl;
  }
}

List<DashBoardSlider> getCards() {
  List<DashBoardSlider> list = new List<DashBoardSlider>();
  DashBoardSlider cards = new DashBoardSlider();

  cards.setcardImg(cards.images[1]);
  cards.setcardBtn(cards.btns[1]);
  cards.setcardDescription(cards.discs[1]);
  cards.setcardTitle(cards.titles[1]);
  list.add(cards);

  cards = new DashBoardSlider();
  cards.setcardImg(cards.images[0]);
  cards.setcardBtn(cards.btns[0]);
  cards.setcardDescription(cards.discs[0]);
  cards.setcardTitle(cards.titles[0]);
  list.add(cards);

  cards = new DashBoardSlider();
  cards.setcardImg(cards.images[2]);
  cards.setcardBtn(cards.btns[2]);
  cards.setcardDescription(cards.discs[2]);
  cards.setcardTitle(cards.titles[2]);
  list.add(cards);

  cards = new DashBoardSlider();
  cards.setcardImg(cards.images[3]);
  cards.setcardBtn(cards.btns[3]);
  cards.setcardDescription(cards.discs[3]);
  cards.setcardTitle(cards.titles[3]);
  list.add(cards);

  return list;
}
