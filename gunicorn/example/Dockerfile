FROM obmarg/gunicorn

# Install app dependencies
ADD requirements.txt /home/app/requirements.txt
RUN pip install -r /home/app/requirements.txt

# Install App
ADD app.py /home/app/app.py
RUN chown -R app /home/app/*
RUN chmod -R a-w /home/app/*

ENV APP_NAME app:app
ENV NUM_WORKERS 4
