# Deploy Flask app to Heroku

## Deployment

### 0. File Structure
|--project
|   |--all files
|--virtual
|   |--all files

<!-- Virtual Environment is only installed to get dependencies with their version, specific to your project -->
### 1. Install virual environment
* If not installed already *pip install virtualenv*
* If installed, in project directory *python -m venv virtual*

### 2. Install Flask and all related dependencies in virtual environment
* *virtual\Scripts\pip install flask*
* *virtual\Scripts\pip install gunicorn*

### 3. Test application in Virtual Environment
* *virtual\Scripts\python server.py*

<!-- To tell heroku what dependencies it should install to run your app -->
### 4. Throw all your dependencies into a *requirements.txt* file
* *virtual\Scripts\pip freeze > requirements.txt*

<!-- for production grade gunicorn server -->
### 5. Make a Procfile *for heroku*
* write in the file : *web: gunicorn server:app*
* **where** *app* **is variable that is holding flask application in your server.py**

<!-- If not present, Heroku will run your app with python 2.x -->
### 6. Make a runtime.txt file
* write *python-3.8.2*

### 4. Login to Herko
* *heroku login*

### 5. Create Heroku application
* *heroku create <app_name>*

### 6. Set target repository in heroku
* *heroku git:remote --app <app_name>*

**NOTE - If this gives error like can't authenticate with git then, run this command, otherwise skip**
#### Git Authentication
* git config --global user.email "<heroku_email_id>"
* git config --global user.name "<user_name_you_want>"

### 7. Push and deploy to Heroku
* *git push heroku master*

### 8. Check your deployed Project
* *heroku open*

# Maintainence Or Updation
* use *git push heroku master*

## Misc Commands for heroku
* show details associated to your connected heroku app *heroku info*
* show all associated apps with your account *heroku apps*
* update heroku *heroku update*
* destroy your heroku app *heroku apps:destroy*