package com.mycompany.cinema.Repository;

import java.util.ArrayList;
import java.util.List;

import com.mycompany.cinema.Entity.Client;

public class ClientRepositoryImpl {

    public ClientRepositoryImpl() {
        
    }

    /**
     *  liste tout les clients de la bdd
     * 
     * @return List<Client>
     */
    public List<Client> list() {
        List<Client> clients = new ArrayList<Client>();

        return clients;
    }

    /**
     * Crée un nouvel client en BDD
     * 
     * @param client
     * 
     * @return client.
     */
    public Client create(Client client) {
        return client;
    }

    /**
     * Mise à jour des données d'un client
     * 
     * @param Client
     * 
     * @return true si réussi ou false si c'est un échec
     */
    public boolean update(Client client) {
        boolean result = true;

        return result;
    }

    /**
     * Suppression d'un client en BDD
     * 
     * @param client
     * 
     * @return true si réussi ou false si c'est un échec
     */
    public boolean delete(Client client) {
        boolean result = true;
        
        return result;
    }
}