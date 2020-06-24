# :rocket: Rocketchat-ci Image

This is the Git repo of the Docker image used for automate deployment of **`rocketchat apps`**

<p align="center">
  <img src="https://img.shields.io/docker/cloud/build/chseki/rocketchat-app-deploy" alt="build status"></a>
</p>


### :book:  Environment Variables 
    ROCKET_URL_SERVER
    ROCKET_USER
    ROCKET_PASS
    APP_PATH
    
>APP_PATH indicates the bot project folder with contains **`app.json`** file.
---

### :computer: Example on circle-ci

    jobs:
      rocketchat-deploy:
        docker:
          - image: chseki/rocketchat-app-deploy
        steps:
          - checkout
          - run:
              name: Rocketchat Deploy
              command: app_deploy
        
