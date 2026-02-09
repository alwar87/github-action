CopyRun# Use an official nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom static site
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
