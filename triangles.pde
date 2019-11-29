void setup() {
    size(800,500);
    noStroke();
}
int size = 300;
boolean shrink=true;
void draw() {
    background(20);
    fill(255,17);
    for(int j=1; j<6; j++) {
        for(int i=0; i<36; i++) {
            pushMatrix();
            translate(width/2,height/2);
            rotate(radians(i*10));
            if(i%2==0) triangle(-20,0,20,0,0,(-50)*j+size);
            else triangle(-20,0,20,0,0,(-65)*j+size);
            popMatrix();
        }
    }
    fill(255,27);
    for(int j=1; j<6; j++) {
        for(int i=0; i<36; i++) {
            pushMatrix();
            translate(width/2,height/2);
            rotate(radians(i*10+5));
            if(i%2==0) triangle(-20,0,20,0,0,(-50)*j+size);
            else triangle(-20,0,20,0,0,(-65)*j+size);
            popMatrix();
        }
    }
    if(shrink) size--;
    else size++;
    if(size==0) shrink=false;
    else if(size==300) shrink=true;
}
