<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@page import="be.fedict.eid.applet.service.Identity" %>
        <%@page import="be.fedict.eid.applet.service.Address" %>
            <!doctype html>
            <html class="no-js" lang="">

            <head>
                <meta charset="utf-8">
                <meta name="description" content="">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>webapp</title>
                <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
                <!-- build:css styles/vendor.css -->
                <!-- bower:css -->
                <!-- endbower -->
                <!-- endbuild -->
                <!-- build:css styles/main.css -->
                <link rel="stylesheet" href="client/styles/bootstrap.css">
                <!-- endbuild -->
                <!-- build:js scripts/vendor/modernizr.js -->
                <script src="/client//bower_components/modernizr/modernizr.js"></script>
                <script src="/client/bower_components/jquery/dist/jquery.js"></script>
                <script src="/client/scripts/bootstrap.js"></script>
                <script src="client/bower_components/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
                <script src="client/bower_components/bootstrap-modal/js/bootstrap-modal.js"></script>
                <script src="client/bower_components/json3/lib/json3.js"></script>               
                
            </head>

            <body>
                <div class="container">
                <div class="row">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="firstName" id="firstName" class="form-control input-sm" placeholder="First Name">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="middleName" id="middleName" class="form-control input-sm" placeholder="Middle Name">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="name" id="name" class="form-control input-sm" placeholder="Last Name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
                        </div>
                        <div class="form-group">
                            <input type="input" name="nationality" id="nationality" class="form-control input-sm" placeholder="Nationality">
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="nationalNumber" id="nationalNumber" class="form-control input-sm" placeholder="National number">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="cardNumber" id="cardNumber" class="form-control input-sm" placeholder="Card number">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="placeOfBirth" id="placeOfBirth" class="form-control input-sm" placeholder="Place of birth">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="dateOfBirth" id="dateOfBirth" class="form-control input-sm" placeholder="Date of birth">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="streetAndNumber" id="streetAndNumber" class="form-control input-sm" placeholder="Street and number">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="zip" id="zip" class="form-control input-sm" placeholder="Zip code">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <input type="text" name="municipality" id="municipality" class="form-control input-sm" placeholder="Municipality">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input disabled="true" type="text" name="cardValidityDateBegin" id="cardValidityDateBegin" class="form-control input-sm" placeholder="Card validity begin date">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input disabled="true" type="text" name="cardValidityDateEnd" id="cardValidityDateEnd" class="form-control input-sm" placeholder="Card validity end date">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <button type="button" id="btnCancel" class="btn btn-info btn-block">Cancel</button>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="submit" id="btnReadId" value="Submit" class="btn btn-info btn-block">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                </div>
        
                <!--[if lt IE 10]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

                <script src="/client/scripts/deployJava_mod.js"></script>

                <script type="text/javascript">
                    $(document).ready(function () {
                        var eidData = {
                            firstName: "<%=((Identity) session.getAttribute("eid.identity")).firstName%>",
                            name: "<%=((Identity) session.getAttribute("eid.identity")).name%>",
                            email: $('#email').val(),
                            middleName: "<%=((Identity) session.getAttribute("eid.identity")).middleName%>",
                            nationalNumber: "<%=((Identity) session.getAttribute("eid.identity")).nationalNumber%>",
                            dateOfBirth: "<%=((Identity) session.getAttribute("eid.identity")).dateOfBirth.getTime()%>",
                            placeOfBirth: "<%=((Identity) session.getAttribute("eid.identity")).placeOfBirth%>",
                            nationality: "<%=((Identity) session.getAttribute("eid.identity")).nationality%>",
                            address: {
                                streetAndNumber: "<%=((Address) session.getAttribute("eid.address")).streetAndNumber%> ",
                                zip: "<%=((Address) session.getAttribute("eid.address")).zip%> ",
                                municipality: "<%=((Address) session.getAttribute("eid.address")).municipality%>"
                            },
                            cardNumber: "<%=((Identity) session.getAttribute("eid.identity")).cardNumber%>",
                            cardValidityDateBegin: "<%=((Identity) session.getAttribute("eid.identity")).cardValidityDateBegin.getTime()%>",
                            cardValidityDateEnd: "<%=((Identity) session.getAttribute("eid.identity")).cardValidityDateEnd.getTime()%>",
                            photo: "https://www.idlog.be:9080/photo.jpg"
                        };
                        $("#btnReadId").on('click', function () {
                            window.opener.postMessage(eidData, "http://www.idlog.be:9000/input");
                            window.close();

                        })
                        $("#btnCancel").on('click', function () {
                            window.close();

                        })
                        
                        $('#firstName').val(eidData.firstName);
                        $('#name').val(eidData.name);
                        $('#middleName').val(eidData.middleName);
                        $('#nationalNumber').val(eidData.nationalNumber);
                        $('#dateOfBirth').val(eidData.dateOfBirth);
                        $('#placeOfBirth').val(eidData.placeOfBirth);
                        $('#nationality').val(eidData.nationality);
                        $('#streetAndNumber').val(eidData.address.streetAndNumber);
                        $('#zip').val(eidData.address.zip);
                        $('#municipality').val(eidData.address.municipality);
                        $('#cardNumber').val(eidData.cardNumber);
                        $('#cardValidityDateBegin').val(eidData.cardValidityDateBegin);
                        $('#cardValidityDateEnd').val(eidData.cardValidityDateEnd);
                        $('#idPhoto').attr("src", eidData.photo);
                    });
                </script>



            </body>

            </html>