## Installation

**Ubuntu**
```bash
sudo apt-get update
sudo apt-get install -y libsdl2-dev libsdl2-image-dev libpcre3-dev libfreetype6-dev libglew-dev libglm-dev libboost-dev libpng12-dev
sudo apt-get install -y ffmpeg
```

**CentOS**
```bash
sudo yum install -y epel-release
sudo yum install -y yum install -y gcc-c++ SDL2-devel SDL2_image-devel pcre-devel freetype-devel glew-devel glm-devel boost-devel libpng-devel
```

**MacOS**
```bash
brew install logstalgia 
````

----

## Usage

**回放日志**

```bash
logstalgia access.log
```

**远程实时跟踪日志**
```bash
ssh username@yourserver.com "tail -f /var/log/nginx/access.log" | logstalgia --sync
```

**远程实时跟踪日志并过滤指定字符串**
```bash
ssh username@yourserver.com "tail -f /var/log/nginx/access.log" | logstalgia -g "clients,Mozilla/4.0,50" --sync
```

