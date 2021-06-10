String baseURL_h = "https://weather.tsukumijima.net/api/forecast?city=";//函館の天気のURL
String city_h = "017010";//函館を特定する番号
String title_h;
JSONArray forecasts_h;

void w_Hakodate() {//函館の天気

  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(13);//文字サイズ
  text(title_h, 100, 425 );//文字表示
  for (int i = 0; i < forecasts_h.size(); i++) {
    JSONObject f = forecasts_h.getJSONObject(i);
    String h = f.getString("dateLabel") + ":" + f.getString("telop");
    text(h, 100, height-180 + 20 * i);//文字表示
  }
}
