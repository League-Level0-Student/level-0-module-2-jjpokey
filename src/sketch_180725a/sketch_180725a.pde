int x = 0;
void setup() {
  background(0,0,0);
    size(800, 200);
}

void draw() {
    //3. make it a nice color
fill(random(255),random(255),random(255));
    //4. if the mouse is pressed...
if(mousePressed) {
  background(0,0,0);
  x += 20;
}
if(x == 800) {
  playSound();
}
    //5. ... change the X co-ordinate so that the dot moves to the right
    //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
    ellipse(x,50,25,25);
    //6. Make your dot move really fast so that it can win the race 

    //7. Use this method to play a ding when your dot crosses the finish line. 
}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("yay.mp3");
        sound.trigger();
        soundPlayed = true;
    }
}