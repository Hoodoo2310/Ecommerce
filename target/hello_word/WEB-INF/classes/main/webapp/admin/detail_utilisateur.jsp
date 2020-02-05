<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<section class="content">
    <!-- Default box -->
    <!-- AFFICHAGE DETAIL UTILISATEUR -->
    <div class="card card-solid">
        <div class="card-body pb-0">
            <div class="row d-flex align-items-stretch">
                <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                    <div class="card bg-light">
                        <div class="card-header text-muted border-bottom-0">
                            <c:choose>
                                <c:when test="${utilisateur.getAdmin() == true}">
                                    <i class="fas fa-address-card"></i> Administrateur
                                </c:when>
                                <c:otherwise>
                                    <i class="fas fa-address-card"></i> Client
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="card-body pt-0">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="lead"><b> ${utilisateur.getNom()} ${utilisateur.getPrenom()}</b></h2>
                                    <p class="text-muted text-sm"><b>Email :</b> ${utilisateur.getEmail()}</p>
                                    <p class="text-muted text-sm"><b>Adresse Facturation :</b></p>
                                    <ul class="ml-4 mb-0 fa-ul text-muted">
                                        <c:forEach items="${listAdresseFacturation}" var="adresseFacturation">
                                            <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> ${adresseFacturation.getAdresse()}, ${adresseFacturation.getCp()} ${adresseFacturation.getVille()}, ${adresseFacturation.getPays()}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-12">
                                    <p class="text-muted text-sm"><b>Adresse Livraison :</b></p>
                                    <ul class="ml-4 mb-0 fa-ul text-muted">
                                        <c:forEach items="${listAdresseLivraison}" var="adresseLivraison">
                                            <li class="small"><span class="fa-li"><i class="fas fa-truck"></i></span> ${adresseLivraison.getAdresse()}, ${adresseLivraison.getCp()} ${adresseLivraison.getVille()}, ${adresseLivraison.getPays()}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FIN DETAILS UTILISATEUR -->

    <!-- COMMANDES -->
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">Commandes</h3>
                    </div>
                    <div class="container-fluid">
                        <c:forEach items="${listCommande}" var="listCommande">
                            <div class="col-12 col-sm-6 col-md-8 d-flex align-items-stretch">
                                <div class="card bg-light">
                                    <div class="card-body pt-0">
                                        <div class="row">
                                            <div class="col-12">
                                                <h2 class="lead"><b> <i class="fas fa-cart-arrow-down"></i> Commande n°${listCommande.getId()}</b></h2>
                                                <p class="lead"><b><i class="fas fa-hand-holding-usd"></i> :</b> ${listCommande.getTotal()}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <div class="row">
                                            <div class="col-12">
                                                <p class="text-muted text-sm"><b>Date commande :</b> ${listCommande.getDate_commande()}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FIN COMMANDES -->
</section>
<!-- FIN AFFICHAGE DETAIL UTILISATEUR -->

<%@ include file="headerFooter/footer.jsp"%>