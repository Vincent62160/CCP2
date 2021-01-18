<?php

namespace App\Controller;
use App\Repository\CategorieRepository;
use App\Repository\ImagesRepository;
use App\Repository\GenreRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ViewController extends AbstractController
{
    /**
     * @Route("/view", name="view")
     */
    public function index(ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
        return $this->render('view/index.html.twig', [
            'controller_name' => 'ViewController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
        ]);
    }
}
