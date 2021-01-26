<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\GenreRepository;
use App\Repository\CategorieRepository;

use Symfony\Component\HttpFoundation\Session\SessionInterface as SessionSessionInterface;


class PanierController extends AbstractController
{
    /**
     * @Route("/panier", name="panier_index")
     */
    public function index(ArticleRepository $articleRepository,SessionSessionInterface $session, CategorieRepository $categorieRepository, GenreRepository $genreRepository): Response
    {
          $panier = $session->get('panier',[]);

          $panierWithData =[];

          foreach($panier as $id=>$quantity){

            $panierWithData[]= [
                'article'=>$articleRepository->find($id),
                'quantité'=>$quantity


            ];
          }
          $total = 0;

          foreach($panierWithData as $item){
              $totalItem = $item['article']->getPrix()*$item['quantité'];
              $total += $totalItem;
          }
        
        

    
          return $this->render('panier/index.html.twig', [
            'controller_name' => 'PanierController',
            'categories' => $categorieRepository->findAll(),
            'genres' => $genreRepository->findAll(),
            'items' => $panierWithData,
            'total'=>$total
        ]);
    }
     /**
     * @Route("/panier/add/{id}", name="panier_add")
     */
    public function add($id,SessionSessionInterface $session ){
       
        $panier =$session->get('panier',[]);
        if(!empty($panier[$id])){
            $panier[$id]++;
        }else{
            $panier[$id]=1;
        }
        
        $session->set('panier',$panier);
       return $this->redirectToRoute('panier_index');
    }
      /**
     * @Route("/panier/remove/{id}", name="panier_remove")
     */
    public function remove($id, SessionSessionInterface $session){
        $panier=$session->get('panier',[]);
        if(!empty($panier[$id])){
            unset($panier[$id]);
        }
        $session->set('panier',$panier);

        return $this->redirectToRoute("panier_index");

    }
}
