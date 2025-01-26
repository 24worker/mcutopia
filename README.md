# 🌟 Minecraft UTOPIA 服务器 🌟

该项目提供了一个 Docker 化的 Minecraft UTOPIA 服务器。它使用 Alpine Linux 基础镜像和 OpenJDK 17 来运行 Minecraft 服务器。

## ✨ 特性

- 🏋️‍♂️ 轻量级的 Alpine Linux 基础镜像
- ☕ 使用 OpenJDK 17 运行 Minecraft 服务器
- ⚙️ 可配置的 Java 内存设置
- 🌐 暴露端口 25565 和 25566 供 Minecraft 服务器连接

## 🚀 入门指南

### 📋 前提条件

- 🐳 你的机器上已安装 Docker
- 🐙 你的机器上已安装 Docker Compose

### 🛠️ 安装

1. 克隆仓库：

    ```sh
    git clone https://github.com/yourusername/mcutopia.git
    cd mcutopia
    ```

2. 构建 Docker 镜像：

    ```sh
    docker build -t 24workers/mcutopia:latest .
    ```

### 📦 使用方法

#### 使用 Docker Compose

1. 创建一个 `docker-compose.yml` 文件，内容如下：

    ```yaml
    services:
      app:
        image: 24workers/mcutopia:latest
        environment:
          # 设置服务器的最大内存和最小内存
          # 最大内存
          - JAVA_MAX_MEM=4g
          # 最小内存-最小内存一般可不用更改
          - JAVA_MIN_MEM=512m
        ports:
          - "25565:25565"
          # - "25566:25566"
    ```

2. 使用 Docker Compose 启动服务器：

    ```sh
    docker-compose up -d
    ```

3. 停止服务器：

    ```sh
    docker-compose down
    ```

#### 使用 Docker CLI

1. 运行 Docker 容器：

    ```sh
    docker run -d -p 25565:25565 -p 25566:25566 \
      -e JAVA_MAX_MEM=4g \
      -e JAVA_MIN_MEM=512m \
      24workers/mcutopia:latest
    ```

### ⚙️ 配置

你可以使用环境变量配置 Java 内存设置：

- `JAVA_MAX_MEM`: Java 进程的最大内存（例如，`4g` 表示 4 GB）
- `JAVA_MIN_MEM`: Java 进程的最小内存（例如，`512m` 表示 512 MB）

如果这些变量未设置，Java 将自动管理内存。

### 🔌 端口

服务器暴露以下端口：

- `25565`: 默认的 Minecraft 服务器端口
- `25566`: 额外的 Minecraft 服务器连接端口（可选）

### 👨‍💻 维护者

- 📧 邮箱: richardmiku@vip.qq.com

### 📜 许可证

该项目使用 MIT 许可证。
