FROM python:3.10-slim

# starting directory
WORKDIR /code

# install all the requirements
# the installation can be cached
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# copy the code
COPY ./src ./src

# entry command
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "3000", "--reload"]
