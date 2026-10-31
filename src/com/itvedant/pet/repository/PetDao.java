package com.itvedant.pet.repository;

import java.util.List;

import com.itvedant.pet.models.Pet;

public interface PetDao {

    int addPet(Pet pet);

    int updatePet(Pet pet);

    int deletePet(int id);

    Pet getPetById(int id);

    List<Pet> getAllPets();
}