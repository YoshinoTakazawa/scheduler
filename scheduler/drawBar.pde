void drawBar(int n, float v1,float v2) {//棒グラフ描画
  fill(255,105,180);//色指定
  rect(gx + n * 40 - 30, gy - v1, 15, v1);//1週間目
  
  fill(255,165,0);//色指定
  rect(gx + n * 40 - 30 + 15,gy-v2,15,v2);//2週間目
}
