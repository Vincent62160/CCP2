<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use App\Repository\ImagesRepository;
use App\Repository\CgvcguRepository;
use App\Repository\GenreRepository;
use App\Repository\ArticleRepository;
use App\Repository\EnteteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AidezMoiController extends AbstractController
{
    /**
     * @Route("/aide", name="aide")
     */
    public function index(EnteteRepository $enteteRepository,CgvcguRepository $cgvcguRepository ,ArticleRepository $articleRepository, ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
        return $this->render('aide/index.html.twig', [
            'controller_name' => 'AidezMoiController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'articles' => $articleRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
            'entetes' => $enteteRepository->findAll(),
        ]);
    }
}
