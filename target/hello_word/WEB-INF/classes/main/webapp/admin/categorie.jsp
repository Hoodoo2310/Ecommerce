<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

    <!-- FORMULAIRE REMPLISSAGE CATEGORIE-->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Entrée des catégories</h3>
              </div>
              <div class="container-fluid">
                <div class="flex-column">
                  <form method="post" action="/admin/categorie" role="form" class="form" style="margin:50px;">
                    <div class="form-group">
                      <label>Nom de la catégorie</label>
                      <input type="text" class="form-control input-lg" name="nom" placeholder="Merci d'entrer le nom de la catégorie">
                    </div>
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- FIN FORMULAIRE REMPLISSAGE CATEGORIE-->

    <!-- DEBUT AFFICHAGE CATEGORIE-->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Affichage des catégories</h3>
              </div>
              <div class="container-fluid">
                <div class="flex-column">
                  <div class="card">
                    <div class="card-body">
                      <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                          <th>Catégorie</th>
                          <th>Modifier</th>
                          <th>Supprimer</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ listeCategorie }" var="categorie">
                          <tr>
                            <td>${categorie.getNom()}</td>
                            <td><a href="/admin/categorie?id=${categorie.getId()}" type="button" class="btn btn-warning">Modifier</a></td>
                            <td>
                              <form action="/admin/categorie" method="post">
                                <input type="hidden" name="id" value="${categorie.getId()}">
                                <input type="hidden" name="action" value="deleteCategorie">
                                <button type="submit" class="btn btn-danger">Supprimer</button>
                              </form>
                            </td>
                          </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                          <th>Catégorie</th>
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
    <!-- FIN AFFICHAGE CATEGORIE-->

<%@ include file="headerFooter/footer.jsp"%>