module cengiz.graphics.color;

private:

mixin template Colors(T) {
    static immutable T aliceblue            = T(240, 248, 255);
    static immutable T antiquewhite         = T(250, 235, 215);
    static immutable T aquamarine           = T(127, 255, 212);
    static immutable T azure                = T(240, 255, 255);
    static immutable T beige                = T(245, 245, 220);
    static immutable T bisque               = T(255, 228, 196);
    static immutable T black                = T(  0,   0,   0);
    static immutable T blanchedalmond       = T(255, 235, 205);
    static immutable T blue                 = T(  0,   0, 255);
    static immutable T blueviolet           = T(138,  43, 226);
    static immutable T brown                = T(165,  42,  42);
    static immutable T burlywood            = T(222, 184, 135);
    static immutable T cadetblue            = T( 95, 158, 160);
    static immutable T chartreuse           = T(127, 255,   0);
    static immutable T chocolate            = T(210, 105,  30);
    static immutable T coral                = T(255, 127,  80);
    static immutable T cornflowerblue       = T(100, 149, 237);
    static immutable T cornsilk             = T(255, 248, 220);
    static immutable T cyan                 = T(  0, 255, 255);
    static immutable T darkblue             = T(  0,   0, 139);
    static immutable T darkcyan             = T(  0, 139, 139);
    static immutable T darkgoldenrod        = T(184, 134,  11);
    static immutable T darkgray             = T(169, 169, 169);
    static immutable T darkgreen            = T(  0, 100,   0);
    static immutable T darkkhaki            = T(189, 183, 107);
    static immutable T darkmagenta          = T(139,   0, 139);
    static immutable T darkolivegreen       = T( 85, 107,  47);
    static immutable T darkorange           = T(255, 140,   0);
    static immutable T darkorchid           = T(153,  50, 204);
    static immutable T darkred              = T(139,   0,   0);
    static immutable T darksalmon           = T(233, 150, 122);
    static immutable T darkseagreen         = T(143, 188, 143);
    static immutable T darkslateblue        = T( 72,  61, 139);
    static immutable T darkslategray        = T( 47,  79,  79);
    static immutable T darkturquoise        = T(  0, 206, 209);
    static immutable T darkviolet           = T(148,   0, 211);
    static immutable T deeppink             = T(255,  20, 147);
    static immutable T deepskyblue          = T(  0, 191, 255);
    static immutable T dDimgray              = T(105, 105, 105);
    static immutable T dodgerblue           = T( 30, 144, 255);
    static immutable T firebrick            = T(178,  34,  34);
    static immutable T floralwhite          = T(255, 250, 240);
    static immutable T forestgreen          = T( 34, 139,  34);
    static immutable T gainsboro            = T(220, 220, 220);
    static immutable T ghostwhite           = T(248, 248, 255);
    static immutable T gold                 = T(255, 215,   0);
    static immutable T goldenrod            = T(218, 165,  32);
    static immutable T green                = T(  0, 255,   0);
    static immutable T greenyellow          = T(173, 255,  47);
    static immutable T honeydew             = T(240, 255, 240);
    static immutable T hotpink              = T(255, 105, 180);
    static immutable T indianred            = T(205,  92,  92);
    static immutable T ivory                = T(255, 255, 240);
    static immutable T khaki                = T(240, 230, 140);
    static immutable T lavender             = T(230, 230, 250);
    static immutable T lavenderblush        = T(255, 240, 245);
    static immutable T lawngreen            = T(124, 252,   0);
    static immutable T lemonchiffon         = T(255, 250, 205);
    static immutable T lightblue            = T(173, 216, 230);
    static immutable T lightcoral           = T(240, 128, 128);
    static immutable T lightcyan            = T(224, 255, 255);
    static immutable T lightgoldenrod       = T(238, 221, 130);
    static immutable T lightgoldenrodyellow = T(250, 250, 210);
    static immutable T lightgray            = T(211, 211, 211);
    static immutable T lightgreen           = T(144, 238, 144);
    static immutable T lightpink            = T(255, 182, 193);
    static immutable T lightsalmon          = T(255, 160, 122);
    static immutable T lightseagreen        = T( 32, 178, 170);
    static immutable T lightskyblue         = T(135, 206, 250);
    static immutable T lightslateblue       = T(132, 112, 255);
    static immutable T lightslategray       = T(119, 136, 153);
    static immutable T lLightsteelblue       = T(176, 196, 222);
    static immutable T lightyellow          = T(255, 255, 224);
    static immutable T limegreen            = T( 50, 205,  50);
    static immutable T linen                = T(250, 240, 230);
    static immutable T magenta              = T(255,   0, 255);
    static immutable T maroon               = T(176,  48,  96);
    static immutable T mediumaquamarine     = T(102, 205, 170);
    static immutable T mediumblue           = T(  0,   0, 205);
    static immutable T mediumorchid         = T(186,  85, 211);
    static immutable T mediumpurple         = T(147, 112, 219);
    static immutable T mediumseagreen       = T( 60, 179, 113);
    static immutable T mediumslateblue      = T(123, 104, 238);
    static immutable T mediumspringgreen    = T(  0, 250, 154);
    static immutable T mediumturquoise      = T( 72, 209, 204);
    static immutable T mediumvioletred      = T(199,  21, 133);
    static immutable T midnightblue         = T( 25,  25, 112);
    static immutable T mintcream            = T(245, 255, 250);
    static immutable T mistyrose            = T(255, 228, 225);
    static immutable T moccasin             = T(255, 228, 181);
    static immutable T navajowhite          = T(255, 222, 173);
    static immutable T navy                 = T(  0,   0, 128);
    static immutable T navyblue             = T(  0,   0, 128);
    static immutable T oldlace              = T(253, 245, 230);
    static immutable T olivedrab            = T(107, 142,  35);
    static immutable T orange               = T(255, 165,   0);
    static immutable T orangered            = T(255,  69,   0);
    static immutable T orchid               = T(218, 112, 214);
    static immutable T palegoldenrod        = T(238, 232, 170);
    static immutable T palegreen            = T(152, 251, 152);
    static immutable T paleturquoise        = T(175, 238, 238);
    static immutable T palevioletred        = T(219, 112, 147);
    static immutable T papayawhip           = T(255, 239, 213);
    static immutable T peachpuff            = T(255, 218, 185);
    static immutable T peru                 = T(205, 133,  63);
    static immutable T pink                 = T(255, 192, 203);
    static immutable T plum                 = T(221, 160, 221);
    static immutable T powderblue           = T(176, 224, 230);
    static immutable T purple               = T(160,  32, 240);
    static immutable T red                  = T(255,   0,   0);
    static immutable T rosybrown            = T(188, 143, 143);
    static immutable T royalblue            = T( 65, 105, 225);
    static immutable T saddlebrown          = T(139,  69,  19);
    static immutable T salmon               = T(250, 128, 114);
    static immutable T sandybrown           = T(244, 164,  96);
    static immutable T seagreen             = T( 46, 139,  87);
    static immutable T seashell             = T(255, 245, 238);
    static immutable T sienna               = T(160,  82,  45);
    static immutable T skyblue              = T(135, 206, 235);
    static immutable T slateblue            = T(106,  90, 205);
    static immutable T slategray            = T(112, 128, 144);
    static immutable T snow                 = T(255, 250, 250);
    static immutable T springgreen          = T(  0, 255, 127);
    static immutable T steelblue            = T( 70, 130, 180);
    static immutable T tan                  = T(210, 180, 140);
    static immutable T thistle              = T(216, 191, 216);
    static immutable T tomato               = T(255,  99,  71);
    static immutable T turquoise            = T( 64, 224, 208);
    static immutable T violet               = T(238, 130, 238);
    static immutable T violetred            = T(208,  32, 144);
    static immutable T wheat                = T(245, 222, 179);
    static immutable T white                = T(255, 255, 255);
    static immutable T whitesmoke           = T(245, 245, 245);
    static immutable T yellow               = T(255, 255,   0);
    static immutable T yellowgreen          = T(154, 205,  50);
}

public:

struct Color {
    mixin Colors!Color;

    ubyte red;
    ubyte green;
    ubyte blue;
    ubyte alpha;

    this(ubyte red, ubyte green, ubyte blue, ubyte alpha = 255) pure nothrow {
        this.red   = red;
        this.green = green;
        this.blue  = blue;
        this.alpha = alpha;
    }

    this(uint hexValue) {
        version (LittleEndian) {
            this.alpha = (hexValue >> 24) & 0xff;
            this.blue  = (hexValue >> 16) & 0xff;
            this.green = (hexValue >>  8) & 0xff;
            this.red   = hexValue & 0xff;
        } else {
            this.red   = (hexValue >> 24) & 0xff;
            this.green = (hexValue >> 16) & 0xff;
            this.blue  = (hexValue >>  8) & 0xff;
            this.alpha = hexValue & 0xff;
        }
    }
    /*
    this(ref const Color col)
    in {
        assert(col.red   >= 0f && col.red   <= 1f);
        assert(col.green >= 0f && col.green <= 1f);
        assert(col.blue  >= 0f && col.blue  <= 1f);
        assert(col.alpha >= 0f && col.alpha <= 1f);
    } do {
        this.red   = cast(ubyte)(ubyte.max * col.red);
        this.green = cast(ubyte)(ubyte.max * col.green);
        this.blue  = cast(ubyte)(ubyte.max * col.blue);
        this.alpha = cast(ubyte)(ubyte.max * col.alpha);
    } */

    Color withTransparency(ubyte alpha) const {
        return Color(this.red, this.green, this.blue, alpha);
    }

    bool opEquals(ref const Color col) const {
        return this.red   == col.red &&
               this.green == col.green &&
               this.blue  == col.blue &&
               this.alpha == col.alpha;
    }

    ubyte[4] asRGBA() const {
        return [this.red, this.green, this.blue, this.alpha];
    }
    
    ubyte[3] asRGB() const {
        return [this.red, this.green, this.blue];
    }

    uint asHex() const {
        version (LittleEndian)
            return ((this.alpha & 0xff) << 24) + ((this.blue & 0xff) << 16) + ((this.green & 0xff) << 8) + (this.red & 0xff);
        else
            return ((this.red & 0xff) << 24) + ((this.green & 0xff) << 16) + ((this.blue & 0xff) << 8) + (this.alpha & 0xff);
    }
}

unittest {
    const Color red_col = Color.red;
    immutable uint hex_red = red_col.asHex();

    assert(hex_red == 0xff0000ff);
    assert(Color(hex_red) == red_col);
}