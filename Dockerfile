# Stage 1: Build stage (Uses Alpine to prepare files)
FROM alpine:latest AS builder

# Set working directory
WORKDIR /app

# Copy website files
COPY index.html .
COPY style.css .
COPY pratham2025.jpeg .
COPY Prathmesh_Shinde.pdf .

# Stage 2: Final minimal image using distroless
FROM gcr.io/distroless/static:nonroot

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy built files from builder stage
COPY --from=builder /app /usr/share/nginx/html

# Use Nginx as entrypoint
COPY --from=builder /bin/sh /bin/sh  # Add shell for minimal debugging
COPY --from=builder /bin/busybox /bin/busybox # Add busybox for small utilities

# Expose the required port
EXPOSE 80

# Start Nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

