float[] mdata = new float[3], edata = new float[3]; //float型のmdataとedataという配列を作成

void loadData() {
  
 String [] lines = loadStrings("study.txt");//String型のlinesという配列にstudy.txtを読み込む
 
mdata = new float[lines.length];//linesの長さ分箱を用意

edata = new float[lines.length];//linesの長さ分箱を用意

for (int i = 0; i < lines.length; i++) {
  
 String [] line = lines[i].split(",");//study.txtを","で区切る

mdata[i] =float(line[0]);//配列mdataに要素入れる
edata [i]= float(line[1]);//配列edataに要素入れる
}
}
