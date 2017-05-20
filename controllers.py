from flask import render_template, request

from app import app
from app import db
from models import User
from models import Child


@app.route('/')
def index():
    return render_template('index.html')

# Save e-mail to database and send to success page
@app.route('/craydletocrayon', methods=['POST'])
def prereg():
    email = None
    username = None
    phoneNumber = None
    if request.method == 'POST':
        email = request.form['email']
        username = request.form['username']
        age = request.form["age"]
        firstName = request.form["firstName"]
   #     lastName = request.form["Child's Last Name"]
   #     siblings = request.form["Siblings?"]
        phoneNumber = request.form['phoneNumber']
       #  Check that email does not already exist (not a great query, but works)
        if not db.session.query(User).filter(User.email == email).count():
            reg = User(username,email,phoneNumber)
            reg2 = Child(firstName,age)
            db.session.add(reg)
            db.session.add(reg2)
            db.session.commit()
            return render_template('success.html')
    return render_template('index.html')

if __name__ == '__main__':
    app.debug = True
    app.run()