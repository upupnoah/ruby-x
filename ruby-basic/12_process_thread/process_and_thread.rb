# frozen_string_literal: true

# 通过 Process.fork 创建一个子进程， 并返回子进程的 pid
pid = Process.fork { }

# Thread 用于创建一个线程
Thread.new { }

# GIL：Global Interpreter Lock， 全局解释器锁， 用于保证同一时刻只有一个线程在运行
# 具体可以查一下
