from app import db

# Create our database model
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    phoneNumber = db.Column(db.VARCHAR, unique = True)
    email = db.Column(db.String(120), unique=True)
    username = db.Column(db.String(80), unique=True)
    def __init__(self, email,username,phoneNumber):
        self.email = email
        self.username = username
        self.phoneNumber = phoneNumber
    def __repr__(self):
        return '<E-mail %r, Username %r>' % self.email, self.username

class Child(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    firstName = db.Column(db.String(120), unique=False)
    age = db.Column(db.Integer)
   # lastName = db.column(db.String(120))
   # siblings = db.column(db.Boolean)

    def __init__(self,firstName,age):
        self.age = age
        self.firstName = firstName
   #     self.lastName = lastName
  #      self.siblings = siblings


    def __repr__(self):
        return '<firstName %s>' % self.firstName



