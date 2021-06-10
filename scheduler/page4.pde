/* show page 4 */
int todoCheck1 = 1;
int todoCheck2 = 1;
int todoCheck3 = 1;
int todoCheck4 = 1;
int todoCheck5 = 1;
int todoCheck6 = 1;
int todoCheck7 = 1;
int p;

void disp4() {


  image(img_todo, 0, 0);//背景画像読み込み
  image(img_topb, 420, 0);//TOP button作成
  PFont font_2 = createFont("Yu Gothic", 64, true);//文字化け対策
  textFont(font_2);
  textSize(15);//文字サイズ
  text("TOP", 435, 70);//文字表示

  String csvDataLine[] = loadStrings("todo.csv");//csvDataLineという配列にtodo.csvを読み込む

  for (int i = 0; i < csvDataLine.length; i = i + 1) {
    PFont font = createFont("Yu Gothic", 64, true);//文字化け対策
    textFont(font);
    textSize(13);//文字サイズ
    text(csvDataLine[i], 140, i * 75+ 140); // 読んだ値を場所を変え表示
  }
  //noLoop();

  fill(255, 255, 0);//文字化け隠し
  noStroke();
  rect(140, 126, 12, 17);
  
  if(todoCheck1%2==1){
    image(img_small,50,115);
}else{
    image(img_fin,50,115);//基準値
}
  if(todoCheck2%2==1){
    image(img_small,50,188);
}else{
    image(img_fin,50,188);//基準値
}
  if(todoCheck3%2==1){
    image(img_small,50,261);
}else{
    image(img_fin,50,261);//基準値
}
  if(todoCheck4%2==1){
    image(img_small,50,335);
}else{
    image(img_fin,50,335);//基準値
}
  if(todoCheck5%2==1){
    image(img_small,50,408);
}else{
    image(img_fin,50,408);//基準値
}
  if(todoCheck6%2==1){
    image(img_small,50,481);
}else{
    image(img_fin,50,481);//基準値
}
  if(todoCheck7%2==1){
    image(img_small,50,554);
}else{
    image(img_fin,50,554);//基準値
}
}



void fin() {//マウスボタンを押した時に呼び出される
  // rect area
  if ((mouseX > 52 && mouseX < 107) &&(mouseY > 115 && mouseY < 188)) {//click位置設定
    todoCheck1 = todoCheck1 +1;
   
  }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 188 && mouseY < 261)){
    todoCheck2 = todoCheck2 +1;
    
      }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 261 && mouseY < 335)){
    todoCheck3 = todoCheck3 +1;
    
      }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 335 && mouseY < 408)){
    todoCheck4 = todoCheck4 +1;
    
      }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 408&& mouseY < 481)){
    todoCheck5 = todoCheck5 +1;
    
      }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 481 && mouseY < 554)){
    todoCheck6 = todoCheck6 +1;
    
      }else if((mouseX > 52 && mouseX < 107) &&(mouseY > 554 && mouseY < 625)){
    todoCheck7 = todoCheck7 +1;

  }
}
