FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app-devops




## Step 2:
# Copy source code to working directory
COPY . /app-devops
COPY model_data /app-devops/model_data

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com && \
    pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com




## Step 4:
# Expose port 80
EXPOSE 80



## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

