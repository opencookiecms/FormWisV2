<%
    //HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
    String uid = (String) session.getAttribute("username");

%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED --> 
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Fish Information System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item active">
                <a class="nav-link" href="homepage">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AllFishList">Fish</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AllProjectList">Project</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AllResearcher">Researcher</a>
            </li>


        </ul>
        <div class="form-inline my-2 my-lg-0">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="profile.jsp"> <% out.print(uid);%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="controller/validatorLogout.jsp">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Login</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
