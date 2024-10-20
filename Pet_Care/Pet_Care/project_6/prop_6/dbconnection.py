import pymysql
db=pymysql.connect(user='root',password='',host='localhost',database='pet')

def insert(q):
    cu=db.cursor()
    cu.execute(q)
    db.commit()

def select(q):
    cu=db.cursor()
    cu.execute(q)
    d=cu.fetchall()
    return d

def select_1(q):
    cu=db.cursor()
    cu.execute(q)
    d=cu.fetchone()
    return d

def delete(q):
    cu=db.cursor()
    cu.execute(q)
    db.commit()
    
def update(q):
    cu=db.cursor()
    cu.execute(q)
    db.commit()
