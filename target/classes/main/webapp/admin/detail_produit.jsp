<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- AFFICHAGE PRODUIT -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">${produit.getNom()}</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="card-body">
                            <p>Catégorie : ${produit.getCategorie().getNom()}</p>
                            <p>${produit.getMarque()}</p>
                            <p><img src="${produit.getUrl_photo()}"></p>
                            <p>${produit.getMini_desc()}</p>
                            <p>${produit.getDescription()}</p>
                            <p>Prix : ${produit.getPrix()} € TTC</p>
                            <p class="detailPrixPromo">
                                <c:if test="${produit.getPromo() != 0}">
                                    <p class="promo"><c:out value="Promo : ${produit.getPromo()} %"/></p>
                                    <p class="newPrix">Nouveau prix : ${produit.getPrix() - (produit.getPrix() * produit.getPromo() /100)} € TTC</p>
                                </c:if>
                            </p>
                            <a href="/admin/produit"><button class="btn btn-primary">Retour</button></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN AFFICHAGE PRODUIT -->

<!-- GESTION PHOTO PRODUIT -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Ajout de photo du produit : ${produit.getNom()}</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <form method="post" action="/admin/detail_produit" class="form" style="margin:50px;">
                                <div class="form-group">
                                    <input type="text" name="url_photo" placeholder="Entrer l'url de la photo">
                                    <input type="text" name="position" placeholder="Entrer la position de la photo">
                                </div>
                                <input type="hidden" name="idProd" value="${produit.getId()}">
                                <input type="hidden" name="action" value="ajoutPhoto">
                                <button type="submit" class="btn btn-primary">Ajouter Photo</button>
                            </form>
                        </div>
                        <div class="flex-column">
                            <div class="card">
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Photo</th>
                                            <th>Position</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ produit.getListPhotos() }" var="photo">
                                            <tr>
                                                <td><img src="${photo.getUrl_photo()}"></td>
                                                <td>${photo.getPosition()}</td>
                                                <td><a href="/admin/detail_produit?id=${photo.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                                                <td>
                                                    <form action="/admin/users" method="post">
                                                        <input type="hidden" name="id" value="${photo.getProduit().getId()}">
                                                        <input type="hidden" name="action" value="deletePhoto">
                                                        <button type="submit" class="btn btn-danger">Supprimer</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Photo</th>
                                            <th>Position</th>
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
<!-- FIN GESTION PHOTO PRODUIT -->

<!-- MODIFICATION PRODUIT -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-warning">
                    <div class="card-header">
                        <h3 class="card-title">Modification du produit : ${produit.getNom()}</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <form method="post" action="/admin/detail_produit" class="form" style="margin:50px;">
                                <input type="hidden" name="id" value="${produit.getId()}">
                                <div class="form-group">
                                    <label>Marque</label>
                                    <input type="text" name="marque" class="form-control input-lg" value="${produit.getMarque()}">
                                </div>
                                <div class="form-group">
                                    <label>Nom</label>
                                    <input type="text" name="name" class="form-control input-lg" value="${produit.getNom()}">
                                </div>
                                <div class="form-group">
                                    <label>Mini Description</label>
                                    <input type="text" name="mini_desc" class="form-control input-lg" value="${produit.getMini_desc()}">
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" name="description">${produit.getMini_desc()}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Prix</label>
                                    <input class="form-control" name="prix" value="${produit.getPrix()}"></input>
                                </div>
                                <div class="form-group">
                                    <label>Promo</label>
                                    <input class="form-control" name="promo" value="${produit.getPromo()}"></input>
                                </div>
                                <div class="form-group">
                                    <label>Url Photo</label>
                                    <input class="form-control" name="url_photo" value="${produit.getUrl_photo()}"></input>
                                </div>
                                <div class="form-select">
                                    <label>Catégorie</label>
                                    <select name="idCategorie">
                                        <c:forEach items="${ listeCategorie }" var="categorie">
                                            <option value="${categorie.getId()}">${categorie.getNom()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <input type="hidden" name="action" value="updateProduit">
                                <button type="submit" class="btn btn-warning">Modifier</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN MODIFICATION PRODUIT -->

<!-- SUPPRESSION PRODUIT -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-danger">
                    <div class="card-header">
                        <h3 class="card-title">Suppression du produit : ${produit.getNom()}</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <form method="post" action="/admin/detail_produit" class="form" style="margin:50px;">
                                <input type="hidden" name="id" value="${produit.getId()}">
                                <input type="hidden" name="action" value="deleteProduit">
                                <button type="submit" class="btn btn-danger">Supprimer</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN SUPPRESSION PRODUIT -->



<%@ include file="headerFooter/footer.jsp"%>