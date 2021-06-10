/* show page 3 */
int defaultYear = 2019;//変数定義
int defaultMonth = 7;
int rectRX, rectRY;
int rectLX, rectLY;
int rectSize = 20;
boolean leftButtonOver = false;//boolean型
boolean rightButtonOver = false;//boolean型
color currentColor = 200;//初期値
String[] week = {"日", "月", "火", "水", "木", "金", "土"};//String型のweekという配列を作成

void disp3() {
  //background(238, 130, 238);//背景色
  image(img_c, 0, 0);//背景画像読み込み
  update();
  drawCalendar(defaultYear, defaultMonth);

  image(img_topb, 420, 0);//TOP button作成
  PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  fill(0);
  text("TOP", 435, 70);//文字表示
  
  fill(255);
  text("今日は、", 210, 590);
  text(year()+"年"+month()+"月"+day()+"日", 225, 615);//今日の年、月、日表示
  

  if (rightButtonOver) {//next month
    fill(255, 0, 102);
  } else {
    fill(51, 204, 255);
  }
  ellipse(rectRX+10, rectRY+10, rectSize, rectSize);

  if (leftButtonOver) {//before month
    fill(255, 0, 102);
  } else {
    fill(51, 204, 255);
  }
  ellipse(rectLX+10, rectLY+10, rectSize, rectSize);
}

void update() {//true or falseを返す
  if (overLeftButton(rectLX, rectLY, rectSize, rectSize)) {
    leftButtonOver = true;
    rightButtonOver = false;
  } else if (overRightButton(rectRX, rectRY, rectSize, rectSize)) {
    leftButtonOver = false;
    rightButtonOver = true;
  } else {
    leftButtonOver = false;
    rightButtonOver = false;
  }
}

void mouseReleased() {//マウスボタンを離した時に呼び出される
  if (leftButtonOver) {
    background(currentColor);//背景色

    if (defaultMonth == 1) {//変数定義
      defaultMonth = 12;
      defaultYear -= 1;
    } else {
      defaultMonth -= 1;
    }
  }
  if (rightButtonOver) {
    background(currentColor);//背景色

    if (defaultMonth == 12) {//変数定義
      defaultMonth = 1;
      defaultYear += 1;
    } else {
      defaultMonth += 1;
    }
  }
}

boolean overRightButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;//指定範囲内でclickされたらtrueを返す
  } else {
    return false;//指定範囲外でclickされたらfalseを返す
  }
}

boolean overLeftButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;//指定範囲内でclickされたらtrueを返す
  } else {
    return false;//指定範囲外でclickされたらfalseを返す
  }
}

void drawCalendar(int year, int month) {//カレンダー作成
  fill(128, 0, 128);//文字色
  textSize(25);//文字サイズ
  text(year+"年", width/2-60, 30);//年
  text(month+"月", width/2+25, 30);//月
  fill(0);//文字色
  textSize(20);//文字サイズ
  text("←Back", width/4, 68);//back
  text("Forward→", 2*width/3-5, 70);//forward

  int days = daysOfMonth(year, month);//変数定義

  //曜日
  for (int i = 0; i < 7; i++) {
    fill(0);
    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(15);//文字サイズ
    text(week[i], 50+i * 60, 100);//文字表示
  }


  // draw days of the Month
  for (int day = 1; day <= days; day++) {
    fill(50);

    int x = dayOfWeek(year, month, day);//変数定義
    int y = weekOfMonth(year, month, day);//変数定義

    //fill(0);
    //noFill();
    //ellipse(x*60+58, y*90+65, 55, 55);
    img_marutako.resize(50,50);
    image( img_marutako, x*60+33, y*90+32);

    color z = setColor(x);//色設定
    fill(z);
    textSize(20);//文字サイズ
    text(day, x*60+50, y*90+75);//文字表示
  //  if(day==day()){
  //    fill(255);
      
  //}}
}
}

color setColor(int day) {//色指定
  if (day == 0) {
    return #FF0000;
  } else if (day == 6) {
    return #0008FF;
  } else {
    return #000000;
  }
}

int weekOfMonth(int year, int month, int date) {
  return (date - dayOfWeek(year, month, date) + 12) / 7;//戻り値
}

int daysSum(int year, int month, int date) {
  // 2000,1,1
  int daysSum = 1;
  for (int y = year-1; y >= 2000; y--) {//日数調整
    if (isLeapYear(y)) {
      daysSum += 366;
    } else {
      daysSum += 365;
    }
  }

  for (int m = month-1; m >= 1; m--) {
    daysSum += daysOfMonth(year, m);
  }

  daysSum += date;
  return daysSum;//戻り値
}

int dayOfWeek(int year, int month, int date) {
  int daysSum = daysSum(year, month, date);
  // 0 - Sun / 6 - Sat
  return daysSum % 7;//戻り値
}

boolean isLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return true;//戻り値
  } else {
    return false;//戻り値
  }
}

// 4,6,9,11 has 30 days.
int daysOfMonth(int year, int month) {
  if (month == 4 || month == 6 || month == 9 || month == 11) {
    return 30;//戻り値
  } else if (month == 2) {
    if (isLeapYear(year)) {
      return 29;//戻り値
    } else {
      return 28;//戻り値
    }
  } else {
    return 31;//戻り値
  }
}
