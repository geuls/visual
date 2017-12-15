
import ddf.minim.analysis.*; 
import ddf.minim.*; 
Minim minim; 
AudioPlayer jingle; 
FFT fft;
float a;
void setup() {
  minim = new Minim(this); 
jingle = minim.loadFile("rob_bailey_the_hustle_standard_never_settle_lost_soul_remix_(NaitiMP3.ru).mp3", 1024); 
jingle.loop();
    
    fullScreen();
}
void draw() {
  PImage img = loadImage ("krasota-292735.jpg");
  image (img, 0, 0, 1400,900);
  image (img, 0 , 0, 1400,900); 
fft = new FFT(jingle.bufferSize(), jingle.sampleRate()); 
stroke(255); 
fft.forward(jingle.mix); 

for (int i = 0; i < fft.specSize(); i++) { 
a = (450 - fft.getBand(i)) / 40; 
ellipse(300, 200, 400 / a, 400 / a); 
fill(200, 100, 50); 
} 
}