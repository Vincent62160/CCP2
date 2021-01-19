<?php

namespace App\Controller;
use App\Repository\ArticleRepository;
use App\Repository\CategorieRepository;
use App\Repository\ImagesRepository;
use App\Repository\GenreRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ViewCategorieController extends AbstractController
{
    /**
     * @Route("/{id}", name="article_show2", methods={"GET"})
     */
    public function index(int $id,ArticleRepository $articleRepository,ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
        return $this->render('view/index.html.twig', [
            'controller_name' => 'ViewCategorieController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'articles' => $articleRepository->findBy(array('categorie'=>$id)),
        ]);
    }
}
