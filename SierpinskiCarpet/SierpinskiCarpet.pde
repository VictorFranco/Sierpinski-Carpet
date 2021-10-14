PVector pos;
Square carpet;

void setup() {
    size(600,600);
    background(230);
    pos    = new PVector(0,0);
    carpet = new Square(pos,400);
}

void draw() {
    translate(width/2,height/2);
    rectMode(CENTER);
    fill(0);
    carpet.Show();
}
