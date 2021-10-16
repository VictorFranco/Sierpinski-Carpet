PVector pos;
ArrayList<Square> carpet;

void setup() {
    size(600,600);
    background(230);
    pos    = new PVector(0,0);// carpet center
    carpet = new ArrayList<Square>();
    carpet.add(new Square(pos,486));// initial square
    carpet = carpet.get(0).Split();//  level 1
}

void draw() {
    background(230);
    translate(width/2,height/2);
    rectMode(CENTER);
    noStroke();
    fill(0);// squares color
    for(Square square : carpet)
        square.Show();
}
