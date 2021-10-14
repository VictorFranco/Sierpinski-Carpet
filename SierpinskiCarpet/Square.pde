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
}
