/* show page 5 */
void disp5() {

  image( img_taisho, 0, 0 );//背景画像読み込み
  image(img_topb, 420, 0);//TOP button作成
  PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  text("TOP", 435, 70);//文字表示
  
  s_watch();//関数s_watchを読み込む
  stop_text(155,225);//関数stop_textを読み込む

  fill(50, 50, 50);
  rect(45, 250, 400, 300);//焼き板
  //1段目
  for (int i = 0; i < 4; i++) {
    fill(20, 20, 20);
    ellipse(100 + 100 * i, 300, 60, 60);
  }

  //2段目
  for (int i = 0; i < 4; i++) {
    ellipse(100 + 100 * i, 400, 60, 60);
  }

  //3段目
  for (int i = 0; i < 4; i++) {
    ellipse(100 + 100 * i, 500, 60, 60);
  }

  img_marutako.resize( 60, 60 );
  image( img_marutako, 70, 270 );//たこ焼き作成
  image( img_marutako, 70, 370 );
  image( img_marutako, 170, 270 );
  image( img_marutako, 170, 470 );
  image( img_marutako, 270, 370 );
  image( img_marutako, 370, 470 );
  image( img_marutako, 370, 270 );


  takoyakiki_1();//関数読み込み
  takoyakiki_2();
  takoyakiki_3();
  takoyakiki_4();
  takoyakiki_5();

  t=int (nf(hours, 2))*3+int (nf(minutes, 2))/20;//変数定義

  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(20);//文字サイズ
  text("今日は、たこ焼き", 90, 580);//文字表示
  text(t+"個焼きあがったよ‼", 220, 610);//文字表示


  textSize(20);//文字サイズ
  text("今日の勉強時間", 170, 190);//文字表示
  text("☆スペースキーでリセット！！☆", 110, 247);//文字表示

  text("START!!", 40, 130);//文字表示
  text("STOP!!", 370, 130);//文字表示
   textSize(10);//文字サイズ
    text("＼タコのあたまをClick!!／", 8, 110);//文字表示
}
