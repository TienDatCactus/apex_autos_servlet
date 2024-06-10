<!DOCTYPE html>
<html lang="en">

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
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                    aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                        class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#!">Settings</a></li>
                    <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="#!">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="dashboard">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <div class="sb-sidenav-menu-heading">Platform Management</div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                            data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            User Management
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="dashboard?state=user">Users List</a>
                                <a class="nav-link" href="dashboard?state=role">Roles</a>
                            </nav>
                        </div>
                        <a class="nav-link" href="dashboard?state=seller">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Sellers
                        </a>

                        <div class="sb-sidenav-menu-heading">Others</div>
                        <a class="nav-link" href="dashboard?state=chart">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Total Profits
                        </a>
                        <a class="nav-link" href="dashboard?state=setting">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Page Settings
                        </a>
                        <!-- <a class="nav-link" href="tables.html">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Tables
                        </a> -->
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    nigga Admin
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">User Roles and Permissions</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">Roles & Permissions</li>
                    </ol>

                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h5 class="card-title">Add New Role</h5>
                                </div>
                                <div class="card-body">
                                    <form id="addRoleForm">
                                        <div class="mb-3">
                                            <label for="roleName" class="form-label">User's Email</label>
                                            <input type="text" class="form-control" id="roleName"
                                                placeholder="example@niggas.com">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Check Existed</button>
                                    </form>
                                    <div class="form-msg mt-2 alert alert-danger w-75" role="alert">asd</div>
                                    <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                                        This is a success alert—check it out!
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h5 class="card-title">Manage Permissions</h5>
                                </div>
                                <div class="card-body">
                                    <form id="managePermissionsForm">
                                        <div class="mb-3">
                                            <label for="selectRole" class="form-label">Select Role</label>
                                            <select class="form-select" id="selectRole">
                                                <option selected>Select a role</option>
                                                <option value="1">Admin</option>
                                                <option value="2">Editor</option>
                                                <option value="3">Viewer</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="permissions" class="form-label">Permissions</label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value=""
                                                    id="permission1">
                                                <label class="form-check-label" for="permission1">
                                                    Manage Users
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value=""
                                                    id="permission2">
                                                <label class="form-check-label" for="permission2">
                                                    Manage Products
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value=""
                                                    id="permission3">
                                                <label class="form-check-label" for="permission3">
                                                    Manage Orders
                                                </label>
                                            </div>
                                            <!-- Add more permissions as needed -->
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update Permissions</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-header">
                            <h5 class="card-title">Existing Roles</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Role</th>
                                            <th>Permissions</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Admin</td>
                                            <td>Manage Users, Manage Products, Manage Orders</td>
                                            <td>
                                                <button class="btn btn-warning btn-sm" data-bs-toggle="modal"
                                                    data-bs-target="#editRoleModal" data-role="Admin"
                                                    data-permissions="Manage Users, Manage Products, Manage Orders">Edit</button>
                                                <button class="btn btn-danger btn-sm">Delete</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Editor</td>
                                            <td>Manage Products</td>
                                            <td>
                                                <button class="btn btn-warning btn-sm" data-bs-toggle="modal"
                                                    data-bs-target="#editRoleModal" data-role="Editor"
                                                    data-permissions="Manage Products">Edit</button>
                                                <button class="btn btn-danger btn-sm">Delete</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Viewer</td>
                                            <td>View Orders</td>
                                            <td>
                                                <button class="btn btn-warning btn-sm" data-bs-toggle="modal"
                                                    data-bs-target="#editRoleModal" data-role="Viewer"
                                                    data-permissions="View Orders">Edit</button>
                                                <button class="btn btn-danger btn-sm">Delete</button>
                                            </td>
                                        </tr>
                                        <!-- Add more roles as needed -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <!-- Edit Role Modal -->
            <div class="modal fade" id="editRoleModal" tabindex="-1" aria-labelledby="editRoleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editRoleModalLabel">Edit Role</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="editRoleForm">
                                <div class="mb-3">
                                    <label for="editRoleName" class="form-label">Role Name</label>
                                    <input type="text" class="form-control" id="editRoleName"
                                        placeholder="Enter role name">
                                </div>
                                <div class="mb-3">
                                    <label for="editPermissions" class="form-label">Permissions</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="editPermission1">
                                        <label class="form-check-label" for="editPermission1">
                                            Manage Users
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="editPermission2">
                                        <label class="form-check-label" for="editPermission2">
                                            Manage Products
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="editPermission3">
                                        <label class="form-check-label" for="editPermission3">
                                            Manage Orders
                                        </label>
                                    </div>
                                    <!-- Add more permissions as needed -->
                                </div>
                                <button type="submit" class="btn btn-primary">Save Changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                var editRoleModal = document.getElementById('editRoleModal');
                editRoleModal.addEventListener('show.bs.modal', function (event) {
                    var button = event.relatedTarget;
                    var role = button.getAttribute('data-role');
                    var permissions = button.getAttribute('data-permissions').split(', ');

                    var modalTitle = editRoleModal.querySelector('.modal-title');
                    var roleNameInput = editRoleModal.querySelector('#editRoleName');
                    var permissionInputs = editRoleModal.querySelectorAll('.form-check-input');

                    modalTitle.textContent = 'Edit Role: ' + role;
                    roleNameInput.value = role;

                    permissionInputs.forEach(function (input) {
                        if (permissions.includes(input.nextElementSibling.textContent.trim())) {
                            input.checked = true;
                        } else {
                            input.checked = false;
                        }
                    });
                });
            </script>
        </div>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
    <script src="assets/js/datatables-simple-demo.js"></script>
</body>

</html>