from flask.templating import render_template
from application import app, db
from application.models import Tasks

@app.route('/')
def home():
    all_tasks = Tasks.query.all()  #retreives list of task from db 
    return render_template("index.html", title="Home", all_tasks=all_tasks)



@app.route('/create_task')
def create_task():
    new_task = Tasks(description="New Task")
    db.session.add(new_task)
    db.session.commit()
    

    return f"Task added with ID {new_task.id}"
