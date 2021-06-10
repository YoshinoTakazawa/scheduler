/* show page 0 */
void top_page() {
  image(img_top, 0, 0);//背景画像読み込み

  fill(0, 0, 128);
  textSize(24);//文字サイズ
  text("=Today=", width/10-10, height/8-25);//文字表示
  text(year()+","+month()+","+day(), width/10-10, height/8);//今日の年、月、日表示

  int s = second();//変数定義
  int m = minute();
  int h = hour();
  
  image(img_tako, width/2-55, height/4-155, 132, 122);//画像読み込み
  
  if(second()%2==0){
    image(img_oct1, 150, 360);//画像読み込み
  }else {
    image(img_oct2, 150, 360);//画像読み込み
  }
  

  showPoint (0, 48, width/2-5, height/8-3);//時計の・表示

  showNumber(0, 48, width/2-5, height/8-3);//時計の文字盤表示

  show_arm_s(s/60.0, 48, width/2+1, height/8-4);//時計の秒針表示
  show_arm_m(m/60.0, 40, width/2+1, height/8-4);//時計の分針表示
  show_arm_h(h/12.0, 30, width/2+1, height/8-4);//時計の時針表示

  //image(img_oct1, 150, 360);//画像読み込み

  t=int (nf(hours, 2))*3+int (nf(minutes, 2))/20;//変数定義

  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(20);//文字サイズ
  text("今日は、たこ焼き", 20, 570);//文字表示
  text(t+"個焼きあがったよ‼", 50, 595);//文字表示
  textSize(15);//文字サイズ
  text("( 昨日のたこ焼きの個数 : "+"5"+"個 )", 20, 620);//文字表示
  fill(65, 105, 255);
  textSize(20);//文字サイズ
  text("今日の勉強時間", 310, 580);//文字表示
  fill(255, 20, 147);
  textSize(25);//文字サイズ
  text("「日々努力。」", 325, height/8-5);//文字表示
  
    if(second()%2==0){
    fill(255,0,255);//画像読み込み
  }else {
    fill(255,102,230);//画像読み込み
  }
  
  textSize(20);//文字サイズ
  text("♥", 283, 210);//文字表示(clickするところをわかりやすくした)
  textSize(20);//文字サイズ
  text("♥", 265, 330);//文字表示
  textSize(20);//文字サイズ
  text("♥", 280, 445);//文字表示
  textSize(20);//文字サイズ
  text("♥", 22, 228);//文字表示
  textSize(20);//文字サイズ
  text("♥", 115, 295);//文字表示
  textSize(20);//文字サイズ
  text("♥", 452, 230);//文字表示
  stop_text(300, 620);//関数stop_textの読み込み
  noFill();//塗りつぶしなし
  stroke(0);//枠線の色
  strokeWeight(1);//枠線の太さ
  rect(290, 555, 180, 75);//囲い枠

}
