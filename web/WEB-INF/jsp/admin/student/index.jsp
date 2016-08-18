<%@include  file="../header.jsp" %>
        <h1>Students</h1>
        <div class="pull-right">
            <p>
                <a href="${SITE_URL}/admin/students/add" class="btn btn-primary btn-sm" title="Add Student">
                    <span class="glyphicon glyphicon-plus"></span>
                </a>                
                <a href="${SITE_URL}" class="btn btn-danger btn-sm" title="Logout">
                    <span class="glyphicon glyphicon-off"></span> Logout
                </a>                
            </p>
        </div>
        <table class="table table-bordered table-hover table-striped">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Contact No</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Added Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>
                        ${student.firstName} ${student.lastName}<br/>
                        ${student.email}
                    </td>
                    <td>${student.contactNo}</td>
                    <td>${student.gender}</td>
                    <td>${student.dob}</td>
                    <td>${student.addedDate}</td>
                    <td>${student.status}</td>
                    <td>
                        <a href="${SITE_URL}/admin/students/edit/${student.id}" class="btn btn-success btn-sm" title="Edit Student">
                            <span class="glyphicon glyphicon-pencil"></span>
                        </a>
                        <a href="${SITE_URL}/admin/students/delete/${student.id}" class="btn btn-danger btn-sm" title="Delete Student" onclick="return confirm('Are you sure to delete ?')">
                            <span class="glyphicon glyphicon-trash"></span>
                        </a>                            
                    </td>
                    
                </tr>
            </c:forEach>
        </table>
<%@include  file="../footer.jsp" %>
