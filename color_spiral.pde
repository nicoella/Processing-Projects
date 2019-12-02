void setup() {
    size(800,500);
    background(255);
    rectMode(CENTER);
    fill(0,20);
    stroke(0,20);
} 
float rotate = 0;
int size = 800;
boolean change = false;
int count = 0;
boolean stop=false;
void draw() {
    if(!stop) {
        if(count>10) stop=true;
        size-=5;
        rotate-=10;
        if(change) {
            fill(random(255),random(255),random(255),5);
            change=false;
        }
        if(size<=10) {
            size=800;
            count++;
        }
        if(size%20==0) change=true;
        pushMatrix();
        translate(400,250);
        rotate(radians(rotate));
        rect(0,0,size,size);
        popMatrix();
    }
}
