class Square {
    PVector pos;
    float size;

    Square(PVector _pos, float _size) {
        pos  = _pos;
        size = _size;
    }

    void Show() {
        square(pos.x, pos.y, size);
    }

    ArrayList<Square> Split() {
        ArrayList<Square> squares = new ArrayList<Square>();
        float new_size = size/3;
        for(int i=-1; i<=1 ; i++)
            for(int j=-1; j<=1 ; j++) {
                if(i==0 && j==0) continue;// ignore the central subsquare
                PVector new_pos = new PVector(new_size*i+pos.x,new_size*j+pos.y);
                squares.add(new Square(new_pos,new_size));
            }
        return squares;
    }
}
