float angle = 0;//角度

void takoyakiki_1(){
    //background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-img_marutako.width)/2-39, (height-img_marutako.height)/2+80, img_marutako, deg );
  deg++;
  if( deg > 360) deg = 0;
}

void takoyakiki_2(){
    //background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-img_marutako.width)/2+61, (height-img_marutako.height)/2+180, img_marutako, deg );
  deg++;
  if( deg > 360) deg = 0;
}

void takoyakiki_3(){
    //background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-img_marutako.width)/2+61, (height-img_marutako.height)/2-20, img_marutako, deg );
  deg++;
  if( deg > 360) deg = 0;
}

void takoyakiki_4(){
    //background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-img_marutako.width)/2-140, (height-img_marutako.height)/2+180, img_marutako, deg );
  deg++;
  if( deg > 360) deg = 0;
}

void takoyakiki_5(){
    //background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-img_marutako.width)/2+160, (height-img_marutako.height)/2+80, img_marutako, deg );
  deg++;
  if( deg > 360) deg = 0;
}



void rotateImage( int x, int y, PImage img, float deg ){ 
 pushMatrix(); //①
 
 //画像中央を回転の中心にする
 translate( x + img.width/2, y + img.height/2 ); //②
 
 //回転する
 rotate(radians( deg )); //③
 
 //回転の中心が画像中央なので、画像描画原点も画像中央にする
 //こうすると、(0,0)に配置すれば期待した位置に画像が置ける
 //これをしないと、⑤のimage()命令で配置する座標計算が面倒
 imageMode(CENTER); //④
 
 //画像を描画
 image( img, 0, 0 ); //⑤
 
 //画像描画原点を元（画像の左上隅）に戻す
 imageMode(CORNER); //⑥
 
 popMatrix(); //⑦
}
