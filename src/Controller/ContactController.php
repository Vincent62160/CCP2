<?php

namespace App\Controller;
use App\Repository\CategorieRepository;
use App\Repository\ImagesRepository;
use App\Repository\GenreRepository;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(ArticleRepository $articleRepository, ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
        return $this->render('contact/index.html.twig', [
            'controller_name' => 'ContactController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'articles' => $articleRepository->findAll(),
        ]);
    }
}
