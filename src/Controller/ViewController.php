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

class ViewController extends AbstractController
{
   /**
     * @Route("article/{id}", name="article_show", methods={"GET"})
     */
    public function show1(int $id,LogoRepository $logoRepository,EnteteRepository $enteteRepository,ArticleRepository $articleRepository,CategorieRepository $categorieRepository, GenreRepository $genreRepository,CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('view/index.html.twig', [
            
      
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'articles' => $articleRepository->findBy(array('genre'=>$id)),
            'cgvcgus' => $cgvcguRepository->findAll(),
            'entetes' => $enteteRepository->findAll(),
            'logos' => $logoRepository->findAll(),
            
        ]);
    }
}
