project "glfw"
	kind "StaticLib"
	language "C"
	staticruntime "On"

	targetdir ("build/" .. outputdir .. "/%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "/%{prj.name}/obj")

	files
	{
		"src/**.c"
	}

	filter "system:windows"
		systemversion "latest"

		defines 
		{ 
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:debug"
		symbols "On"
				
	filter "configurations:release"
		optimize "On"
