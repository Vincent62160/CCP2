<?php

namespace App\Controller;

use App\Entity\SectionEntretien;
use App\Form\SectionEntretienType;
use App\Repository\SectionEntretienRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/section/entretien")
 */
class SectionEntretienController extends AbstractController
{
    /**
     * @Route("/", name="section_entretien_index", methods={"GET"})
     */
    public function index(SectionEntretienRepository $sectionEntretienRepository): Response
    {
        return $this->render('section_entretien/index.html.twig', [
            'section_entretiens' => $sectionEntretienRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="section_entretien_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $sectionEntretien = new SectionEntretien();
        $form = $this->createForm(SectionEntretienType::class, $sectionEntretien);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($sectionEntretien);
            $entityManager->flush();

            return $this->redirectToRoute('section_entretien_index');
        }

        return $this->render('section_entretien/new.html.twig', [
            'section_entretien' => $sectionEntretien,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="section_entretien_show", methods={"GET"})
     */
    public function show(SectionEntretien $sectionEntretien): Response
    {
        return $this->render('section_entretien/show.html.twig', [
            'section_entretien' => $sectionEntretien,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="section_entretien_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, SectionEntretien $sectionEntretien): Response
    {
        $form = $this->createForm(SectionEntretienType::class, $sectionEntretien);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('section_entretien_index');
        }

        return $this->render('section_entretien/edit.html.twig', [
            'section_entretien' => $sectionEntretien,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="section_entretien_delete", methods={"DELETE"})
     */
    public function delete(Request $request, SectionEntretien $sectionEntretien): Response
    {
        if ($this->isCsrfTokenValid('delete'.$sectionEntretien->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($sectionEntretien);
            $entityManager->flush();
        }

        return $this->redirectToRoute('section_entretien_index');
    }
}
