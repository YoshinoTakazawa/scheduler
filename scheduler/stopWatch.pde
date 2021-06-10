int millisecs;//変数定義
int seconds;
int minutes;
int hours;
boolean start = false;//初期値
boolean starter;

void s_watch() {//s_watchという関数の作成

  if (start) {//stop watch作成
    if (int(millis()/100)  % 10 != millisecs) {
      millisecs++;
    }
    if (millisecs >= 10) {
      millisecs -= 10;
      seconds++;
    }
    if (seconds >= 60) {
      seconds -= 60;
      minutes++;
    }
  }
}
  //view
void stop_text(int p,int q) {//stop_textという関数の作成

  fill(0);
    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(35);//文字サイズ
  text(nf(hours, 2)+":"+ nf(minutes, 2) + ":" + nf(seconds, 2) + "." + nf(millisecs, 1), p, q);//文字表示
}

void keyPressed() {//キーが1つでも押されているとtrue、そうでなければfalse
  if (key == ' ') {//スペースキーが押されたときreset
    millisecs = 0;
    seconds = 0;
    minutes = 0;
  }
}
