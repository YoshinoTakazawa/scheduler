/* show page 2 */

int t0 = -5;//初期値
PImage img_takotimer;//画像定義

void takoyaki_timer() {
  img_takotimer.resize(480, 640);//画像サイズ調整
  image( img_takotimer, 0, 0 );//背景画像読み込み
  
  img_youtube.resize(50,40);
  image( img_youtube, 40, 450 );
  
  int t = millis()-t0;//変数定義
  float t_left = 300 - t / 1000.0;
  int m = (int (t_left/60));
  int s = (int (t_left%60));

  image(img_topb, 420, 0);//TOP button作成
  PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  text("TOP", 435, 70);//文字表示
  
  if (m==0&&s==0) { 
    player=minim.loadFile("alarm.mp3");//alarm.mp3をロードする
    player.play();//再生
  } 

  if (t_left > 0) {


    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(25);//文字サイズ
    text("たこ焼きが焼き上がるまで、", 50, 300);//文字表示

    textSize(30);//文字サイズ
    text("あと", 180, 400);//文字表示

    textSize(40);//文字サイズ
    text(conv(m)+":"+conv(s), 300, 400);//文字表示

  } else {

    textSize(40);//文字サイズ
    fill(255, 0, 0);//文字色
    text("たこ焼きが焼けたよ!", 65, 400);//文字表示
  }
  stroke(0);//reset button設置
  fill(255,228,181);
  rect(400,450,50,20);
  
  fill(0); //黒
  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(15);//文字サイズ
  text("reset",407,465);//文字表示
}

void takoyaki_timer_m() {//マウスボタンを押した時に呼び出される
  // rect area
  if ((mouseX > 400 && mouseX < 450) &&
    (mouseY > 450 && mouseY < 470)) {//click位置設定
    t0 = millis();//基準値
  }
}

void youtube() {//マウスボタンを押した時に呼び出される
  // rect area
  if ((mouseX > 40 && mouseX < 90) &&
    (mouseY > 450 && mouseY < 490)) {//click位置設定
    link("https://www.youtube.com/?gl=JP&hl=ja");//基準値
  }
}
