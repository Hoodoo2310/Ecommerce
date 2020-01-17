<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>


<!-- DEBUT AFFICHAGE DES INSCRITS A LA NEWSLETTER-->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Affichage des inscrits à la newsletter</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <div class="card">
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Email</th>
                                            <th>Date d'inscription</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ listeNewsletter }" var="newsletter">
                                            <tr>
                                                <td>${newsletter.getEmail()}</td>
                                                <td>${newsletter.getDate_inscription()}</td>
                                                <td><a href="/admin/newsletter?id=${newsletter.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                                                <td>
                                                    <form action="/admin/newsletter" method="post">
                                                        <input type="hidden" name="id" value="${newsletter.getId()}">
                                                        <input type="hidden" name="action" value="deleteNewsletter">
                                                        <button type="submit" class="btn btn-danger">Supprimer</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Email</th>
                                            <th>Date d'inscription</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN AFFICHAGE DES INSCRITS A LA NEWSLETTER-->

<!-- FORMULAIRE MODIFICATION NEWSLETTER-->
<!-- Main content -->
<c:choose>
    <c:when test="${idNewsletterUpdate != null}">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                        <!-- general form elements -->
                        <div class="card card-warning">
                            <div class="card-header">
                                <h3 class="card-title">Modification d'un inscrit à la newsletter</h3>
                            </div>
                            <div class="container-fluid">
                                <div class="flex-column">
                                    <form method="post" action="/admin/newsletter" class="form" style="margin:50px;">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" name="email" class="form-control input-lg" value="${updateNewsletter.getEmail()}">
                                        </div>
                                        <div class="form-group">
                                            <label>Date d'inscription</label>
                                            <input type="text" name="dateInscription" class="form-control input-lg" value="${updateNewsletter.getDate_inscription()}" disabled>
                                        </div>
                                        <input type="hidden" name="action" value="idNewsletterUpdate">
                                        <button type="submit" class="btn btn-warning">Modifier</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </c:when>
</c:choose>
<!-- FIN MODIFICATION NEWSLETTER -->


<%@ include file="headerFooter/footer.jsp"%>
