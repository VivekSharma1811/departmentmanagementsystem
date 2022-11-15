<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <c:import url="/WEB-INF/javascript/index.js" />
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.flex-all-center{
    display: flex;
    justify-content:center;
    align-items:center;
}
@media  screen and (max-width:1000px) {
    nav{
        flex-direction: column;
    }
    .pong{
        justify-content: center;
        margin:12px o;

    }
    nav ul{
        justify-content: center;
    }
    
}
{
    padding: 0;
    margin:0;
}
header{
    
    background-color: black;
    color: brown;
}



nav ul{
    display: flex;
    justify-content: flex-start;
    align-items: center;
    height:68px;
}
nav{
    display: flex;
}
nav ul li a:hover{
 
    font-weight: bold;
}
.pong{
    display: flex;
    height: 56px;
    padding: 5px 23px;
}
.container{
    min-height: calc(100vh - 68px - 12vh);
}
nav ul li{
    list-style: none;
    padding: 12px 43px;
}
 nav ul li a{
    text-decoration: none;
    color:wheat;
 }
 footer{
    height: 12vh;
    background-color: black;
    color:beige;
    font-family: 'Regular 400 Italic';
}</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>first</title>
  
</head><body>
    <header>
        <nav>
            <div class="pong"><img src="<c:url value=project/src/main/webapp/Images/abc.jpg"></div>
            <ul>
                <li>
                    <a href="Admin.jsp">Admin</a>
                </li>
                <li>
                    <a href="Faculty.jsp">Faculty</a>
                </li>
                <li>
                    <a href="Student.jsp">Student</a>
                </li>  
            </ul>
        </nav>
    </header>
    <main class>
        <div class="container">
            <div class="slider">
                
                <img src="https://www.google.com/search?q=logo+student&client=firefox-b-d&tbm=isch&source=iu&ictx=1&vet=1&fir=Ib1PAuTXPje1XM%252C6-rGk5QMJ5Gf5M%252C_%253BTlJJmgxPEggYjM%252CrewR8nCGeLi1IM%252C_%253BMg2x_N-AcL0tzM%252CwFh8cL17ELEQ4M%252C_%253Bp32Gzt6BR9S55M%252CKwCmxw_Z5PJn7M%252C_%253BYugIA6UjS1mFkM%252CehnlnDj_v7QZzM%252C_%253BgS7R6k123HPAwM%252CCHsHuuEK1dE6GM%252C_%253B64dWXp45uIyabM%252CMNPs53Ldai7FxM%252C_%253B0S3sm3F_xx2K1M%252CfnWSs4WZSnsiJM%252C_%253B3Uo3fTsRT-SfwM%252CZLenil2YQkDd5M%252C_%253Bq2guoXbvQbWzkM%252CFXcQU4T8d_T3LM%252C_%253BTQ-dQ4_hQT8fkM%252CehnlnDj_v7QZzM%252C_%253BSbe-wM0LDnE1DM%252CuAGTVQaNSjdm7M%252C_%253BCYkSY-iCuhNIeM%252CqGnekjQbZlMlsM%252C_%253B0zpwRiac3PFYEM%252CjipPsXkjS13y5M%252C_%253BLDxhGe3DMPqRHM%252CjipPsXkjS13y5M%252C_%253BHiOqxXRoqO5pYM%252CNtRkltApTTvOUM%252C_&usg=AI4_-kQdCxPEPwq--Lz4-i3rHWyEzikDjw&sa=X&ved=2ahUKEwjxo97Gv_D4AhW87zgGHXVdByEQ9QF6BAgMEAE#imgrc=p32Gzt6BR9S55M" alt=""></div><img src="https://images.unsplash.com/photo-1561444654-6a5fb8dcb23d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt=""  width="58%">
            </div>
        </div>
    </main>
    <footer class ="flex-all-center">
         <p >Copyright &copy; MYdepartmentsystem.com</p>
    </footer>
</body>
</html>