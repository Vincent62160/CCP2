<?php

namespace App\Controller;
use App\Repository\ArticleRepository;
use App\Repository\CategorieRepository;
use App\Repository\CgvcguRepository;
use App\Repository\EnteteRepository;

use App\Repository\GenreRepository;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MagasinController extends AbstractController
{
    /**
     * @Route("/magasin", name="magasin")
     */
    public function index(EnteteRepository $enteteRepository,ArticleRepository $articleRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository,CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('magasin/index.html.twig', [
            'controller_name' => 'MagasinController',
            'articles' => $articleRepository->findAll(),
         
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
            'entetes' => $enteteRepository->findAll(),
            
        ]);
    }
}
