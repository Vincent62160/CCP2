<?php

namespace App\Controller;

use App\Entity\UtilisateurAdresses;
use App\Form\UtilisateurAdressesType;
use App\Repository\UtilisateurAdressesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/utilisateur/adresses")
 */
class UtilisateurAdressesController extends AbstractController
{
    /**
     * @Route("/", name="utilisateur_adresses_index", methods={"GET"})
     */
    public function index(UtilisateurAdressesRepository $utilisateurAdressesRepository): Response
    {
        return $this->render('utilisateur_adresses/index.html.twig', [
            'utilisateur_adresses' => $utilisateurAdressesRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="utilisateur_adresses_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $utilisateurAdress = new UtilisateurAdresses();
        $form = $this->createForm(UtilisateurAdressesType::class, $utilisateurAdress);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($utilisateurAdress);
            $entityManager->flush();

            return $this->redirectToRoute('utilisateur_adresses_index');
        }

        return $this->render('utilisateur_adresses/new.html.twig', [
            'utilisateur_adress' => $utilisateurAdress,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="utilisateur_adresses_show", methods={"GET"})
     */
    public function show(UtilisateurAdresses $utilisateurAdress): Response
    {
        return $this->render('utilisateur_adresses/show.html.twig', [
            'utilisateur_adress' => $utilisateurAdress,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="utilisateur_adresses_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, UtilisateurAdresses $utilisateurAdress): Response
    {
        $form = $this->createForm(UtilisateurAdressesType::class, $utilisateurAdress);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('utilisateur_adresses_index');
        }

        return $this->render('utilisateur_adresses/edit.html.twig', [
            'utilisateur_adress' => $utilisateurAdress,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="utilisateur_adresses_delete", methods={"DELETE"})
     */
    public function delete(Request $request, UtilisateurAdresses $utilisateurAdress): Response
    {
        if ($this->isCsrfTokenValid('delete'.$utilisateurAdress->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($utilisateurAdress);
            $entityManager->flush();
        }

        return $this->redirectToRoute('utilisateur_adresses_index');
    }
}
