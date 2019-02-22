# cpp_compile

This is the compile shells for C++ & C.

## Installation
#### 1. clone this repository into your C++ or C project
```bash
$ cd <your_project>
$ git clone https://github.com/RyodoTanaka/cpp_compile.git
```

#### 2. create linkers
```bash
$ cd <your_project>
$ ln -s ./cpp_compile/compile.bash compile.bash
$ ln -s ./cpp_compile/.build.bash .build.bash
$ ln -s ./cpp_compile/.setup.bash .setup.bash
$ ln -s ./cpp_compile/.images .images
```

#### 3. create `CMakeLists.txt`
Just to create your `CMakeLists.txt`.

## Usage
#### 1. Compile
Just run `compile.bash`
```bash
$ source compile.bash
```

#### 2. Run
There is `run` command is created automatically.  
And that command could use Tab compile.

```bash
$ run <what you wan to tun>
```
