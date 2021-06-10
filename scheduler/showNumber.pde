void showNumber(float rat, float r, float x, float y) {//時計文字盤表示

  float x1, y1;//変数定義
  float theta;//変数定義
  int k;//変数定義
  for (k=1; k<13; k++) {

    theta = TWO_PI * rat - PI*(1.0 / 2.0)+PI*(1.0/6.0)*k;
    x1 = x + r * cos(theta);
    y1 = y + r * sin(theta);
    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(13);//文字サイズ
    text(k, x1+4, y1-1);//文字表示
  }
}
