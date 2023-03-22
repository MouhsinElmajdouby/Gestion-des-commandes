package service;

import java.util.List;



import dao.CategorieDao;
import dao.ClientDao;
import dao.InformationDao;
import dao.ProduitDao;
import model.Categorie;
import model.Client;
import model.Information;
import model.Produit;


public class Test {

	public static void main(String[] args) {
		//ClientDao clientDao = new ClientDao();
		/*
		 * Client client = new Client(); client.setFirstName("mouhsin");
		 * client.setLastName("majdouby");
		 * 
		 * // clientDao.AjouterClient(client);
		 * 
		 * 
		 * 
		 * EntityManagerFactory entityManagerFactory =
		 * Persistence.createEntityManagerFactory("testTran");
		 * 
		 * EntityManager entityManager = entityManagerFactory.createEntityManager();
		 * 
		 * entityManager.getTransaction().begin(); entityManager.persist(client);
		 * entityManager.getTransaction().commit();
		 * 
		 * System.out.println("inserteddd");
		 */
		
		ClientDao clientdao = new ClientDao();
		InformationDao informationDao = new InformationDao();
		
		Information info1 = new Information();
		info1.setEmail("mouhsin@gmail.com");
		info1.setAdress("sefrou maroc");
		
		informationDao.AjouterInformation(info1);
		
		Client client1 = new Client();
		client1.setFirstName("mouhsin");
		client1.setLastName("El majdoubyyy");
	    client1.setInformationId(info1.getId());
		
		
		Categorie categorie = new Categorie();
		categorie.setLibelle("sans fils");
		
		CategorieDao categorieDao = new CategorieDao();
		categorieDao.AjouterCategorie(categorie);
		
		
		Produit produit = new Produit();
		produit.setLibelle("samsung");
		produit.setPrix(100);
		produit.setCategorieId(1);
		
		ProduitDao produitDao = new ProduitDao();
		produitDao.AjouterProduit(produit);
		
		
		
		clientdao.AjouterClient(client1);
		
		
		List<Client> clients =  clientdao.AfficherTout();
		
		for(Client client : clients) {
			System.out.println(client);
			System.out.println("--------------------------");
		}
				
	}

}
