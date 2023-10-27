#调用官方最新python3.11.5
FROM python:latest

# 设置工作目录
WORKDIR /home/choreouser

# 将应用程序文件复制到容器中
COPY app.py start.sh /home/choreouser/

EXPOSE 3000

# 安装应用程序的依赖
RUN pip install --upgrade pip &&\
    addgroup --gid 13058 choreo &&\
    adduser --disabled-password  --no-create-home --uid 13058 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    chmod +x app.py start.sh /home/choreouser/

# 设置默认的命令，即启动应用程序
CMD ["python", "app.py"]

USER 13058
