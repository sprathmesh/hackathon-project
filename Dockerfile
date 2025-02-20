# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static content
RUN rm -rf ./*

# Copy your website files to the Nginx web directory
COPY index.html .
COPY style.css .
COPY pratham2025.jpeg .
COPY Prathmesh_Shinde.pdf .

# Expose port 8085 for external access
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

