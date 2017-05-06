from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://localhost/Brandon'
db = SQLAlchemy(app)

# Create our database model
class User(db.Model):
    __tablename__ = "users"
    id = db.Column(db.Integer, primary_key=True)
   # phoneNumber = db.Column(db.VARCHAR, unique = True)
    email = db.Column(db.String(120), unique=True)
    username = db.Column(db.String(80), unique=True)
    def __init__(self, username, email):
        self.email = email
        self.username = username
        #  self.phoneNumber = phoneNumber

    def __repr__(self):
        return '<E-mail %r>' % self.email
       # return ' <Phone Number %r>' % self.username
# Set "homepage" to index.html
@app.route('/')
def index():
    return render_template('index.html')

# Save e-mail to database and send to success page
@app.route('/Brandon', methods=['POST'])
def prereg():
    email = None
    username = None
   # phoneNumber = None
    if request.method == 'POST':
        email = request.form['email']
        username = request.form['phoneNumber']
       # phoneNumber = request.form['phoneNumber']
        # Check that email does not already exist (not a great query, but works)
        if not db.session.query(User).filter(User.email == email).count():
            reg = User(email,username)
            #reg2 = User(username)
            db.session.add(reg)
            #db.session.add(reg2)
            db.session.commit()
            return render_template('success.html')
    return render_template('index.html')

if __name__ == '__main__':
    app.debug = True
    app.run()