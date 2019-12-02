//drag to draw, click to reset

import java.io.*;
import java.util.*;
void setup() {
    size(800,500);
    background(20);
    noStroke();
}
Queue<Float> qu = new LinkedList<Float>();
int run = 50;
void draw() {
    for(int i=0; i<qu.size()/8; i++) {
        float x = qu.poll(), y = qu.poll(), ang = qu.poll(), times = qu.poll(), size = qu.poll(), r = qu.poll(), g = qu.poll(), b = qu.poll(), speed = qu.poll();
        if(times<run) {
            fill(r,g,b,2);
            ellipse(x,y,size-times*(size/run),size-times*(size/run));
            x += cos(radians(ang))*speed;
            y += sin(radians(ang))*speed;
            times += 1;
            r += 1;
            g += 1; 
            b += 2;
            int rand = (int)random(0,2);
            if(rand==0) ang += 5;
            else ang -= 5;
            qu.add(x);
            qu.add(y);
            qu.add(ang);
            qu.add(times);
            qu.add(size);
            qu.add(r);
            qu.add(g);
            qu.add(b);
            qu.add(speed);
        }
    }
}

float preX = -100, preY = -100;
void begin() {
    float x = mouseX, y = mouseY;
    if(abs(preX-x)+abs(preY-y)>=50) {
        for(int i=0; i<6; i++) {
            float ang = random(0,360);
            float size = random(25,100);
            float speed = random(2,10);
            qu.add(x);
            qu.add(y);
            qu.add(ang);
            qu.add(0.0);
            qu.add(size);
            if(i<=1) {
                qu.add(212.0);
                qu.add(157.0);
                qu.add(240.0);
            } else if(i<=3) {
                qu.add(240.0);
                qu.add(157.0);
                qu.add(199.0);
            } else {
                qu.add(240.0);
                qu.add(216.0);
                qu.add(156.0);
            }
            qu.add(speed);
        }
    }
}
void mouseDragged() {
    begin();
}
void mouseClicked() {
    background(20);
}
