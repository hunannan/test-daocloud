MAINTAINER hunan@163.com
# The FROM instruction sets the Base Image for subsequent instructions.
# Using Nginx as Base Image
FROM daocloud.io/nginx:stable

# The RUN instruction will execute any commands
# Adding HelloWorld page into Nginx server
RUN echo "Hello World DaoCloud!" > /usr/share/nginx/html/index.html
#RUN copy ./* /usr/share/nginx/html/
# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 80

# The CMD instruction provides default execution command for an container
# Start Nginx and keep it from running background
CMD ["nginx", "-g", "daemon off;"]