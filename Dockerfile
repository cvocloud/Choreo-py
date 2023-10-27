#调用官方最新python3.11.5
FROM python:latest

# 设置工作目录
WORKDIR /app

# 将应用程序文件复制到容器中
COPY . .

EXPOSE 3000

# 安装应用程序的依赖
RUN chmod 777 start.sh swith /app  &&\
    pip install --upgrade pip
    
    

# 设置默认的命令，即启动应用程序
CMD ["python", "app.py"]

USER 13058
