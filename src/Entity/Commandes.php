<?php

namespace App\Entity;

use App\Entity\Client;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\CommandesRepository;

/**
 * @ORM\Entity(repositoryClass=CommandesRepository::class)
 */
class Commandes
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date;

    /**
     * @ORM\Column(type="array")
     */
    private $produits = [];

    /**
     * @ORM\ManyToOne(targetEntity=Client::class, inversedBy="commandes")
     */
    private $utilisateur;

    
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDate(): ?\DateTimeInterface
    {
        return $this->date;
    }

    public function setDate(\DateTimeInterface $date): self
    {
        $this->date = $date;

        return $this;
    }

    public function getProduits(): ?array
    {
        return $this->produits;
    }

    public function setProduits(array $produits): self
    {
        $this->produits = $produits;

        return $this;
    }

    public function getUtilisateur(): ?Client
    {
        return $this->utilisateur;
    }

    public function setUtilisateur(?Client $utilisateur): self
    {
        $this->utilisateur = $utilisateur;

        return $this;
    }
}
