<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% pageContext.setAttribute("newLineChar", "\n"); %>
<% pageContext.setAttribute("newLineHtml", "<br/>"); %>

<%@ include file="headerFooter/header.jsp"%>

<!-- DEBUT AFFICHAGE PRODUIT-->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="card card-primary card-outline">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Affichage des contacts</h3>
            </div>
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Nom Prénom</th>
                  <th>Email</th>
                  <th>Objet</th>
                  <th>Message</th>
                  <th>Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ listeContact }" var="contact">
                  <tr>
                    <td>${contact.getNom()} ${contact.getPrenom()}</td>
                    <td>${contact.getEmail()}</td>
                    <td>${contact.getObjet()}</td>
                    <td>${fn:replace(contact.getMessage(), newLineChar, newLineHtml )}</td>
                    <td>${contact.getDate()}</td>
                  </tr>
                </c:forEach>
                </tbody>
                <tfoot>
                <tr>
                  <th>Nom Prénom</th>
                  <th>Email</th>
                  <th>Objet</th>
                  <th>Message</th>
                  <th>Date</th>
                </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- FIN AFFICHAGE PRODUIT-->

<!-- DataTables -->


<%@ include file="headerFooter/footer.jsp"%>