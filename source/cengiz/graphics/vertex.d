module cengiz.graphics.vertex;

private:

import cengiz.math.vector;
import cengiz.graphics.color;

public:


enum PrimitiveType {
    Points,
    Lines,
    LineStrip,
    Triangles,
    TriangleStrip,
    TriangleFan,
    Quads
}

class Vertex
{
public:
    Vector2 position;
    Color color;
    Vector2 texcoord;

    this(Vector2 position) {
        this.position = position;
        this.color = Color(255, 255, 255, 255);
        this.texcoord = Vector2(0, 0);
    }

    this(Vector2 position, Color color) {
        this.position = position;
        this.color = color;
        this.texcoord = Vector2(0, 0);
    }

     this(Vector2 position, Vector2 texcoord) {
        this.position = position;
        this.color = Color(255, 255, 255, 255);
        this.texcoord = texcoord;
    }
    

    this(Vector2 position, Color color, Vector2 texcoord) {
        this.position = position;
        this.color = color;
        this.texcoord = texcoord;
    }
}