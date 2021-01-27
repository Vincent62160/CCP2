<?php

namespace App\Controller;
use App\Repository\MessageRepository;
use App\Repository\CategorieRepository;
use App\Repository\GenreRepository;
use App\Entity\Cgvcgu;
use App\Form\CgvcguType;
use App\Repository\CgvcguRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/")
 */
class CgvcguController extends AbstractController
{
    /**
     * @Route("admin/cgvcgu", name="cgvcgu_index", methods={"GET"})
     */
    public function index(CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('cgvcgu/index.html.twig', [
            'cgvcgus' => $cgvcguRepository->findAll(),
        ]);
    }

    /**
     * @Route("admin/new", name="cgvcgu_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $cgvcgu = new Cgvcgu();
        $form = $this->createForm(CgvcguType::class, $cgvcgu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($cgvcgu);
            $entityManager->flush();

            return $this->redirectToRoute('cgvcgu_index');
        }

        return $this->render('cgvcgu/new.html.twig', [
            'cgvcgu' => $cgvcgu,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="cgvcgu_show", methods={"GET"})
     */
    public function show(Cgvcgu $cgvcgu,GenreRepository $genreRepository,CategorieRepository $categorieRepository): Response
    {
        return $this->render('cgvcgu/show.html.twig', [
            'cgvcgu' => $cgvcgu,
            'genres' => $genreRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
        ]);
    }

    /**
     * @Route("admin/{id}/edit", name="cgvcgu_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Cgvcgu $cgvcgu): Response
    {
        $form = $this->createForm(CgvcguType::class, $cgvcgu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('cgvcgu_index');
        }

        return $this->render('cgvcgu/edit.html.twig', [
            'cgvcgu' => $cgvcgu,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("admin/{id}", name="cgvcgu_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Cgvcgu $cgvcgu): Response
    {
        if ($this->isCsrfTokenValid('delete'.$cgvcgu->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($cgvcgu);
            $entityManager->flush();
        }

        return $this->redirectToRoute('cgvcgu_index');
    }
}
