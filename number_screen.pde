void setup() {
    size(800, 500);
    textAlign(CENTER);
}
String alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
int count = 0;
void draw() {
    
    if (count%3==0) {
        background(0);
        for (int i=0; i<100; i++) {
            for (int j=0; j<100; j++) {
                fill(random(255), random(255), random(255), 100);
                int c = (int)random(0, 10);
                text(c, i*10, j*10);
            }
        }
    }
    count++;
}
