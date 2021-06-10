/* show page 6 */
void disp6() {
image(img_study, 0, 0); //背景画像読み込み
image(img_topb, 420, 0);//TOP button作成
PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  fill(255);//白
  text("TOP", 435, 70);//文字表示
  
  fill(240);
  noStroke();//枠なし
  rect(gx, gy-gh, gw, gh);//グラフ表示

  for (int k = 0; k < date.length; k++) {
    int x = 95+40*k;//変数定義
    int y = 600;

    /* 曜日を表示; */
    fill(0);
    textSize(15);//文字サイズ
    text(date[k], x + 5, y + 10);//文字表示
  }

  for (int r = 0; r < num.length; r++) {

    /* メモリ数字を表示; */
    fill(0);
    textSize(13);//文字サイズ
    text(num[r], gx-15, gy-43 - 50*r);//文字表示
  }

  String s_1[] = loadStrings("week1_1019215.txt"); //s_1という配列にweek1_1019215.txtを読み込む
  String s_2[] = loadStrings("week2_1019215.txt"); //s_2という配列にweek2_1019215.txtを読み込む

  for (int f = 0; f < s_1.length; f = f + 1) {
    textSize(15);//文字サイズ
    text(s_1[f], 80, f * 39 + 170); // /*１週間目の勉強時間を表示; */
  }

  for (int h = 0; h < s_2.length; h = h + 1) {
    textSize(15);//文字サイズ
    text(s_2[h], 300, h * 39 + 170); // /*２週間目の勉強時間を表示; */
  }


  fill(255, 105, 180);//１週間目の色をわかりやすく表示
  rect(50, 120, 30, 20);
  fill(255, 165, 0);//２週間目の色をわかりやすく表示
  rect(270, 120, 30, 20);

  stroke(0);
  line(gx, gy, gx+gw, gy);//グラフ枠線
  line(gx, gy-gh, gx, gy);//グラフ枠線

  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(15);//文字サイズ
  fill(0);//文字色
  text("(時間)", 25, 447);//文字表示
  textSize(16);//文字サイズ
  text("勉強時間の", 385, 480);//文字表示
  text("推移", 385, 520);//文字表示
  text("←", 385, 560);//文字表示


  for (int e = 0; e < 16; e++) {//メモリ
    line(gx, gy-10*e, gx+3, gy-10*e);
  }

  for (int i = 0; i < mdata.length; i++) {//データ読み込み
    drawBar(i+1, mdata[i], edata[i]);
  }
} 
  
