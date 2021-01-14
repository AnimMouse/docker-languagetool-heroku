# LanguageTool server on Heroku
[LanguageTool] is an Open Source proof­reading software for English, French,
German, Polish, and more than 20 other languages.

You can use the LanguageTool with a [firefox-plugin].

This is a Dockerfile made to run on Heroku.

Based on [silvio/docker-languagetool](https://github.com/silvio/docker-languagetool)

[LanguageTool]: https://www.languagetool.org/
[firefox-plugin]: https://addons.mozilla.org/firefox/addon/languagetoolfx/

# Heroku Deployment
## Deploy by building it on Heroku's server
You need Heroku CLI

1. Clone this repo
2. Create an app on Heroku
3. Set git remote to Heroku `heroku git:remote -a  your-app-name`
4. Set stack to container `heroku stack:set container -a your-app-name`
5. Deploy to Heroku `git push heroku master`

## Deploy by building it on your computer
You need Heroku CLI & Docker

1. Clone this repo
2. Create an app on Heroku
3. Build the image and push to Container Registry `heroku container:push web -a your-app-name`
4. Release the image `heroku container:release web`

## ngram support

The program will automatically download ngram while the app is running. (see misc/start.sh)
Depending on the speed of Heroku & LanguageTool's server, ngram will take a while.
As Heroku file system is ephemeral, once the app is restarted, the ngram will be deleted and need to download again on next start.