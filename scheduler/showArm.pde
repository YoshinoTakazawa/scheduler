void show_arm_s(float rat, float r, float x, float y) {//秒
  float x1, y1;//変数定義
  float theta;//変数定義
  
  theta = TWO_PI * rat - PI / 2.0;
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  strokeWeight(1);//針の太さ
  fill(0);
  line(x, y, x1, y1);//秒針
}

void show_arm_m(float rat, float r, float x, float y) {//分
  float x1, y1;//変数定義
  float theta;//変数定義
  
  theta = TWO_PI * rat - PI / 2.0;
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  strokeWeight(2.5);//針の太さ
    fill(0);
  line(x, y, x1, y1);//分針
}

void show_arm_h(float rat, float r, float x, float y) {//時
  float x1, y1;//変数定義
  float theta;//変数定義
  
  theta = TWO_PI * rat - PI / 2.0;
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  strokeWeight(4);//針の太さ
    fill(0);
  line(x, y, x1, y1);//時針
}
