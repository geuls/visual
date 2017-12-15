import ddf.minim.analysis.*; // импорт библиотек
import ddf.minim.*;
Minim minim;
AudioPlayer jingle;
FFT fft;
float a; // параметр, отображающий мгновенное значение частоты
void setup() {
    minim = new Minim(this);
    jingle = minim.loadFile("rob_bailey_the_hustle_standard_never_settle_lost_soul_remix_(NaitiMP3.ru).mp3", 1024); // музыкальный файл
    jingle.loop();
    fullScreen(); // размер экрана
}
void draw() {
    PImage img = loadImage("krasota-292735.jpg"); // картинка
    image(img, 0, 0, 1400, 900);
    fft = new FFT(jingle.bufferSize(), jingle.sampleRate());
    stroke(255);
    fft.forward(jingle.mix);

    for (int i = 0; i < fft.specSize(); i++) { // задание параметров
        a = (450 - fft.getBand(i)) / 40;
        ellipse(300, 200, 400 / a, 400 / a); // рисование кругов
        fill(200, 100, 50);
        ellipse(650, 400, 400 / a, 400 / a);
        ellipse(1000, 550, 400 / a, 400 / a);
        ellipse(1000, 200, 400 / a, 400 / a);
        ellipse(300, 550, 400 / a, 400 / a);
    } frameRate(50); // количество кадров в секунду
}