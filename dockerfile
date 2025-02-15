
# Use Redis as the base image 
FROM redis:latest  

# Set environment variables 
ENV ALLOW_EMPTY_PASSWORD=yes  

# Expose the default Redis port 
EXPOSE 6379  

# Command to run Redis 
CMD ["redis-server"] 
