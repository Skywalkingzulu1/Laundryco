FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Python dependencies (if any are needed at runtime)
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code (static assets)
COPY . ./

# Expose the default HTTP port
EXPOSE 8000

# Use Python's built‑in HTTP server to serve the static site
CMD ["python", "-m", "http.server", "8000"]
