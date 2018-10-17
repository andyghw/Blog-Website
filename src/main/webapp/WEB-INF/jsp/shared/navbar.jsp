<%--
  Created by IntelliJ IDEA.
  User: andyg
  Date: 2018/10/3
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
            <a class="dropdown-toggle btn btn-sm btn-outline-secondary" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">
                Contact
            </a>
            <div class="dropdown-menu">
                <p class="dropdown-item">Tel: 617-959-0498</p>
                <p class="dropdown-item">Email: guo.hanw@husky.neu.edu</p>
            </div>
        </div>
        <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="/">Hanwen's Blog</a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
            <form method="post">
                <input type="text" class="form-control" id="searchTxt" placeholder="Search here.">
            </form>
            <a class="text-muted" id="searchBtn">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                     class="mx-3">
                    <circle cx="10.5" cy="10.5" r="7.5"></circle>
                    <line x1="21" y1="21" x2="15.8" y2="15.8"></line>
                </svg>
            </a>
            <a class="btn btn-sm btn-outline-secondary" href="/Blog/NewBlog">Add blog</a>
        </div>
    </div>
</header>
<div class="nav-scroller py-1 mb-2">
    <nav class="nav navbar-dark bg-dark d-flex justify-content-between" >
        <a class="p-2 text-white" href="/">Home</a>
        <a class="p-2 text-white" href="/Introduction">Introduction</a>
        <a class="p-2 text-white" href="#">Blog List</a>
        <a class="p-2 text-white" href="/Message/GetMessages">View Messages</a>
        <a class="p-2 text-white" href="https://github.com/andyghw" target="_blank">GitHub</a>
        <a class="p-2 text-white" href="https://www.linkedin.com/in/hanwen-guo-71b805149/" target="_blank">
            LinkedIn
        </a>
    </nav>
</div>
<script>
    $(function () {
        $("#searchTxt").hide();
    });
    $("#searchBtn").click(function () {
        $("#searchTxt").fadeToggle();
    });
</script>
