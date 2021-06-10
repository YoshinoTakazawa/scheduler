int page = 0;//変数定義
int i, t, y;
int deg;//回転角度
float gx = 80;//初期値
float gy = 590;
float gw = 300;
float gh = 150;

String csvDataLine[];//String型のcsvDataLineという配列を作成
String date[] = {"月", "火", "水", "木", "金", "土", "日"};
;//String型のdateという配列を作成
String num[] = {"5", "10", "15"};
;//String型のnumという配列を作成

PImage img_tako;//画像定義
PImage img_germany;
PImage img_canada;
PImage img_tenki;
PImage img_top, img_topb;
PImage img_todo;
PImage img_taisho;
PImage img_marutako;
PImage img_oct1, img_oct2;
PImage img_study, img_c, img_youtube, img_fin,img_small;


void setup() {
  size(480, 640);//画面サイズ

  img_tako = loadImage("takoyaki.gif");//使用する画像をloadする
  img_germany = loadImage("germany.png");
  img_canada = loadImage("canada.png");
  img_tenki=loadImage("tenki.jpg");
  img_takotimer=loadImage("takoyaki_timer.jpg");
  img_takotimer.resize(480, 640);//画像サイズ調整
  img_top= loadImage( "top.jpg" );
  img_top.resize(480, 640);
  img_todo = loadImage( "todo.png" );
  img_todo.resize( 480, 640 );
  img_taisho=loadImage("taisho.jpg");
  img_taisho.resize( 480, 640 );
  img_marutako=loadImage("marutako.png");
  img_marutako.resize( 60, 60 );
  img_oct1 = loadImage( "oct1.png" );
  img_oct1.resize( 200, 200 );
  img_oct2 = loadImage( "oct2.png" );
  img_oct2.resize( 200, 200 );
  img_topb = loadImage("top_b.png");
  img_topb.resize( 60, 60 );
  img_study = loadImage( "study.png" );
  img_study.resize( 480, 640 );
  img_c = loadImage( "calendar.jpg" );
  img_c.resize( 480, 640 );
  img_youtube = loadImage( "youtube.png");
  img_youtube.resize( 480, 640 );
  img_fin = loadImage( "fin.png");
  img_fin.resize( 60, 60 );
  img_small = loadImage( "oct1.png");
  img_small.resize( 60, 60 );

  loadData();//関数loadDataを読み込む

  JSONObject w_o = loadJSONObject(baseURL_o + city_o);//大阪の天気を読み込む
  title_o = w_o.getString("title");
  forecasts_o = w_o.getJSONArray("forecasts");

  JSONObject w_h = loadJSONObject(baseURL_h + city_h);//函館の天気を読み込む
  title_h = w_h.getString("title");
  forecasts_h = w_h.getJSONArray("forecasts");

  rectLX = width/2-50;//初期値
  rectLY = 50;
  rectRX = width/2+50;
  rectRY = 50;

  deg = 0;//初期値設定

  minim = new Minim(this);
}

void mouseClicked() {

  //マウスボタンを押して、その後離した時に呼び出される
  if (mouseX>0&&mouseX<68&&mouseY>180&&mouseY<250) { //画像遷移
    page = 1; // current page will be changed to 1
  } else if (mouseX>250&&mouseX<380&&mouseY>300&&mouseY<380) {
    page = 2; // current page will be changed to 2
  } else if (mouseX>275&&mouseX<350&&mouseY>155&&mouseY<260) {
    page = 3; // current page will be changed to 3
  } else if (mouseX>70&&mouseX<145&&mouseY>215&&mouseY<430) {
    page = 4; // current page will be changed to 4
  } else if (mouseX>140&&mouseX<350&&mouseY>260&&mouseY<555) {
    page = 5; // current page will be changed to 5
  } else if (mouseX>395&&mouseX<480&&mouseY>170&&mouseY<415) {
    page = 6; // current page will be changed to 6
  } else if (mouseX>420&&mouseX<480&&mouseY>0&&mouseY<60) {
    page = 0;
  }

  if (mouseX>30&&mouseX<120&&mouseY>120&&mouseY<220&&start == false) {
    starter = true;//指定範囲内でclickされたらtrueを返す
  }
  if (mouseX>350&&mouseX<445&&mouseY>120&&mouseY<225&&start == true) {
    starter = false;//指定範囲内でclickされたらfalseを返す
  }
  start = starter;
  //todo_c();
}


void draw() {
  background(127);
  top_page();//関数top_pageを読み込む

  /* show page */
  switch(page) { //画面遷移

  case 1:
    disp1();
    break;
  case 2:
    takoyaki_timer();
    break;
  case 3:
    disp3();
    break;
  case 4:
    disp4();
    break;
  case 5:
    disp5();
    break;
  case 6:
    disp6();
    break;
  default:
    break;
  }
}


void mousePressed() {//マウスボタンを押した時に呼び出される
  // rect area
  takoyaki_timer_m();
  youtube();
  fin();
}
