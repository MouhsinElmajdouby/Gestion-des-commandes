package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.mysql.cj.Query;

import model.Categorie;
import model.Client;

public class CategorieDao {
	
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
	
	public void AjouterCategorie(Categorie categorie) {
		getEntityManager().getTransaction().begin();
		getEntityManager().persist(categorie);
		getEntityManager().getTransaction().commit();
	}
	
	public void ModifierCategorie(Categorie categorie) {
		getEntityManager().getTransaction().begin();
		getEntityManager().merge(categorie);
		getEntityManager().getTransaction().commit();
	}
	
	public void SupprimerCategorie(Categorie categorie) {
		getEntityManager().getTransaction().begin();
		getEntityManager().remove(categorie);
		getEntityManager().getTransaction().commit();
	}
	
	
	public Categorie rechercherById(int id) {
		return getEntityManager().find(Categorie.class, id);
	}
	
	public void AfficherCategorie(int id) {
		Categorie categorie =  getEntityManager().find(Categorie.class, id);
		System.out.println(categorie);
	}
	
	public List<Categorie> AfficherTout() {
		javax.persistence.Query query = getEntityManager().createQuery("select c from Categorie c");
		return query.getResultList();
		
	}
	
	

}
