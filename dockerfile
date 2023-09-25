FROM tensorflow/tensorflow:latest-gpu

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8888

# CMD poetry shell; poetry install; jupyter lab --ip=0.0.0.0 --allow-root --no-browser; 
CMD jupyter lab --ip=0.0.0.0 --allow-root --no-browser; 