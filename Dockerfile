FROM ruby:3.1.2 AS rails-toolbox

# Create user
ENV USERNAME nick
RUN useradd -ms /bin/bash $USERNAME


# Default directory
ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
RUN chown -R nick:nick /opt/app

# Change to new user
USER $USERNAME

# Install rails
RUN gem install rails bundler
WORKDIR /opt/app
RUN rails new mouse
WORKDIR mouse
COPY images_controller.rb app/controllers/
COPY mouse.html.erb app/views/images/
COPY routes.rb config/
COPY mouse.jpg app/assets/images/

# Expose port so we can access the website
EXPOSE 3000

# Run a shell
CMD rails server -b 0.0.0.0
