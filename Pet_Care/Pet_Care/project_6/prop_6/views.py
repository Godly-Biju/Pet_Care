from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from prop_6 import dbconnection
import easygui
from django.db import models

# Create your views here.
def index(request):
    return render(request,'common/index.html')
def pay(request):
    return render(request,'user/pay.html')

def login(request):
    if request.method=='POST':
        email=request.POST.get('email')
        password=request.POST.get('pass') 
        sql="select * from login where Name='"+email+"' and Password='"+password+"' "
        data=dbconnection.select_1(sql)
        request.session['uid']=email

        if data:

            if data[3]=='admin':
                return HttpResponseRedirect("http://127.0.0.1:8000/admin_home")

            elif data[3]=='user':
                return HttpResponseRedirect("http://127.0.0.1:8000/user_home") 
           
            elif data[3]=='petcare' and data[4]=='1':
                return HttpResponseRedirect("http://127.0.0.1:8000/petcare_home")
           
            elif data[3]=='vet' and data[4]=='1':
                return HttpResponseRedirect("http://127.0.0.1:8000/vet_home") 
            
            elif data[3]=='trainer' and data[4]=='1':
                return HttpResponseRedirect("http://127.0.0.1:8000/trainer_home")

            elif data[3]=='shop' and data[4]=='1':
                return HttpResponseRedirect("http://127.0.0.1:8000/shop_home") 
           
            else:
                easygui.msgbox("Admin has not accepted your request", title="Pending")
 
        else:
            easygui.msgbox("Please check the Password and UserID", title="Invalid Data")

            return render(request,'common/login.html')

    return render(request,'common/login.html')

def register(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('pass')
        contact=request.POST.get('number')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into register (Name,Email,Password,Contact,Photo) values ('"+name+"','"+email+"','"+password+"','"+contact+"','"+photo.name+"')"
        dbconnection.insert(sql1)
               
        sql2="insert into login (Name,Password,u_type,u_status) values ('"+email+"','"+password+"','user','0')"
        dbconnection.insert(sql2)
    return render(request,'common/register.html')

def petcare(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('pass')
        contact=request.POST.get('number')
        address=request.POST.get('address')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql="insert into petcare (Name,Email,Password,Contact,Address,Photo,u_status) values ('"+name+"','"+email+"','"+password+"','"+contact+"','"+address+"','"+photo.name+"','0')"
        dbconnection.insert(sql)

        sql1="insert into login (Name,Password,u_type,u_status) values ('"+email+"','"+password+"','petcare','0')"
        dbconnection.insert(sql1)
    return render(request,'common/petcare.html')

def vet(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('pass')
        contact=request.POST.get('number')
        s=request.POST.get('s')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into vet (Name,Email,Password,Contact,Spec,Photo,u_status) values ('"+name+"','"+email+"','"+password+"','"+contact+"','"+s+"','"+photo.name+"','0')"
        dbconnection.insert(sql1)
        sql="insert into login (Name,Password,u_type,u_status) values ('"+email+"','"+password+"','vet','0')"
        dbconnection.insert(sql)

    return render(request,'common/vet.html')

def admin_home(request):
    return render(request,'admin/admin_home.html')

def add_cat(request):
    if request.method=='POST':
        c=request.POST.get('c')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        sql="insert into add_cat (Cat,Photo) values ('"+c+"','"+photo.name+"')"
        dbconnection.insert(sql)
    s="select * from add_cat"
    ss=dbconnection.select(s) 

    return render(request,'admin/add_cat.html',{'ss':ss})

def ap_pet(request):
    s="select * from petcare where u_status='0'"
    ss=dbconnection.select(s) 
    return render(request,'admin/ap_pet.html',{'ss':ss})

def apd_pet(request):
    s="select * from petcare where u_status='1'"
    ss=dbconnection.select(s) 
    return render(request,'admin/apd_pet.html',{'ss':ss})

def ap_doc(request):
    s="select * from vet where u_status='0'"
    ss=dbconnection.select(s) 
    return render(request,'admin/ap_doc.html',{'ss':ss})

def apd_doc(request):
    s="select * from vet where u_status='1'"
    ss=dbconnection.select(s)
    return render(request,'admin/apd_doc.html',{'ss':ss})

def app_pet(request):
    id=request.GET['id']
    s="select * from petcare where id='"+id+"' "
    ss=dbconnection.select_1(s)
    uu="update login set u_status='1' where Name='"+ss[2]+"' " 
    dbconnection.insert(uu)
    u="update petcare set u_status='1' where id='"+id+"' " 
    dbconnection.insert(u)
    return HttpResponseRedirect("http://127.0.0.1:8000/ap_pet")

def app_doct(request):
    id=request.GET['id']
    s="select * from vet where id='"+id+"' "
    ss=dbconnection.select_1(s)
    uu="update login set u_status='1' where Name='"+ss[2]+"' " 
    dbconnection.insert(uu)

    u="update vet set u_status='1' where id='"+id+"' " 
    dbconnection.insert(u)
    return HttpResponseRedirect("http://127.0.0.1:8000/ap_doc")

def user_home(request):
    return render(request,'user/user_home.html')

def v_doc(request):
    s="select * from vet where u_status='1'"
    ss=dbconnection.select(s)
    return render(request,'user/v_doc.html',{'ss':ss})

def v_pet(request):
    nam=request.session['uid']

    s="select * from add_pet where U_name='"+nam+"'"
    ss=dbconnection.select(s) 
    return render(request,'user/v_pet.html',{'ss':ss})

def v_petcare(request):
    s="select * from petcare where u_status='1'"
    ss=dbconnection.select(s) 
    return render(request,'user/v_petcare.html',{'ss':ss})

def add_pet(request):
    s="select * from add_cat"
    j=dbconnection.select(s)
    nam=request.session['uid']
    if request.method=='POST':
        sel=request.POST.get('sel')
        b=request.POST.get('b')
        a=request.POST.get('a')
        g=request.POST.get('g')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into add_pet (Type,Breed,Age,Gender,Photo,U_name) values ('"+sel+"','"+b+"','"+a+"','"+g+"','"+photo.name+"','"+nam+"')"
        dbconnection.insert(sql1)

    return render(request,'user/add_pet.html',{'j':j})

def gallery(request):
    id=request.GET['id']

    s="select * from add_cat"
    j=dbconnection.select(s)
    nam=request.session['uid']
    if request.method=='POST':
        b=request.POST.get('b')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into gallery (Title,Photo,P_id,Uname) values ('"+b+"','"+photo.name+"','"+id+"','"+nam+"')"
        dbconnection.insert(sql1)
    s="select * from gallery where P_id='"+id+"'"
    ss=dbconnection.select(s)
    
    return render(request,'user/gallery.html',{'j':j,'ss':ss})

def petcare_home(request):
    return render(request,'petcare/petcare_home.html')

def vet_home(request):
    return render(request,'vet/vet_home.html')

def add_breed(request):
    s="select * from add_cat"
    j=dbconnection.select(s)
    nam=request.session['uid']
    if request.method=='POST':
        sel=request.POST.get('sel')
        b=request.POST.get('b')
        d=request.POST.get('d')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        sql1="insert into breeding (Type,Breed,Description,Photo,Uname) values ('"+sel+"','"+b+"','"+d+"','"+photo.name+"','"+nam+"')"
        dbconnection.insert(sql1)
    s="select * from breeding where Uname='"+nam+"'"
    ss=dbconnection.select(s)
    return render(request,'petcare/add_breed.html',{'j':j,'ss':ss})

def cont(request):
    id=request.GET['ii']
    request.session['ii']=id
    w="select Uname from breeding where id='"+id+"' "
    sss=dbconnection.select_1(w)
    if sss:
        s="select * from breeding where Uname='"+sss[0]+"' "
        ss=dbconnection.select(s)
    else:
        easygui.msgbox("Please Use Another PetCare, Our Website under Maintainence ", title="Pending")

        return HttpResponseRedirect("http://127.0.0.1:8000/v_petcare")
    s="select * from vac where Uname='"+sss[0]+"'"
    s2=dbconnection.select(s) 
    
    return render(request,'user/cont.html',{'ss':ss,'s2':s2})

def cont2(request):
    ij=request.GET['ij']
    nam=request.session['uid']
    s="select * from breeding where id='"+ij+"' "
    br=dbconnection.select_1(s)
    
    id=request.session['ii']
    s="select * from petcare where id='"+id+"' "
    ss=dbconnection.select(s)
    if request.method=='POST':
        n=request.POST.get('n')
        c=request.POST.get('c')
        cc=request.POST.get('cc')
        b=request.POST.get('b')
        g=request.POST.get('g')
        a=request.POST.get('a')
        photo=request.FILES['photo']
        d=request.POST.get('d')
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        sql1="insert into user_info (Name,Contact,Type,Breed,Gender,Age,Photo,Description,Uname,Rpetcare,t_p) values ('"+n+"','"+c+"','"+cc+"','"+b+"','"+g+"','"+a+"','"+photo.name+"','"+d+"','"+nam+"','"+br[5]+"','"+br[2]+"')"
        dbconnection.insert(sql1)
    return render(request,'user/cont2.html',{'ss':ss,'br':br})

def req(request):
    nam=request.session['uid']
    s="select * from user_info where Rpetcare='"+nam+"'"
    ss=dbconnection.select(s)
    
    return render(request,'petcare/req.html',{'ss':ss})

def v_details(request):
    id=request.GET['id']

    s="select * from user_info where id='"+id+"'"
    ss=dbconnection.select_1(s)
    s="select * from breeding where Breed='"+ss[4]+"' "
    br=dbconnection.select_1(s)

    return render(request,'petcare/v_details.html',{'dat':ss,'br':br})

def vac(request):
    nam=request.session['uid']
    if request.method=='POST':
        sel=request.POST.get('sel')
        v=request.POST.get('v')
        a=request.POST.get('a')
        d=request.POST.get('d')
        sql1="insert into vac (Type,Name,Age,Description,Uname) values ('"+sel+"','"+v+"','"+a+"','"+d+"','"+nam+"')"
        dbconnection.insert(sql1)
    s="select * from add_cat"
    ss=dbconnection.select(s) 
    s="select * from vac where Uname='"+nam+"'"
    sss=dbconnection.select(s) 
    return render(request,'petcare/vac.html',{'ss':ss,'sss':sss})



def book_vac(request):
    nam=request.session['uid']
    id=request.GET['z']
    z="select * from vac where id='"+id+"'"
    zz=dbconnection.select_1(z)
    if request.method=='POST':
        n=request.POST.get('n')
        c=request.POST.get('c')
        d=request.POST.get('d')
        t=request.POST.get('t')
        
        sql1="insert into book_vac (Name,Contact,Date,Time,Uid,Pid,Approve) values ('"+n+"','"+c+"','"+d+"','"+t+"','"+nam+"','"+zz[5]+"','0')"
        dbconnection.insert(sql1)
    return render(request,'user/book_vac.html')

def v_req_vac(request):
    nam=request.session['uid']
    s="select * from book_vac where Approve='0' and Pid='"+nam+"' "
    sss=dbconnection.select(s)

    return render(request,'petcare/v_req_vac.html',{'sss':sss})

def app_vac(request):
    id=request.GET['z']
    s="update book_vac set Approve='1' where id='"+id+"' "
    dbconnection.update(s)

    return HttpResponseRedirect("http://127.0.0.1:8000/v_req_vac")

def apd_vac(request):
    nam=request.session['uid']
    s="select * from book_vac where Approve='1' and Pid='"+nam+"'  "
    sss=dbconnection.select(s)
    return render(request,'petcare/apd_vac.html',{'sss':sss})

def conf_vac(request):
    nam=request.session['uid']

    s="select * from book_vac where Approve='1' and Uid='"+nam+"' "
    sss=dbconnection.select(s)
    return render(request,'user/conf_vac.html',{'sss':sss})

def apd_takecare(request):
    nam=request.session['uid']
    s="select * from petcare_req where approve='1' and PT_id='"+nam+"'  "
    s4=dbconnection.select(s)
    return render(request,'petcare/apd_vac.html',{'s4':s4}) 

def app_takecare(request):
    id=request.GET['z']
    s="update petcare_req set approve='1'  "
    dbconnection.update(s)
    return HttpResponseRedirect("http://127.0.0.1:8000/v_req_takecare")
    

def conf_takecare(request):
    nam=request.session['uid']

    s="select * from petcare_req where approve='1'  "
    s4=dbconnection.select(s)
    return render(request,'user/conf_takecare.html',{'s4':s4})

def v_req_takecare(request):
    nam=request.session['uid']
    s="select * from petcare_req where approve='1' and PT_id='"+nam+"' "
    s4=dbconnection.select(s)
    return render(request,'petcare/v_req_takecare.html',{'s4':s4})

def cont_vet(request):
    id=request.GET['ii']
    s="select * from vet where id='"+id+"'"
    ss=dbconnection.select_1(s)
    nam=request.session['uid']
    if request.method=='POST':
        q=request.POST.get('q')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        sql1="insert into qn (Qns,Photo,Uname,Uvet,Choose) values ('"+q+"','"+photo.name+"','"+nam+"','"+ss[2]+"','doctor')"
        dbconnection.insert(sql1)
    return render(request,'user/cont_vet.html')

def comment2(request):
    nam=request.session['uid']
    s="select * from qn where Choose ='common'"
    ss=dbconnection.select(s)
    return render(request,'vet/comment.html',{'ss':ss})

def comment(request):
    nam=request.session['uid']
    s="select * from qn where Uvet='"+nam+"' and Choose ='doctor'"
    ss=dbconnection.select(s)
    return render(request,'vet/comment2.html',{'ss':ss})

def vm(request):
    id=request.GET['id']
    nam=request.session['uid']
    i="select * from vet where Email='"+nam+"'"
    ii=dbconnection.select_1(i)

    s="select * from qn where id='"+id+"' "
    ss=dbconnection.select(s)
    if request.method=='POST':
        q=request.POST.get('q')
        sql1="insert into comments (Reply,Uvet,Photo,Uimg) values ('"+q+"','"+ii[1]+"','"+ii[6]+"','"+id+"')"
        dbconnection.insert(sql1)
    s="select * from comments where Uimg='"+id+"'"
    sss=dbconnection.select(s)
        
    return render(request,'vet/vm.html',{'ss':ss,'sss':sss})

def trainer(request):
    if request.method=='POST':
        name=request.POST.get('name')
        contact=request.POST.get('number')
        exp=request.POST.get('ex')
        email=request.POST.get('email')
        password=request.POST.get('pass')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into trainer (Name,Contact,Exp,Email,Password,Photo,u_status) values ('"+name+"','"+contact+"','"+exp+"','"+email+"','"+password+"','"+photo.name+"','0')"
        dbconnection.insert(sql1)
        sql="insert into login (Name,Password,u_type,u_status) values ('"+email+"','"+password+"','trainer','0')"
        dbconnection.insert(sql)

    return render(request,'common/trainer.html')


def ap_tra(request):
    s="select * from trainer where u_status='0'"
    ss=dbconnection.select(s)
    return render(request,'admin/ap_tra.html',{'ss':ss})

def apd_tra(request):
    s="select * from trainer where u_status='1'"
    ss=dbconnection.select(s)
    return render(request,'admin/apd_tra.html',{'ss':ss})

def app_tra(request):
    id=request.GET['id']
    s="select * from trainer where id='"+id+"' "
    ss=dbconnection.select_1(s)

    uu="update login set u_status='1' where Name='"+ss[2]+"' " 
    dbconnection.update(uu)

    u="update trainer set u_status='1' where id='"+id+"' " 
    dbconnection.insert(u)

    return HttpResponseRedirect("http://127.0.0.1:8000/ap_tra")

def trainer_home(request):

    return render(request,'trainer/trainer_home.html')
# 
def add_spec(request):
    nam=request.session['uid']
    s="select * from add_cat"
    j=dbconnection.select(s)
    
    if request.method=='POST':
        sel=request.POST.get('sel')
        s="select * from add_cat where Cat='"+sel+"' "
        jj=dbconnection.select_1(s)
        ss="insert into spec(Cat,Photo,Uname) values ('"+jj[1]+"','"+jj[2]+"','"+nam+"')"
        dbconnection.insert(ss)
    s="select * from spec where Uname='"+nam+"' "
    jj=dbconnection.select(s)


    return render(request,'trainer/add_spec.html',{'j':j,'jj':jj})


def v_com(request):
    nam=request.session['uid']
    s="select * from qn where Uname='"+nam+"' and Choose='doctor' "
    ss=dbconnection.select(s)
    return render(request,'user/v_com.html',{'ss':ss})

def vcom(request):
    id=request.GET['id']
    nam=request.session['uid']
    s="select * from qn where id='"+id+"' "
    ss=dbconnection.select(s)
    s="select * from comments where Uimg='"+id+"'"
    sss=dbconnection.select(s)
        
    return render(request,'user/vcom.html',{'ss':ss,'sss':sss})

def tips(request):
    nam=request.session['uid']

    ss="select * from add_cat"
    j=dbconnection.select(ss)
    if request.method=='POST':
        sel=request.POST.get('sel')
        t=request.POST.get('t')
        d=request.POST.get('d')
        l=request.POST.get('l')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into tips (Cat,Title,Description,Link,Photo,Uname) values ('"+sel+"','"+t+"','"+d+"','"+l+"','"+photo.name+"','"+nam+"')"
        dbconnection.insert(sql1)
    s4="select * from tips where Uname='"+nam+"'"
    ss=dbconnection.select(s4)
    
    return render(request,'trainer/tips.html',{'j':j,'ss':ss})

def v_tips(request):
    id=request.GET['id']

    s4="select * from tips where id='"+id+"'"
    ss=dbconnection.select_1(s4)

    return render(request,'trainer/v_tips.html',{'i':ss})

def user_tips(request):
    id=request.GET['id']
    s3="select * from trainer where id='"+id+"'"
    s=dbconnection.select_1(s3)
    
    s4="select * from tips where Uname='"+s[4]+"'"
    ss=dbconnection.select(s4)
    
    return render(request,'user/user_tips.html',{'ss':ss})

def user_tips_det(request):
    
    id=request.GET['id']

    s4="select * from tips where id='"+id+"'"
    ss=dbconnection.select_1(s4)

    
    return render(request,'user/user_tips_det.html',{'i':ss})

def tran(request):
    s="select * from trainer where u_status='1'"
    ss=dbconnection.select(s)
    da=[]
    for i in ss:
        d=list(i)
        sql="select Cat from spec where Uname='"+i[4]+"'"
        data=dbconnection.select(sql)
        l=[]
        for j in data:
            for k in j:
                l.append(k)
        d.append(l)
        da.append(d)
    return render(request,'user/tran.html',{'ss':da})

def petshop(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('pass')
        contact=request.POST.get('number')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into shop (Name,Email,Password,Contact,Photo) values ('"+name+"','"+email+"','"+password+"','"+contact+"','"+photo.name+"')"
        dbconnection.insert(sql1)
               
        sql2="insert into login (Name,Password,u_type,u_status) values ('"+email+"','"+password+"','shop','0')"
        dbconnection.insert(sql2)

    return render(request,'common/petshop.html')

def ap_shop(request):
    s="select * from shop where u_status='0'"
    ss=dbconnection.select(s) 
    return render(request,'admin/ap_shop.html',{'ss':ss})

def apd_shop(request):
    s="select * from shop where u_status='1'"
    ss=dbconnection.select(s) 
    return render(request,'admin/apd_shop.html',{'ss':ss})

def app_shop(request):
    id=request.GET['id']
    s="select * from shop where id='"+id+"' "
    ss=dbconnection.select_1(s)
    uu="update login set u_status='1' where Name='"+ss[2]+"' " 
    dbconnection.insert(uu)
    u="update shop set u_status='1' where id='"+id+"' " 
    dbconnection.insert(u)
    return HttpResponseRedirect("http://127.0.0.1:8000/ap_shop")

def shop_home(request):
    return render(request,'shop/shop_home.html')

def ourpro(request):
    nam=request.session['uid']

    s="select * from addpro where Uname='"+nam+"' "
    ss=dbconnection.select(s)
    return render(request,'shop/ourpro.html',{'ss':ss})

def ourpets(request):
    nam=request.session['uid']

    s="select * from addpets where Uname='"+nam+"' "
    ss=dbconnection.select(s)
    return render(request,'shop/ourpets.html',{'ss':ss})

def addpro(request):
    nam=request.session['uid']

    if request.method=='POST':
        b=request.POST.get('b')
        a=request.POST.get('a')

        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into addpro (Name,Amount,Photo,Uname,c) values ('"+b+"','"+a+"','"+photo.name+"','"+nam+"','toy')"
        dbconnection.insert(sql1)
    return render(request,'shop/addpro.html')

def addpets(request):
    nam=request.session['uid']

    if request.method=='POST':
        cat=request.POST.get('cat')
        b=request.POST.get('b')
        g=request.POST.get('g')
        a=request.POST.get('a')
        aa=request.POST.get('aa')

        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into addpets (Cat,Breed,Gender,Age,Photo,Amount,Uname,c) values ('"+cat+"','"+b+"','"+g+"','"+a+"','"+photo.name+"','"+aa+"','"+nam+"','pet')"
        dbconnection.insert(sql1)
    return render(request,'shop/addpets.html')

    
def ourfeed(request):
    nam=request.session['uid']
    s="select * from addfeed where Uname='"+nam+"' "
    ss=dbconnection.select(s)
    return render(request,'shop/ourfeed.html',{'ss':ss})

def addfeed(request):
    nam=request.session['uid']
    if request.method=='POST':
        cat=request.POST.get('cat')
        n=request.POST.get('n')
        k=request.POST.get('k')
        a=request.POST.get('a')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)

        sql1="insert into addfeed (Cat,Name,Kilo,Amount,Photo,Uname,c) values ('"+cat+"','"+n+"','"+k+"','"+a+"','"+photo.name+"','"+nam+"','feed')"
        dbconnection.insert(sql1)
    return render(request,'shop/addfeed.html')

def v_feed(request):
    s="select * from addfeed"
    ss=dbconnection.select(s)
    return render(request,'user/v_feed.html',{'ss':ss})

def v_p(request):
    s="select * from addpets"
    ss=dbconnection.select(s)
    return render(request,'user/v_p.html',{'ss':ss})

def v_pro(request):
    s="select * from addpro"
    s4=dbconnection.select(s)
    return render(request,'user/v_pro.html',{'ss':s4})

def buy_product(request):
    nam=request.session['uid']

    s="select * from cus where Uname='"+nam+"'"
    ss=dbconnection.select(s)


    return render(request,'user/buy_product.html',{'ss':ss})

def pro(request):
    id=request.GET['id']
    nam=request.session['uid']
    ss="select * from addpro where id='"+id+"' "
    s4=dbconnection.select_1(ss)
    if request.method=='POST':
        nn=request.POST.get('n')
        c=request.POST.get('c')
        a=request.POST.get('a')
        q=request.POST.get('q')
        sql1="insert into cus (Name,Contact,Address,Quantity,Photo,Uname,c,Title) values ('"+nn+"','"+c+"','"+a+"','"+q+"','"+s4[3]+"','"+nam+"','toy','"+s4[1]+"')"
        dbconnection.insert(sql1)
        return HttpResponseRedirect("http://127.0.0.1:8000/pay")
    return render(request,'user/pro.html')


def feed(request):
    id=request.GET['id']
    nam=request.session['uid']
    ss="select * from addfeed where id='"+id+"' "
    s4=dbconnection.select_1(ss)
    if request.method=='POST':
        nn=request.POST.get('n')
        c=request.POST.get('c')
        a=request.POST.get('a')
        q=request.POST.get('q')
        sql1="insert into cus (Name,Contact,Address,Quantity,Photo,Uname,c,Title) values ('"+nn+"','"+c+"','"+a+"','"+q+"','"+s4[5]+"','"+nam+"','feed','"+s4[2]+"')"
        dbconnection.insert(sql1)
        return HttpResponseRedirect("http://127.0.0.1:8000/pay")
    return render(request,'user/feed.html')
def petss(request):
    id=request.GET['i']
    nam=request.session['uid']
    ss="select * from addpets where id='"+id+"' "
    s4=dbconnection.select_1(ss)
    if request.method=='POST':
        nn=request.POST.get('n')
        c=request.POST.get('c')
        a=request.POST.get('a')
        q=request.POST.get('q')
        sql1="insert into cus (Name,Contact,Address,Quantity,Photo,Uname,c,Title) values ('"+nn+"','"+c+"','"+a+"','"+q+"','"+s4[5]+"','"+nam+"','pet','"+s4[2]+"')"
        dbconnection.insert(sql1)
        return HttpResponseRedirect("http://127.0.0.1:8000/pay")
    return render(request,'user/petss.html')

def v_pet_req(request):
    s="select * from cus where c='pet' "
    ss=dbconnection.select(s)

    return render(request,'shop/v_pet_req.html',{'ss':ss})

def v_feed_req(request):
    s="select * from cus where c='feed' "
    ss=dbconnection.select(s)
    return render(request,'shop/v_feed_req.html',{'ss':ss})

def v_toy_req(request):
    s="select * from cus where c='toy' "
    ss=dbconnection.select(s)
    return render(request,'shop/v_toy_req.html',{'ss':ss})

def user_db(request):
    nam=request.session['uid']
    if request.method=='POST':
        q=request.POST.get('q')
        photo=request.FILES['photo']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        sql1="insert into qn (Qns,Photo,Uname,Uvet,Choose) values ('"+q+"','"+photo.name+"','"+nam+"','common','common')"
        dbconnection.insert(sql1)
    return render(request,'user/user_db.html')

def my_qn(request):
    nam=request.session['uid']
    s="select * from qn where Uname='"+nam+"' and Uvet='common' "
    ss=dbconnection.select(s)
    return render(request,'user/my_qn.html',{'ss':ss})

def bok(request):
    nam=request.session['uid']

    s="select * from add_cat"
    ss=dbconnection.select(s)
    if request.method=='POST':
        cat=request.POST.get('sel')
        b=request.POST.get('b')
        g=request.POST.get('g')
        a=request.POST.get('a')
        n=request.POST.get('n')
        c=request.POST.get('c')
        f1=request.POST.get('f1')
        f2=request.POST.get('f2')
        
        sql1="insert into petcare_req (Cat,Breed,Gender,Age,Name,Contact,Fro,T,PT_id) values ('"+cat+"','"+b+"','"+g+"','"+a+"','"+n+"','"+c+"','"+f1+"','"+f2+"','"+nam+"')"
        dbconnection.insert(sql1)
    s3="select * from petcare_req where  PT_id='"+nam+"' and approve='0' "
    s4=dbconnection.select(s3)
    return render(request,'petcare/bok.html',{'ss':ss,'s4':s4})


def bok1(request):
    
    nam=request.GET.get('q')
    s="select * from add_cat"
    ss=dbconnection.select(s)
    if request.method=='POST':
        cat=request.POST.get('sel')
        b=request.POST.get('b')
        g=request.POST.get('g')
        a=request.POST.get('a')
        n=request.POST.get('n')
        c=request.POST.get('c')
        f1=request.POST.get('f1')
        f2=request.POST.get('f2')
        
        sql1="insert into petcare_req (Cat,Breed,Gender,Age,Name,Contact,Fro,T,PT_id,approve) values ('"+cat+"','"+b+"','"+g+"','"+a+"','"+n+"','"+c+"','"+f1+"','"+f2+"','"+nam+"',0)"
        dbconnection.insert(sql1)
    s3="select * from petcare_req where PT_id='"+nam+"'"
    s4=dbconnection.select(s3)
    return render(request,'user/bok.html',{'ss':ss,'s4':s4})

def post_bid(request):
    em=request.session['uid']
    qry="select * from add_cat"
    data=dbconnection.select(qry)
    if request.method=='POST':
        sel=request.POST.get('sel')
        b=request.POST.get('b')
        a=request.POST.get('a')
        g=request.POST.get('g')
        da=request.POST.get('da')
        desc=request.POST.get('desc')
        photo=request.FILES['photo']
        doc=request.FILES['doc']
        fs=FileSystemStorage()
        fs.save('prop_6/static/bid/'+photo.name,photo)
        fs.save('prop_6/static/bid/'+doc.name,doc)
        am=request.POST.get('am')
        qry2="insert into bidding(category,breed,gender,age,disc,photo,doc,amount,uid,date)values('"+sel+"','"+b+"','"+g+"','"+a+"','"+desc+"','"+photo.name+"','"+doc.name+"','"+am+"','"+em+"','"+da+"')"
        dbconnection.insert(qry2)
    return render(request,'user/post_bidding.html',{'data':data})
def ap_bid(request):
    qry="select * from bidding where approve=0"
    data=dbconnection.select(qry)
    return render(request,'admin/ap_bid.html',{'data':data})
def approve(request):
    bid=request.GET['bid']
    qry="update bidding set approve=1 where id='"+bid+"'"
    dbconnection.update(qry)
    return HttpResponseRedirect('ap_bid')
def sale_pet(request):
    em=request.session['uid']
    qry="select * from add_cat"
    data=dbconnection.select(qry)
    if request.method=='POST':
        sel=request.POST.get('sel')
        b=request.POST.get('b')
        a=request.POST.get('a')
        g=request.POST.get('g')
        desc=request.POST.get('desc')
        photo=request.FILES['photo']
        doc=request.FILES['doc']
        fs=FileSystemStorage()
        fs.save('prop_6/static/upload/'+photo.name,photo)
        fs.save('prop_6/static/upload/'+doc.name,doc)
        am=request.POST.get('am')
        qry2="insert into sale(category,breed,gender,age,disc,photo,doc,amount,uid)values('"+sel+"','"+b+"','"+g+"','"+a+"','"+desc+"','"+photo.name+"','"+doc.name+"','"+am+"','"+em+"')"
        dbconnection.insert(qry2)
    return render(request,'user/sale_pet.html',{'data':data})
def o_bid(request):
    em=request.session['uid']
    qry1="select * from bidding where approve=1 and uid NOT LIKE '"+em+"'"
    data=dbconnection.select(qry1)
    return render(request,'user/o_bid.html',{'data':data})
def bid(request):
    em=request.session['uid']
    id=request.GET['id']
    qry1="select * from bidding1 where bid='"+id+"' ORDER BY amount DESC"
    data1=dbconnection.select(qry1)
    d1=[]
    for i in data1:
        qry2="select * from register where Email='"+i[3]+"'"
        data2=dbconnection.select_1(qry2)
        l=list(i)
        l.append(data2)
        d1.append(l)
    if request.method=='POST':
        am=request.POST.get('am')
        qry="select amount from bidding where id='"+id+"'"
        amnt=dbconnection.select_1(qry)
        if int(am)<amnt[0]:
            return render(request,'user/bid.html',{'d1':d1,'msg':"The amount must be above",'am':amnt})
        qry="insert into bidding1(bid,amount,u_id)values('"+id+"','"+am+"','"+em+"')"
        dbconnection.insert(qry)
    qry1="select * from bidding1 where bid='"+id+"' ORDER BY amount DESC"
    data1=dbconnection.select(qry1)
    d1=[]
    for i in data1:
        qry2="select * from register where Email='"+i[3]+"'"
        data2=dbconnection.select_1(qry2)
        l=list(i)
        l.append(data2)
        d1.append(l)
    return render(request,'user/bid.html',{'d1':d1})
def m_bid(request):
    em=request.session['uid']
    qry="select * from bidding where uid='"+em+"'"
    data=dbconnection.select(qry)   
    return render(request,'user/m_bid.html',{'data':data})
def bid_det(request):
    bid=request.GET['bid']
    qry1="select * from bidding1 where bid='"+bid+"' ORDER BY amount DESC"
    data1=dbconnection.select(qry1)
    d1=[]
    for i in data1:
        qry2="select * from register where Email='"+i[3]+"'"
        data2=dbconnection.select_1(qry2)
        l=list(i)
        l.append(data2)
        d1.append(l)
    return render(request,'user/bid_det.html',{'data':d1})

def bid_del(request):
    bid=request.GET['bid']
    qry3="Delete from bidding where id='"+bid+"'"
    data3=dbconnection.delete(qry3)
    qry="select * from bidding "
    data=dbconnection.select(qry)
    return render(request,'user/m_bid.html',{'data':data})

def b_pet(request):
    em=request.session['uid']
    qry="select * from sale where uid NOT LIKE '"+em+"'"
    data=dbconnection.select(qry)
    return render(request,'user/b_pet.html',{'data':data})

def b_pet1(request):
    id=request.GET['pid']
    nam=request.session['uid']
    ss="select * from sale where id='"+id+"' "
    s4=dbconnection.select_1(ss)
    if request.method=='POST':
        nn=request.POST.get('n')
        c=request.POST.get('c')
        a=request.POST.get('a')
        q=request.POST.get('q')
       
        sql1="insert into cus (Name,Contact,Address,Quantity,Photo,Uname,c,Title,sid,oem) values ('"+nn+"','"+c+"','"+a+"','"+q+"','"+s4[6]+"','"+nam+"','upet','"+s4[2]+"','"+str(s4[0])+"','"+s4[9]+"')"
        dbconnection.insert(sql1)
        return HttpResponseRedirect("http://127.0.0.1:8000/pay")
    qry1="select * from sale where id='"+id+"'"
    data=dbconnection.select_1(qry1)
    return render(request,'user/b_pet1.html',{'data':data})

def o_ord(request):
    nam=request.session['uid']
    qry="select * from cus where oem='"+nam+"'"
    data=dbconnection.select(qry)
    return render(request,'user/o_ord.html',{'data':data})
