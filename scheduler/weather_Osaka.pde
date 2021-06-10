String baseURL_o = "https://weather.tsukumijima.net/api/forecast?city=";//大阪の天気のURL
String city_o = "270000";//大阪を特定する番号
String title_o;
JSONArray forecasts_o;

void w_Osaka() {//大阪の天気

  PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font);
  textSize(13);//文字サイズ
  text(title_o, 95, 540);//文字表示
  for (int i = 0; i < forecasts_o.size(); i++) {
    JSONObject f = forecasts_o.getJSONObject(i);
    String o = f.getString("dateLabel") + ":" + f.getString("telop");
    text(o, 95, 570 + 20 * i);//文字表示
  }
}
