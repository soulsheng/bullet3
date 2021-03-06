
	project "Test_Gwen_OpenGL"
		
	kind "ConsoleApp"
	flags {"Unicode"}
	
	defines { "GWEN_COMPILE_STATIC" , "_HAS_EXCEPTIONS=0", "_STATIC_CPPLIB" }
	
	targetdir "../../bin"
	
	includedirs 
	{
	
		"..",
		".",
		"../../src"
	}

	initOpenGL()
	initGlew()
			
	links {
		"gwen",
	}
	
	
	files {
		"../FontFiles/OpenSans.cpp",
		"../OpenGLWindow/TwFonts.cpp",
		"../OpenGLWindow/TwFonts.h",
		"../OpenGLWindow/LoadShader.cpp",
		"../OpenGLWindow/LoadShader.h",
		"../OpenGLWindow/GLPrimitiveRenderer.cpp",
		"../OpenGLWindow/GLPrimitiveRenderer.h",				
		"../OpenGLWindow/GwenOpenGL3CoreRenderer.h",
		"../OpenGLTrueTypeFont/fontstash.cpp",
		"../OpenGLTrueTypeFont/fontstash.h",
		"../OpenGLTrueTypeFont/opengl_fontstashcallbacks.cpp",
 		"../OpenGLTrueTypeFont/opengl_fontstashcallbacks.h",
		"../../src/Bullet3Geometry/b3ConvexHullComputer.cpp",
		"../../src/Bullet3Geometry/b3ConvexHullComputer.h",
		"../../src/Bullet3Common/b3Logging.h",
		"../../src/Bullet3Common/b3Logging.cpp",
		"../../src/Bullet3Common/b3AlignedAllocator.cpp",
		"../../src/Bullet3Common/b3Quickprof.cpp",
		"../../src/Bullet3Common/b3Quickprof.h",
		"**.cpp",
		"**.h",
	}
	if os.is("Windows") then
	files {
		"../OpenGLWindow/Win32OpenGLWindow.cpp",
                "../OpenGLWindow/Win32OpenGLWindow.h",
                "../OpenGLWindow/Win32Window.cpp",
                "../OpenGLWindow/Win32Window.h",
	}
	end
	if os.is("Linux") then 
		files{
		"../OpenGLWindow/X11OpenGLWindow.h",
		"../OpenGLWindow/X11OpenGLWindow.cpp"
		}
	end
	if os.is("MacOSX") then
		links{"Cocoa.framework"}
print("hello!")
		files{
		"../OpenGLWindow/MacOpenGLWindow.mm",
		"../OpenGLWindow/MacOpenGLWindow.h",
		}
	end
