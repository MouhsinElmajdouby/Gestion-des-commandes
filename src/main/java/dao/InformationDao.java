package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import model.Client;
import model.Information;
import model.Produit;

public class InformationDao {
	
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
	
	public void AjouterInformation(Information information) {
		getEntityManager().getTransaction().begin();
		getEntityManager().persist(information);
		getEntityManager().getTransaction().commit();
		// getEntityManager().refresh(information);
		System.out.println("iiiii" + information.getId());
	}

	
	public void ModifierInformation(Information information) {
		getEntityManager().getTransaction().begin();
		getEntityManager().merge(information);
		getEntityManager().getTransaction().commit();
	}
	
	public void SupprimerInformation(Information information) {
		getEntityManager().getTransaction().begin();
		getEntityManager().remove(information);
		getEntityManager().getTransaction().commit();
	}
	
	
	public Information rechercherById(int id) {
		return getEntityManager().find(Information.class, id);
	}
	
	public void AfficherInformation(int id) {
		Information information =  getEntityManager().find(Information.class, id);
		System.out.println(information);
	}
	
	

	

}
