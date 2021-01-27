<?php

namespace App\Entity;

use App\Repository\CgvcguRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CgvcguRepository::class)
 */
class Cgvcgu
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="text")
     */
    private $conditiong;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getconditiong(): ?string
    {
        return $this->conditiong;
    }

    public function setconditiong(string $conditiong): self
    {
        $this->conditiong = $conditiong;

        return $this;
    }
}
