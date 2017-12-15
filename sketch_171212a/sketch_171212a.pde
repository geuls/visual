
import ddf.minim.analysis.*; 
import ddf.minim.*; 
Minim minim; 
AudioPlayer jingle; 
FFT fft;
void setup() {
  minim = new Minim(this); 
jingle = minim.loadFile("rob_bailey_the_hustle_standard_never_settle_lost_soul_remix_(NaitiMP3.ru).mp3", 1024); 
jingle.loop();
    
    fullScreen();
}
void draw() {
  PImage img = loadImage ("krasota-292735.jpg");
  image (img, 0, 0, 1400,900);
}     