<?php

namespace App\Controller;

use App\Entity\Client;
use App\Form\ClientType;
use App\Repository\CategorieRepository;
use App\Repository\ClientRepository;
use App\Repository\GenreRepository;
use App\Repository\CgvcguRepository;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/")
 */
class ClientController extends AbstractController
{
    /**
     * @Route("/admin/client", name="client_index", methods={"GET"})
     */
    public function index(ClientRepository $clientRepository,CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('client/index.html.twig', [
            'clients' => $clientRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
            
        ]);
    }

    /**
     * @Route("admin/client/new", name="client_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $client = new Client();
        $form = $this->createForm(ClientType::class, $client);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($client);
            $entityManager->flush();

            return $this->redirectToRoute('client_index');
        }

        return $this->render('client/new.html.twig', [
            'client' => $client,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/client/{id}", name="client_show", methods={"GET"})
     */
    public function show(Client $client,GenreRepository $genreRepository,CategorieRepository $categorieRepository,CgvcguRepository $cgvcguRepository): Response
    {
        return $this->render('client/show.html.twig', [
            'client' => $client,
            'genres' => $genreRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'cgvcgus' => $cgvcguRepository->findAll(),
        ]);
    }

    /**
     * @Route("client/{id}/edit", name="client_edit", methods={"GET","POST"})
     */
    public function edit(CategorieRepository $categorieRepository,Request $request, Client $client,UserPasswordEncoderInterface $passwordEncoder,GenreRepository $genreRepository,CgvcguRepository $cgvcguRepository): Response
    {   
    
        $form = $this->createForm(ClientType::class, $client);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // encode the plain password
            $client->setPassword(
                $passwordEncoder->encodePassword(
                    $client,
                    $form->get('password')->getData()
                )
            );
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($client);
            $entityManager->flush();

            return $this->redirectToRoute('acceuil');
        }

        return $this->render('client/edit.html.twig', [
            'client' => $client,
            'genres' => $genreRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'form' => $form->createView(),
            'cgvcgus' => $cgvcguRepository->findAll(),
        ]);
    }

    /**
     * @Route("/{id}", name="client_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Client $client): Response
    {
        if ($this->isCsrfTokenValid('delete'.$client->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($client);
            $entityManager->flush();
        }

        return $this->redirectToRoute('acceuil');
    }
}
