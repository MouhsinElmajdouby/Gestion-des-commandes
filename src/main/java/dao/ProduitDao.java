package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import model.Client;
import model.Produit;

public class ProduitDao {
	
	private final String JPA_UNIT_NAME= "versionProd";
	private EntityManager entityManager;
	
	public EntityManager getEntityManager() {
		if(entityManager == null) {
			entityManager =  Persistence.createEntityManagerFactory(JPA_UNIT_NAME).createEntityManager();
		}
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public void AjouterProduit(Produit produit) {
		getEntityManager().getTransaction().begin();
		getEntityManager().persist(produit);
		getEntityManager().getTransaction().commit();
	}
	
	public void ModifierProduit(Produit produit) {
		getEntityManager().getTransaction().begin();
		getEntityManager().merge(produit);
		getEntityManager().getTransaction().commit();
	}
	
	public void SupprimerProduit(Produit produit) {
		getEntityManager().getTransaction().begin();
		getEntityManager().remove(produit);
		getEntityManager().getTransaction().commit();
	}
	
	
	public Produit rechercherById(int id) {
		return getEntityManager().find(Produit.class, id);
	}
	
	public void AfficherProduit(int id) {
		Produit produit =  getEntityManager().find(Produit.class, id);
		System.out.println(produit);
	}
	
	public List<Produit> AfficherTout() {
		javax.persistence.Query query = getEntityManager().createQuery("select p from Produit p");
		return query.getResultList();
		
	}
	

}
