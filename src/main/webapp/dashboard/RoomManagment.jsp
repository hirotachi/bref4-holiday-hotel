<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app-assets/css/bootstrap.css"></link>

    <%-- Images --%>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/app-assets/images/ico/favicon.ico">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/vendors/css/tables/datatable/responsive.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}app-assets/css/themes/semi-dark-layout.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-assets/css/pages/app-user.css">
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-assets/assets/css/style.css">
    <!-- END: Custom CSS-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
          rel="stylesheet">
    <title>Room Management</title>
</head>
<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static   menu-collapsed" data-open="click"
      data-menu="vertical-menu-modern">
<!-- BEGIN: Header-->
<nav class="header-navbar navbar navbar-expand-lg align-items-center floating-nav navbar-light navbar-shadow container-xxl">
    <div class="navbar-container d-flex content">
        <div class="bookmark-wrapper d-flex align-items-center">
            <ul class="nav navbar-nav bookmark-icons">
                <li class="nav-item d-none d-lg-block"><a class="nav-link" href="dashboard"
                                                          data-toggle="tooltip" data-placement="top"
                                                          title="home">Home</a></li>
                <li class="nav-item d-none d-lg-block"><a class="nav-link"
                                                          href="dashboard?page=room-management"
                                                          data-toggle="tooltip" data-placement="top"
                                                          title="Chat">Rooms</a></li>
            </ul>
        </div>
        <ul class="nav navbar-nav align-items-center ml-auto">
            <li class="nav-item dropdown dropdown-user"><a class="nav-link dropdown-toggle dropdown-user-link"
                                                           id="dropdown-user" href="javascript:void(0);"
                                                           data-toggle="dropdown" aria-haspopup="true"
                                                           aria-expanded="false">
                <div class="user-nav d-sm-flex d-none"><span class="user-name font-weight-bolder">John Doe</span><span
                        class="user-status">Admin</span></div>
                <span class="avatar"><img class="round"
                                          src="${pageContext.request.contextPath}/app-assets/images/portrait/small/avatar-s-11.jpg"
                                          alt="avatar" height="40" width="40"><span class="avatar-status-online"></span></span>
            </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-user"><a class="dropdown-item"
                                                                                                  href="#"><i
                        class="mr-50" data-feather="user"></i> Profile</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#"><i class="mr-50"
                                                         data-feather="settings"></i> Settings</a><a
                            class="dropdown-item" href="login"><i class="mr-50"
                                                                  data-feather="power"></i> Logout</a>
                </div>
            </li>
        </ul>
    </div>
</nav>
<!-- End: Header-->

<!-- BEGIN: Content-->
<div class="app-content content ">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
            <!-- START : table -->
            <section id="basic-datatable  overflow-auto">
                <div class="card-header border-bottom p-1">

                    <div class="dt-buttons d-inline-flex">
                        <button class="dt-button create-new btn btn-primary" tabindex="0"
                                aria-controls="DataTables_Table_0" type="button" data-toggle="modal"
                                data-target="#add-room-modals"><span>Add New Room</span>
                        </button>
                    </div>
                    <div class="dt-buttons d-inline-flex">
                        <button class="dt-button create-new btn btn-primary" tabindex="0"
                                aria-controls="DataTables_Table_0" type="button" data-toggle="modal"
                                data-target="#promo-modal"><span>Add New Promo</span>
                        </button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <table class="datatables-basic table">
                                <thead>
                                <tr>
                                    <th>Room Number</th>
                                    <th>Room Type</th>
                                    <th>Price</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr style="height:50px;">
                                    <th>
                                        <p>323</p>
                                    </th>
                                    <th>
                                        <p>Suit</p>
                                    </th>
                                    <th>
                                        <p>30$</p>
                                    </th>
                                    <th>
                                        <p>Available</p>
                                    </th>
                                    <th>
                                        <div class="d-flex flex-row align-items-center">
                                            <button class="btn mr-2"><p class="text-danger">Delete</p></button>
                                            <button class="btn"><p class="text-success">Update</p></button>
                                        </div>
                                    </th>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </section>
            <!--/ END : table -->

            <!-- Modal to add new room -->
            <div class="modal modal-slide-in fade" id="add-room-modals">
                <div class="modal-dialog sidebar-sm">
                    <form class="add-new-record modal-content pt-0">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                        <div class="modal-header mb-1">
                            <h5 class="modal-title" id="exampleModalLabel">New Room</h5>
                        </div>
                        <div class="modal-body flex-grow-1">
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-fullname">Room Type</label>
                                <input type="text" name="room_type" class="form-control dt-full-name"
                                       id="basic-icon-default-fullname" placeholder="suit"
                                       aria-label="John Doe"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-post">Price</label>
                                <input type="number" name="price" id="basic-icon-default-post"
                                       class="form-control dt-post"
                                       placeholder="0.0$" aria-label="Web Developer"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-date">Creation Date</label>
                                <input type="date" class="form-control dt-date" id="basic-icon-default-date"
                                       placeholder="MM/DD/YYYY" aria-label="MM/DD/YYYY"/>
                            </div>
                            <section id="input-file-browser">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h4 class="card-title">Upload Images</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image1" type="file"
                                                                       class="custom-file-input" id="image1"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image2" type="file"
                                                                       class="custom-file-input" id="image2"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image3" type="file"
                                                                       class="custom-file-input" id="image3"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image4" type="file"
                                                                       class="custom-file-input" id="image4"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image5" type="file"
                                                                       class="custom-file-input" id="image5"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12">
                                                        <div class="form-group">
                                                            <div class="custom-file">
                                                                <input name="image6" type="file"
                                                                       class="custom-file-input" id="image6"/>
                                                                <label class="custom-file-label" for="customFile">Choose
                                                                    file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <button type="button" class="btn btn-primary data-submit mr-1">ADD Room</button>
                            <button type="reset" class="btn btn-outline-secondary" data-dismiss="modal">Cancel
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Modal to add new Promo -->
            <div class="modal modal-slide-in fade" id="promo-modal">
                <div class="modal-dialog sidebar-sm">
                    <form class="add-new-record modal-content pt-0">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">×</button>
                        <div class="modal-header mb-1">
                            <h5 class="modal-title" id="exampleModalLabel">New Promo</h5>
                        </div>
                        <div class="modal-body flex-grow-1">
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-post">Percentage</label>
                                <input type="number" name="percentage" id="basic-icon-default-post"
                                       class="form-control dt-post"
                                       placeholder="20%" aria-label="Web Developer"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-date">Start Date</label>
                                <input type="date" name="start_date" class="form-control dt-date"
                                       id="basic-icon-default-date"
                                       placeholder="MM/DD/YYYY" aria-label="MM/DD/YYYY"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="basic-icon-default-date">End Date</label>
                                <input type="date" name="end_date" class="form-control dt-date"
                                       id="basic-icon-default-date"
                                       placeholder="MM/DD/YYYY" aria-label="MM/DD/YYYY"/>
                            </div>
                            <button type="button" class="btn btn-primary data-submit mr-1">ADD Promo</button>
                            <button type="reset" class="btn btn-outline-secondary" data-dismiss="modal">Cancel
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: Content-->

<!-- BEGIN: Vendor JS-->
<script src="${pageContext.request.contextPath}/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${pageContext.request.contextPath}/app-assets/vendors/js/charts/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/vendors/js/extensions/toastr.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="${pageContext.request.contextPath}/app-assets/js/core/app-menu.js"></script>
<script src="${pageContext.request.contextPath}/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="${pageContext.request.contextPath}/app-assets/js/scripts/pages/dashboard-ecommerce.js"></script>
<!-- END: Page JS-->
</body>
</html>
