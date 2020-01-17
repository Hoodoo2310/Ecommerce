<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- AFFICHAGE DETAIL UTILISATEUR -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">${utilisateur.getNom()} ${utilisateur.getPrenom()}</h3>
                    </div>
                    <div class="container-fluid">
                        <div class="card-body">
                            <p>${utilisateur.getEmail()}</p>
                            <p>${utilisateur.getDate_creation()}</p>
                            <p><a href="/admin/detail_utilisateur"><button class="btn btn-primary">Retour</button></a></p>
                        </div>
                    </div>
                </div>
                <div class="card card-primary card-outline">
                    <c:forEach items="${utilisateur.getListPhotos()}" var="adresse">
                        <div class="card-header">
                            <h3 class="card-title">${adresse.getType}</h3>
                        </div>
                        <div class="container-fluid">
                            <div class="card-body">
                                <p>${adresse.getAdresse()}</p>
                                <p>${adresse.getCp()} ${adresse.getVille()}</p>
                                <p>${adresse.getPays()}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- FIN AFFICHAGE DETAIL UTILISATEUR -->

<%@ include file="headerFooter/footer.jsp"%>