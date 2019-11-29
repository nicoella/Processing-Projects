ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
ArrayList<Integer> speed = new ArrayList<Integer>();
ArrayList<Integer> size = new ArrayList<Integer>();
ArrayList<String> colour = new ArrayList<String>();
ArrayList<Integer> transparency = new ArrayList<Integer>();
void setup() {
    size(800,500);
    noStroke();
    for(int i=0; i<500; i++) {
        x.add((int)random(0,800));
        y.add((int)random(0,500));
        speed.add((int)random(1,10));
        size.add((int)random(2,50));
        String randcol = (int)random(0,255)+" "+(int)random(0,255)+" "+(int)random(255);
        colour.add(randcol);
        transparency.add((int)random(20,150));
    }
}
void draw() {
    background(20);
    for(int i=0; i<x.size(); i++) {
        String[] col = colour.get(i).split(" ");
        int r = Integer.parseInt(col[0]);
        int g = Integer.parseInt(col[1]);
        int b = Integer.parseInt(col[2]);
        fill(r,g,b,transparency.get(i));
        noStroke();
        ellipse(x.get(i),y.get(i),size.get(i),size.get(i));
        y.set(i,y.get(i)-speed.get(i));
        if(y.get(i)<0) {
            y.set(i,520);
            x.set(i,(int)random(0,800));
        }
    }
}
