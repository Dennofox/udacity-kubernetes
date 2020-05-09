FROM python:3.7.3-stretch
#FROM python:3.8.2-buster

## Step 1:
# Create a working directory
WORKDIR /usr/src/app

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
# We use CMD instead of RUN in order to have the application launched inside the container instead of in the docker build command
CMD [ "python", "./app.py" ]
