<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- AJOUT TOP VENTE -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Entrée des Top Ventes</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <form method="post" action="/admin/top_vente" class="form" style="margin:50px;">
                                <c:choose>
                                    <c:when test="${idTopVenteUpdate == null}">
                                        <div class="form-select">
                                            <label>Produit</label>
                                            <select name="idProduit">
                                                <c:forEach items="${ listeProduit }" var="produit">
                                                    <option value="${produit.getId()}">${produit.getNom()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Url Photo</label>
                                            <input type="text" name="url" class="form-control input-lg" placeholder="Merci d'entrer l'url du produit">
                                        </div>
                                        <input type="hidden" name="action" value="addTopVente">
                                        <button type="submit" class="btn btn-primary">Ajout Produit</button>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="form-select">
                                            <label>Produit</label>
                                            <select name="idProduit">
                                                <c:forEach items="${ listeProduit }" var="produit">
                                                    <option value="${produit.getId()}">${produit.getNom()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Url Photo</label>
                                            <input type="text" name="url" class="form-control input-lg" value="${updateUtilisateur.getUrl()}">
                                        </div>
                                        <input type="hidden" name="action" value="addTopVente">
                                        <button type="submit" class="btn btn-primary">Ajout Produit</button>
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
<!-- FIN AJOUT TOP VENTE-->

<!-- DEBUT AFFICHAGE PRODUIT-->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">Affichage des produits</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <div class="card">
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Marque</th>
                                            <th>Produit</th>
                                            <th>Photo</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ listeTopVente }" var="topVente">
                                            <tr>
                                                <td>${topVente.getProduit().getMarque()}</td>
                                                <td><a href="/admin/detail_produit?id=${topVente.getProduit().getId()}">${topVente.getProduit().getNom()}</a></td>
                                                <td><img src="${topVente.getUrl()}"></td>
                                                <td><a href="/admin/top_vente?id=${topVente.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                                                <td>
                                                    <form action="/admin/top_vente" method="post">
                                                        <input type="hidden" name="id" value="${topVente.getId()}">
                                                        <input type="hidden" name="action" value="deleteUser">
                                                        <button type="submit" class="btn btn-danger">Supprimer</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Marque</th>
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
<!-- FIN AFFICHAGE PRODUIT-->

<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<%@ include file="headerFooter/footer.jsp"%>