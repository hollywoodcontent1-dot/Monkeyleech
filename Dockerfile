FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

from datetime import datetime
import pytz

# Define the Indian time zone
india_tz = pytz.timezone('Asia/Kolkata')

# Get current time in India
india_time = datetime.now(india_tz)

print("Current Time in India:", india_time.strftime('%Y-%m-%d %H:%M:%S %Z%z'))


COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
