void setup() {
    size(800,500);
    noFill();
    strokeWeight(5);
    stroke(255,150);
}
float add = 0;
void draw() {
    background(20);
    for(int i=0; i<90; i++) {
        stroke(255,50);
        arc(width/2,height/2,10*i,10*i,radians(add*i/2),radians(add*i/2+50*i/40));
    }
    add+=1;
}
