<?php

namespace App\Controller;

use App\Entity\Entete;
use App\Form\EnteteType;
use App\Repository\EnteteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/entete")
 */
class EnteteController extends AbstractController
{
    /**
     * @Route("/", name="entete_index", methods={"GET"})
     */
    public function index(EnteteRepository $enteteRepository): Response
    {
        return $this->render('entete/index.html.twig', [
            'entetes' => $enteteRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="entete_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $entete = new Entete();
        $form = $this->createForm(EnteteType::class, $entete);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($entete);
            $entityManager->flush();

            return $this->redirectToRoute('entete_index');
        }

        return $this->render('entete/new.html.twig', [
            'entete' => $entete,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="entete_show", methods={"GET"})
     */
    public function show(Entete $entete): Response
    {
        return $this->render('entete/show.html.twig', [
            'entete' => $entete,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="entete_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Entete $entete): Response
    {
        $form = $this->createForm(EnteteType::class, $entete);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('entete_index');
        }

        return $this->render('entete/edit.html.twig', [
            'entete' => $entete,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="entete_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Entete $entete): Response
    {
        if ($this->isCsrfTokenValid('delete'.$entete->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($entete);
            $entityManager->flush();
        }

        return $this->redirectToRoute('entete_index');
    }
}
