http://blog.sahildiwan.com/posts/flask-and-postgresql-app-deployed-on-heroku/

To create tables for DB
While in your virtual environment

python
>>> from app import db
>>> db.create_all()
>>> exit()