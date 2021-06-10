/* show page 1 */
void disp1() {
  image(img_tenki, 0, 0);//背景画像読み込み

  int s = second();//秒
  int m = minute();//分
  int h = hour();//時

  int h_d = hour()-8;//ドイツ時差
  int h_c = hour()-16;//カナダ時差

  img_tenki.resize(480, 640);//画像サイズ調整
  background(img_tenki);  //背景画像

  image(img_tako, width/2-100, height/4-110, 220.5, 203);//画像読み込み
  image(img_germany, width/10-35, height/6+3, 120, 120);//画像読み込み
  image(img_canada, 3*width/4-30, height/6-5, 135, 135);//画像読み込み

  //Japan時計作成
  show_arm_s(s/60.0, 80, width/2, height/4);
  show_arm_m(m/60.0, 70, width/2, height/4);
  show_arm_h(h/12.0, 50, width/2, height/4);

  showPoint (0, 80, width/2-12, height/4+3);

    if(hour()<13){
    text("am",230,270);//画像読み込み
  }else {
    text("pm",230,270);;//画像読み込み
  }
  

  //Germany時計作成
  show_arm_s(s/60.0, 40, 75, height/4+10);
  show_arm_m(m/60.0, 30, 75, height/4+10);
  show_arm_h(h_d/12.0, 20, 75, height/4+10);
  fill(0);
  showPoint (0, 40, width/8+5, height/4+15);

  showNumber(0, 40, width/8+5, height/4+15);
  
     if(hour()-8<13){
    text("am",65,235);//画像読み込み
  }else {
    text("pm",65,235);;//画像読み込み
  }

  //Canada時計作成
  show_arm_s(s/60.0, 40, 400, height/4+10);
  show_arm_m(m/60.0, 30, 400, height/4+10);
  show_arm_h(h_c/12.0, 20, 400, height/4+10);
  fill(0);
  showPoint (0, 40, 3*width/4+30, height/4+15);

  showNumber(0, 40, 3*width/4+30, height/4+15);
  
     if(hour()-16<13){
    text("am",390,235);//画像読み込み
  }else {
    text("pm",390,235);;//画像読み込み
  }

  PFont font_1 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_1);
  textSize(20);//文字サイズ
  text("Germany", width/10-15, height/5-10);//文字表示

  textSize(20);//文字サイズ
  text("Japan", width/2-30, height/10-5);//文字表示

  textSize(20);//文字サイズ
  text("Canada", 3*width/4+5, height/5-10);//文字表示
  w_Osaka();//関数w_Osakaを読み込む
  w_Hakodate();//関数w_Hakodateを読み込む

  image(img_topb, 420, 0);//TOP button作成

  PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  text("TOP", 435, 70);//文字表示
}
