#pragma once
#ifdef _WIN32
#define DLLEXPORT __declspec(dllexport) 
#else
#define DLLEXPORT
#endif

DLLEXPORT int add(const int, const int);
