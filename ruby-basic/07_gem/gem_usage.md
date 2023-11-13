# gem usage

## 常用命令
- `gem list`: 列出所有已安装的gem
- `gem install <gem_name>`: 安装gem
- `gem uninstall <gem_name>`: 卸载gem
- `gem update <gem_name>`: 更新gem
- `gem search <gem_name>`: 搜索gem
- `gem environment`: 查看gem环境
- `gem help`: 查看帮助
- `gem sources`: 查看gem源

## gem换源
- `gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/`

## bundle gem
bundle gem是一个用于创建gem的工具，使用方法如下：
- `bundle gem <gem_name>`: 创建gem
- `bundle exec rake build`: 构建gem
- `bundle exec rake install`: 安装gem
- `bundle exec rake release`: 发布gem
- `bundle exec rake -T`: 查看所有可用的rake任务
- `bundle exec rake -D`: 查看所有可用的rake任务的描述
- `bundle exec rake -P`: 查看所有可用的rake任务的描述和依赖
- `bundle exec rake -W`: 查看所有可用的rake任务的描述和依赖，以及警告
