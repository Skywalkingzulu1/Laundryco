FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY . .

# Environment variables
ENV PORT=8000

# Expose the port the app runs on
EXPOSE 8000

# Start a simple HTTP server to serve the static site
CMD ["sh", "-c", "python -m http.server $PORT"]
