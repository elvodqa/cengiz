module cengiz.core.game;

private:

import bindbc.sdl;


public:

class Game {
    public:
    
    this() {}
    ~this() {}
    
    void load() {}
    void update() {}
    void render() {}
    void run() {
        load();
        while (true) {
            update();
            render();
        }
    }
   
    private:
}