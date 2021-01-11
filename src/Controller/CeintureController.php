<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CeintureController extends AbstractController
{
    /**
     * @Route("/ceinture", name="ceinture")
     */
    public function index(): Response
    {
        return $this->render('ceinture/index.html.twig', [
            'controller_name' => 'CeintureController',
        ]);
    }
}
