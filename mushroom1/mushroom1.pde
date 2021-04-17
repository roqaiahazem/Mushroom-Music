import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup(){
 size(1024,750);
 minim = new Minim(this);
 player = minim.loadFile("wonderland.mp3");
 }
 void draw(){
   background(0,0,0);
   stroke(random(255),random(255),random(255));
player.play();
 for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, 500 );
    float x2 = map( i+1, 0, player.bufferSize(), 0, 700 );
    fill(0,0,0);
    rect( 300, height/2 + player.left.get(i)*50, 400, height/2 + player.left.get(i)*50 );
    ellipse( x1, height/2 + player.left.get(i)*50, x2, height/2 + player.left.get(i)*50 );
  }
player.play(); // this code plays the song itself

 }
