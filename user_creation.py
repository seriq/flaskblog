# coding: utf-8
from app import db
from app.models import User,Post
u = User(username='John', email='john@example.com')
db.session.add(u)
db.session.commit()
u = User(username='susan', email='susan@example.com')
db.session.add(u)
db.session.commit()
u = User(username='karen', email='karen@example.com')
db.session.add(u)
db.session.commit()
