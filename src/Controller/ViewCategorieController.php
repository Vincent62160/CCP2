<?php

namespace App\Controller;
use App\Repository\ArticleRepository;
use App\Repository\CategorieRepository;
use App\Repository\CgvcguRepository;
use App\Repository\ImagesRepository;
use App\Repository\GenreRepository;
use App\Repository\EnteteRepository;
use App\Repository\LogoRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ViewCategorieController extends AbstractController
{
    /**
     * @Route("categorie/{id}", name="article_show2", methods={"GET"})
     */
    public function index(int $id,LogoRepository $logoRepository,EnteteRepository $enteteRepository,ArticleRepository $articleRepository,ImagesRepository $imagesRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository,CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('view/index.html.twig', [
            'controller_name' => 'ViewCategorieController',
            'images' => $imagesRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
            'entetes' => $enteteRepository->findAll(),
            'logos' => $logoRepository->findAll(),
            'articles' => $articleRepository->findBy(array('categorie'=>$id)),
        ]);
    }
}
