<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- FORMULAIRE REMPLISSAGE SLIDER-->
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Ajout des photos du slider</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <form method="post" action="/admin/slider" role="form" class="form" style="margin:50px;">
                                <c:choose>
                                    <c:when test="${idUserUpdate == null}">
                                        <div class="form-select">
                                            <label>Produit</label>
                                            <select class="form-control select2-container" name="idProduit">
                                                <c:forEach items="${ listeProduit }" var="produit">
                                                    <option value="${produit.getId()}">${produit.getNom()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>URL de la photo</label>
                                            <input type="text" class="form-control input-lg" name="url_photo" placeholder="Merci saisir de l'url de la photo">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Ajout Slider</button>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="form-select">
                                            <label>Produit</label>
                                            <select class="form-control select2-container" name="idProduit">
                                                <c:forEach items="${ listeProduit }" var="produit">
                                                    <option value="${produit.getId()}">${produit.getNom()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>URL de la photo</label>
                                            <input type="text" class="form-control input-lg" name="url_photo" value="${updateSlider.getUrl_photo()}">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Ajout Slider</button>
                                    </c:otherwise>
                                </c:choose>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN FORMULAIRE REMPLISSAGE SLIDER-->

<!-- DEBUT AFFICHAGE PHOTOS SLIDER-->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Affichage des photos du slider</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <div class="card">
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Produit</th>
                                            <th>Photo</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ listeSlider }" var="slider">
                                            <tr>
                                                <td>${slider.getProduit().getNom()}</td>
                                                <td>${slider.getUrl_photo()}</td>
                                                <td><a href="/admin/slider?id=${slider.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                                                <td>
                                                    <form action="/admin/slider" method="post">
                                                        <input type="hidden" name="id" value="${slider.getId()}">
                                                        <input type="hidden" name="action" value="deleteSlider">
                                                        <button type="submit" class="btn btn-danger">Supprimer</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Produit</th>
                                            <th>Photo</th>
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
<!-- FIN AFFICHAGE PHOTOS DU SLIDER-->

<%@ include file="headerFooter/footer.jsp"%>