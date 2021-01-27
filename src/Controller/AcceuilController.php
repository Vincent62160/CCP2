<?php

namespace App\Controller;
use App\Repository\CgvcguRepository;
use App\Repository\CategorieRepository;
use App\Repository\ImagesRepository;
use App\Repository\GenreRepository;
use App\Repository\ArticleRepository;
use App\Repository\LogoRepository;
use App\Repository\ClientRepository;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AcceuilController extends AbstractController
{
    /**
     * @Route("/acceuil", name="acceuil")
     */
    public function index(CgvcguRepository $cgvcguRepository ,ClientRepository $clientRepository,LogoRepository $logoRepository,ArticleRepository $articleRepository, ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
        return $this->render('acceuil/index.html.twig', [
            'controller_name' => 'AcceuilController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'articles' => $articleRepository->findAll(),
            'logos' => $logoRepository->findAll(),
            'clients' => $clientRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
      
        ]);
    }
}
