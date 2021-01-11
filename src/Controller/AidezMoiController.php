<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AidezMoiController extends AbstractController
{
    /**
     * @Route("/aidez/moi", name="aidez_moi")
     */
    public function index(): Response
    {
        return $this->render('aidez_moi/index.html.twig', [
            'controller_name' => 'AidezMoiController',
        ]);
    }
}
