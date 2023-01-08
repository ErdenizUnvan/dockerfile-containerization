# Use python:3.6 for the base image
FROM python:3.6

# Copy the .py files in ./app from build's context to /app
COPY ./app/*.py /app/

# Copy the Pipfile in ./app from build's context to /app
COPY ./app/Pipfile /app

# Change the working directory to WORKDIR
WORKDIR /app

# Install pipenv
RUN pip install pipenv

# Install the environment
RUN pipenv install 

# Expose port 8080
EXPOSE 8080

# Start the python application
CMD pipenv run python3.6 myapp.py
