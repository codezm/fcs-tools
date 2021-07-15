## Fast Connect Server Tools

### 前提条件

本项目运行依赖 expect、ssh、scp、redis-cli 命令，依赖 [jq](https://github.com/stedolan/jq) 来解析 `JSON`。

##### `expect` 安装

```bash
$ yum install -y expect
```

##### `jq` 安装

```bash
# macos
$ brew install jq
# linux
$ curl -L -o /usr/bin/jq -s https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x /usr/local/bin/jq
# centos
$ yum install -y epel-release
$ yum update -y
$ yum install -y jq
$ yum remove -y epel-release
# ubuntu
$ apt install -y jq
```

### 安装

```bash
$ git clone https://github.com/codezm/fcs-tools.git
$ cd fcs-tools
$ chmod +x install.sh
$ source ./install.sh
```

### 使用

##### zssh 命令

- 服务器添加

  ```bash
  $ zssh add vm-web96.2 172.16.96.2 codezm 1234 root1234
  ```

- 服务器列表

  ```bash
  $ zssh list
  $ zssh list -v
  $ zssh list -vv
  ```

- 服务器搜索

  ```bash
  $ zssh search vm
  ```

- 服务器删除

  ```bash
  $ zssh delete vm-web96.2
  ```

##### zscp 命令

- 下载服务器文件

  ```bash
  $ zscp vm-web96.2 download /etc/passwd ./
  ```

- 上传本地文件

  ```bash
  $ zscp vm-web96.2 upload ./test.txt /tmp/
  ```

##### zredis 命令

- 服务器添加

  ```bash
  $ zredis add vm-web96.2 172.16.96.2 6379 0 1234
  ```

- 服务器列表

  ```bash
  $ zredis list
  $ zredis list -v
  $ zredis list -vv
  ```

- 服务器搜索

  ```bash
  $ zredis search vm
  ```

- 服务器删除

  ```bash
  $ zssh delete vm-web96.2
  ```

### LICENSE

[MIT License](https://github.com/codezm/fcs-tools/blob/master/LICENSE)

