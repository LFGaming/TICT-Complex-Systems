# TICT-Complex-Systems

## Project
This is assignment 'Ontwikkelomgeving met Docker en Git' for ComplexSystems. 
We create a docker container with the C++ build tools and use the tools to build a simple Hello World command line application.

We use CMake with CMakeLists.txt to create a Makefile, and use that to build the application. 

## How to build and run the dockerfile
To build the dockerfile run the following command in the root folder: 
```bash
docker build -t lfgaming/hello-world .
```

Then to run the file run:
```bash
docker run lfgaming/hello-world
```

## Dockerfile
- The dockerfile uses the latest LTS Ubuntu, `24.04`.
- The hello world project files get copied to the `/usr/local/hello-world` directory in the container.
- After that we install the neccesary build tools. 
- We use cmake to create the Makefile and use make to create the hello-world executable.
- CMD makes sure that the executable will be run when the container starts.


## CMakeLists.txt
- Basicly one command: add_executable to build main.cpp

