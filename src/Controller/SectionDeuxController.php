<?php

namespace App\Controller;

use App\Entity\SectionDeux;
use App\Form\SectionDeuxType;
use App\Repository\SectionDeuxRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/section/deux")
 */
class SectionDeuxController extends AbstractController
{
    /**
     * @Route("/", name="section_deux_index", methods={"GET"})
     */
    public function index(SectionDeuxRepository $sectionDeuxRepository): Response
    {
        return $this->render('section_deux/index.html.twig', [
            'section_deuxes' => $sectionDeuxRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="section_deux_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $sectionDeux = new SectionDeux();
        $form = $this->createForm(SectionDeuxType::class, $sectionDeux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($sectionDeux);
            $entityManager->flush();

            return $this->redirectToRoute('section_deux_index');
        }

        return $this->render('section_deux/new.html.twig', [
            'section_deux' => $sectionDeux,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="section_deux_show", methods={"GET"})
     */
    public function show(SectionDeux $sectionDeux): Response
    {
        return $this->render('section_deux/show.html.twig', [
            'section_deux' => $sectionDeux,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="section_deux_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, SectionDeux $sectionDeux): Response
    {
        $form = $this->createForm(SectionDeuxType::class, $sectionDeux);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('section_deux_index');
        }

        return $this->render('section_deux/edit.html.twig', [
            'section_deux' => $sectionDeux,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="section_deux_delete", methods={"DELETE"})
     */
    public function delete(Request $request, SectionDeux $sectionDeux): Response
    {
        if ($this->isCsrfTokenValid('delete'.$sectionDeux->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($sectionDeux);
            $entityManager->flush();
        }

        return $this->redirectToRoute('section_deux_index');
    }
}
