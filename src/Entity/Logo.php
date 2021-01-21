<?php

namespace App\Entity;

use App\Repository\LogoRepository;
use DateTime;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Validator\Constraints as Assert;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @ORM\Entity(repositoryClass=LogoRepository::class)
 * @Vich\Uploadable()
 */
class Logo
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;


    public function getId(): ?int
    {
        return $this->id;
    }

    //D ICI

    /**
     * @var string|null
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @var File|null
     * @Assert\Image(mimeTypes={"image/jpeg", "image/jpg", "image/png", "image/gif" })
     * @Vich\UploadableField(mapping="upload", fileNameProperty="image")
     *
     */
    private $imageFile;

    public function getImage(): ?string
    {
        return $this->image;
    }


    public function setImage(?string $image)
    {
        $this->image = $image;
        return $this;
    }


    /**
     * @ORM\Column(type="datetime")
     * @var null|DateTime
     */
    private $updated_at;

   


    public function getImageFile()
    {
        return $this->imageFile;
    }



    public function setImageFile( ?File $imageFile ): void {
        $this->imageFile = $imageFile;
        if($this->imageFile instanceof UploadedFile){
            $this->updated_at = new \DateTime('now');
        }
        //return $this;
    }

   


}
