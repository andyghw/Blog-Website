<%--
  Created by IntelliJ IDEA.
  User: andyg
  Date: 2018/10/4
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<div class="order-md-1">
    <h4 class="mb-3 justify-content-center">Leave your message</h4>
    <div class="row">
        <div class="col-md-6 mb-3">
            <p>Connect your LinkedIn Profile
                <span class="text-muted"> (Optional)</span>
            </p>
            <a href="*"><img src="../../img/connected.png" height="40px" width="200px"></a>
        </div>
    </div>
    <form class="was-validated" action="/Message/AddMessage" method="post">
        <div class="row">
            <div class="col-md-6 mb-3">
                <input type="hidden" name="linkedInUrl">
                <label>Title</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="title" placeholder="Title" required>
                    <div class="invalid-feedback" style="width: 100%;">
                        Your title is required.
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label>Name</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="name" placeholder="Name" required>
                    <div class="invalid-feedback" style="width: 100%;">
                        Your name is required.
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label>Corporation</label>
                <div class="input-group is-valid">
                    <input type="text" class="form-control" name="corporation" placeholder="Corporation">
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label>Email</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="email" placeholder="Email" required>
                    <div class="invalid-feedback" style="width: 100%;">
                        Your email is required.
                    </div>
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label>Message</label>
            <textarea class="form-control" name="text" rows="10"
                      placeholder="Please leave your message here. Once submitted, I will receive an email alert so that I can reply you as soon as possible." required></textarea>
            <div class="invalid-feedback">
                Please enter your message here.
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3"></div>
            <div class="col-md-3 mb-3"></div>
            <div class="col-md-3 mb-3">
                <input type="submit" class="form-control btn-success" id="submitBtn" value="Submit">
            </div>
        </div>
    </form>
</div>
