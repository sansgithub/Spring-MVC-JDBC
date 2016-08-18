<%@include  file="../header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<h1>Edit Student</h1>
<form:form modelAttribute="Student" method="post" action="${SITE_URL}/admin/students/save" role="form">
    <div class="form-group">
        <label>First Name</label>
        <form:input path="firstName" class="form-control" required="required" placeholder="Enter First Name"/>
    </div>
    <div class="form-group">
        <label>Last Name</label>
        <form:input path="lastName" class="form-control" required="required" placeholder="Enter Last Name"/>
    </div>
        
    <div class="form-group">
        <label>Email</label>
        <form:input path="email" class="form-control" required="required" placeholder="Enter Email"/>
    </div>
    <div class="form-group">
        <label>Contact No</label>
        <form:input path="contactNo" class="form-control" required="required" placeholder="Enter Contact No"/>
    </div>     
    <div class="form-group">
        <label>Gender</label>
        <form:select path="gender" class="form-control" required="required">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Others</option>
        </form:select>
    </div>   
    <div class="form-group">
        <label>DOB</label>
        <form:input path="dob" class="form-control"  placeholder="Enter Date of Birth"/>
    </div>  
    <div class="checkbox">
        <label>
            <form:checkbox path="status"  value="1" />
            Status
        </label>
    </div>  
            <form:hidden path="id"/>
            <button type="submit" class="btn btn-success">Save</button>
            <a href="${SITE_URL}/admin/students" class="btn btn-danger">Cancel</a>
</form:form>

<%@include  file="../footer.jsp" %>
