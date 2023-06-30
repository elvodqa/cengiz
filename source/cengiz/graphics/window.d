module cengiz.graphics.window;

private:

import bindbc.sdl;
import bindbc.opengl;

import std.stdio;
import std.string;

import cengiz.math.rectangle;
import cengiz.graphics.color;

public:

class Window {
    public:
    this(int width, int height, string title) {
        this.width = width;
        this.height = height;
        this.title = title;
        this.fullscreen = false;
        this.vsync = false;
        this.resizable = false;
        this.borderless = false;
        this.cursor_visible = true;

        SDLSupport sdlStatus = loadSDL();
       
        if (sdlStatus != sdlSupport)
        {
            writeln("Failed loading SDL");
        }

        SDL_Init(SDL_INIT_EVERYTHING);
        version (Windows) {
            SDL_SetHint(SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING, "1");
        }
        version(OSX) {
            SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
            SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);
            SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
        }
        else {
            SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
            SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);
        }
        SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
        SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);
        SDL_GL_SetSwapInterval(this.vsync ? 1 : 0);

        SDL_ShowCursor(this.cursor_visible ? SDL_ENABLE : SDL_DISABLE);

      
        this.window = SDL_CreateWindow(toStringz(this.title), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, this.width, this.height, SDL_WINDOW_OPENGL | SDL_WINDOW_SHOWN | (this.resizable ? SDL_WINDOW_RESIZABLE : 0) | (this.borderless ? SDL_WINDOW_BORDERLESS : 0) | (this.fullscreen ? SDL_WINDOW_FULLSCREEN : 0));
        if (!this.window)
		    throw new SDLException();

        this.context = SDL_GL_CreateContext(this.window);
        if (!this.context)
            throw new SDLException();
        SDL_GL_MakeCurrent(this.window, this.context);

        GLSupport glStatus = loadOpenGL();
        if (glStatus < glSupport)
        {
            writeln("Failed loading minimum required OpenGL version.");
        } else {
            writeln("OpenGL version: ", glGetString(GL_VERSION));
        }

    }

    void set_cursor_visible(bool visible) {
        this.cursor_visible = visible;
        SDL_ShowCursor(this.cursor_visible ? SDL_ENABLE : SDL_DISABLE);
    }

    void set_cursor_position(int x, int y) {
        SDL_WarpMouseInWindow(this.window, x, y);
    }

    void set_vsync(bool vsync) {
        this.vsync = vsync;
        SDL_GL_SetSwapInterval(this.vsync ? 1 : 0);
    }

    void set_fullscreen(bool fullscreen) {
        this.fullscreen = fullscreen;
        SDL_SetWindowFullscreen(this.window, this.fullscreen ? SDL_WINDOW_FULLSCREEN : 0);
    }

    void set_resizable(bool resizable) {
        this.resizable = resizable;
        SDL_SetWindowResizable(this.window, this.resizable ? SDL_TRUE : SDL_FALSE);
    }

    void set_borderless(bool borderless) {
        this.borderless = borderless;
        SDL_SetWindowBordered(this.window, this.borderless ? SDL_FALSE : SDL_TRUE);
    }

    void set_size(int width, int height) {
        this.width = width;
        this.height = height;
        SDL_SetWindowSize(this.window, this.width, this.height);
    }

    Rectangle get_size() {
        int w, h;
        SDL_GetWindowSize(this.window, &w, &h);
        return Rectangle(0, 0, w, h);
    }

    void set_title(string title) {
        SDL_SetWindowTitle(this.window, title.ptr);
    }

    void set_icon(string path) {
        SDL_Surface* icon = SDL_LoadBMP(path.ptr);
        SDL_SetWindowIcon(this.window, icon);
        SDL_FreeSurface(icon);
    }

    bool is_open() {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                return false;
            }
        }
        return true;
    }

    void clear(Color clear_color = Color(0, 0, 0, 255)) {
        glClearColor(clear_color.red/255, clear_color.green/255, clear_color.blue/255, clear_color.alpha/255);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    
    void display() {
        SDL_GL_SwapWindow(this.window);
    }


    void destroy() {
        SDL_GL_DeleteContext(this.context);
        SDL_DestroyWindow(this.window);
        SDL_Quit();
    }

    private:
    SDL_Window* window;
    SDL_GLContext context;
    int width;
    int height;
    string title;
    bool fullscreen;
    bool vsync;
    bool resizable;
    bool borderless;
    bool cursor_visible; 
}

class SDLException : Exception
{
	/// Creates an exception from SDL_GetError()
	this(string file = __FILE__, size_t line = __LINE__) nothrow @nogc
	{
		super(cast(string) SDL_GetError().fromStringz, file, line);
	}
}