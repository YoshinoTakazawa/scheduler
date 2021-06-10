void showPoint(float rat, float r, float x, float y) {//時計の文字盤の”・”作成

  float x1, y1;//変数定義
  float theta;//変数定義
  int k;//変数定義
  for (k=1; k<13; k++) {

    theta = TWO_PI * rat - PI*(4.0 / 3.0) + (PI / 6.0)*k-(PI / 12.0);
    x1 = x + r * cos(theta);
    y1 = y + r * sin(theta);

    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(13);//文字サイズ
    text("・", x1, y1);//”・”表示
  }
}
