<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LunetteController extends AbstractController
{
    /**
     * @Route("/lunette", name="lunette")
     */
    public function index(): Response
    {
        return $this->render('lunette/index.html.twig', [
            'controller_name' => 'LunetteController',
        ]);
    }
}
