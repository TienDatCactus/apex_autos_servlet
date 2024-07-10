<!DOCTYPE html>
<html lang="en">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link rel="apple-touch-icon" sizes="180x180" href=" assets/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href=" assets/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href=" assets/favicon/favicon-16x16.png">
        <link rel="manifest" href=" assets/favicon/site.webmanifest">
        <title>Admin - Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="assets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        
               <jsp:include page="navbar.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">General Settings</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">General Settings</li>
                        </ol>
                        <div class="row">

                            <c:choose>
                                <c:when test="${empty tradeMark}">

                                    <div class="col-6">
                                        <div class="card mb-4" id="editProductModal">
                                            <div class="card-header">
                                                <h5 class="card-title">Add General Settings</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="generalSettingsForm" action="dashboard?state=setting&do=add" method="post" enctype="multipart/form-data">
                                                    
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Site Name</label>
                                                        <input type="text" class="form-control"  placeholder="Enter site name" name="nameEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="siteLogo" class="form-label">Site Logo</label>
                                                        <input type="file" class="form-control" id="siteLogo" onchange="displayImage(this)" name="image" multiple>
                                                        <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Describe</label>
                                                        <input type="text" class="form-control"  placeholder="Enter describe" name="describeEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="privacyEditInput" class="form-label">Privacy Policy</label>
                                                        <textarea class="form-control"  rows="4" name="privacyEditInput" placeholder="Enter privacy policy"></textarea>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="termEditInput" class="form-label">Terms & Conditions</label>
                                                        <textarea class="form-control"  rows="4" name="termEditInput" placeholder="Enter terms & conditions"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Add</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>

                                    <div class="col-6">
                                        <div class="card mb-4" id="editProductModal">
                                            <div class="card-header">
                                                <h5 class="card-title">Update General Settings</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="generalSettingsForm" action="dashboard?state=setting&do=update" method="post" enctype="multipart/form-data">
                                                    <div class="mb-3">
                                                        <input type="hidden" class="form-control" id="idEditInput" name="idEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Site Name</label>
                                                        <input type="text" class="form-control" id="nameEditInput" placeholder="Enter site name" name="nameEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="siteLogo" class="form-label">Site Logo</label>
                                                        <input type="file" class="form-control" id="siteLogo" onchange="displayImage(this)" name="image" multiple>
                                                        <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Describe</label>
                                                        <input type="text" class="form-control" id="describeEditInput" placeholder="Enter describe" name="describeEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="privacyEditInput" class="form-label">Privacy Policy</label>
                                                        <textarea class="form-control" id="privacyEditInput" rows="4" name="privacyEditInput" placeholder="Enter privacy policy"></textarea>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="termEditInput" class="form-label">Terms & Conditions</label>
                                                        <textarea class="form-control" id="termEditInput" rows="4" name="termEditInput" placeholder="Enter terms & conditions"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Update Settings</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </c:otherwise>
                            </c:choose>






                            <div class="col-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                        Car's Trade Mark
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Site Name</th>                                                  
                                                    <th>Site Logo</th> 
                                                    <th>Describe</th> 
                                                    <th>Privacy Policy</th>
                                                    <th>Terms & Conditions</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="tm" items="${tradeMark}">
                                                    <tr>
                                                <input type="hidden" value="${tm.trademard_id}" name="idz">
                                                <td name="name">${tm.name}</td>
                                                <td name="logo">
                                                    <c:forEach items="${tm.url_logo}" var="obj">
                                                        <img src="${obj}" alt="Logo" style="max-width: 100px; max-height: 100px;">
                                                    </c:forEach>
                                                </td>
                                                <td name="describe">${tm.describe}</td>
                                                <td name="privacy">${tm.privacy}</td>
                                                <td name="term">${tm.terms}</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" 
                                                            data-toggle="modal" data-target="#editProductModal"
                                                            onclick="editProductModal('${tm.trademard_id}', '${tm.name}', '${tm.url_logo[0]}', '${tm.describe}', '${tm.privacy}', '${tm.terms}')">
                                                        Update
                                                    </button>
                                                </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </main>
            </div>

        </div>
    </body>
    <script>
        function editProductModal(id, name, logo,describe, privacy, terms) {
            document.getElementById('idEditInput').value = id;
            document.getElementById('nameEditInput').value = name;

            // Display the first logo image in the modal
            var previewImage = document.getElementById('previewImage');
            previewImage.src = logo;
            document.getElementById('describeEditInput').value = describe;
            document.getElementById('privacyEditInput').value = privacy;
            document.getElementById('termEditInput').value = terms;
        }


        function displayImage(input) {
            var previewImage = document.getElementById("previewImage");
            var file = input.files[0];
            var reader = new FileReader();

            reader.onload = function (e) {
                previewImage.src = e.target.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                previewImage.src = "#";
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="assets/js/datatables-simple-demo.js"></script>

</html>