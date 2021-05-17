project "Delegates"
	kind "StaticLib"
	language "C++"
	toolset ("v142")
	
	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-temp/" .. outputDir .. "/%{prj.name}")
	

	files
	{ 
		"Delegates.h",
		"catch.hpp",
		"Delegates.cpp",
		"../**.inl",
		"Delegates.natvis",
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
		
	filter "configurations:Debug"		
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"		
		runtime "Release"
		optimize "on"

	filter "configurations:Ship"		
		runtime "Release"
		optimize "On"
