<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- AJOUT/MODIFICATION UTILISATEUR -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Ajout des utilisateurs</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <div>
                                <form method="post" action="/admin/users" class="form" style="margin:50px;">
                                    <c:choose>
                                        <c:when test="${idUserUpdate == null}">
                                            <div class="form-group">
                                                <label>Nom</label>
                                                <input type="text" name="nom" class="form-control input-lg" placeholder="Merci d'entrer le nom de l'utilisateur">
                                            </div>
                                            <div class="form-group">
                                                <label>Prénom</label>
                                                <input type="text" name="prenom" class="form-control input-lg" placeholder="Merci d'entrer le prénom de l'utilisateur">
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="mdp" class="form-control input-lg" placeholder="Merci d'entrer le mot de passe">
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="text" name="email" class="form-control input-lg" placeholder="Merci d'entrer l'email de l'utilisateur">
                                            </div>
                                            <div class="form-group">
                                                <label>Type d'utilisateur</label>
                                                <div class="custom-control custom-radio">
                                                    <label><input type="radio" name="type" value="false" checked>Client</label>
                                                </div>
                                                <div class="custom-control custom-radio">
                                                    <label><input type="radio" name="type" value="true">Administrateur</label>
                                                </div>
                                            </div>
                                            <input type="hidden" name="action" value="ajoutUser">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="form-group">
                                                <label>Nom</label>
                                                <input type="text" name="nom" class="form-control input-lg" value="${updateUtilisateur.getNom()}">
                                            </div>
                                            <div class="form-group">
                                                <label>Prénom</label>
                                                <input type="text" name="prenom" class="form-control input-lg" value="${updateUtilisateur.getPrenom()}">
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="mdp" class="form-control input-lg" value="${updateUtilisateur.getMdp()}" disabled>

                                            </div>
                                            <div class="form-group">
                                                <label>Date de Création</label>
                                                <input type="text" name="mdp" class="form-control input-lg" value="${updateUtilisateur.getDate_creation()}" disabled>

                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="text" name="email" class="form-control input-lg" value="${updateUtilisateur.getEmail()}">
                                            </div>
                                            <div class="radio">
                                                <label>Type d'utilisateur</label>
                                                <div class="radio-button">
                                                    <c:choose>
                                                        <c:when test="${updateUtilisateur.getAdmin() == true}">
                                                            <label class="radio-inline"><input type="radio" name="type" value="false">Client</label>
                                                            <label class="radio-inline"><input type="radio" name="type" value="true" checked>Administrateur</label>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <label class="radio-inline"><input type="radio" name="type" value="false" checked>Client</label>
                                                            <label class="radio-inline"><input type="radio" name="type" value="true">Administrateur</label>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                            </div>
                                            <input type="hidden" name="action" value="updateUser">
                                            <input type="hidden" name="idUpdate" value="${idUserUpdate}">
                                            <button type="submit" class="btn btn-warning">Modifier</button>
                                        </c:otherwise>
                                    </c:choose>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN AJOUT/MODIFICATION UTILISATEUR -->

<!-- AFFICHAGE UTILISATEUR -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Gestion des utilisateurs</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="flex-column">
                            <div class="card">
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>Nom Prénom</th>
                                            <th>Email</th>
                                            <th>Date Création</th>
                                            <th>Type</th>
                                            <th>Modifier</th>
                                            <th>Supprimer</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ listUtilisateur }" var="utilisateur">
                                            <tr>
                                                <td><a href="/admin/detail_utilisateur?id=${utilisateur.getId()}">${utilisateur.getNom()} ${utilisateur.getPrenom()}</td>
                                                <td>${utilisateur.getEmail()}</td>
                                                <td>${utilisateur.getDate_creation()}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${utilisateur.getAdmin() == true}">
                                                            Administrateur
                                                        </c:when>
                                                        <c:otherwise>
                                                            Client
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td><a href="/admin/users?id=${utilisateur.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                                                <td>
                                                    <form action="/admin/users" method="post">
                                                        <input type="hidden" name="id" value="${utilisateur.getId()}">
                                                        <input type="hidden" name="action" value="deleteUser">
                                                        <button type="submit" class="btn btn-danger">Supprimer</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>Nom</th>
                                            <th>Email</th>
                                            <th>Date Création</th>
                                            <th>Type</th>
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
<!-- FIN AFFICHAGE UTILISATEUR -->

<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<%@ include file="headerFooter/footer.jsp"%>