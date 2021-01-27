<?php

namespace App\Controller;





use App\Entity\Message;
use App\Form\MessagesType;
use App\Form\MessageType;
use App\Repository\MessageRepository;
use App\Repository\CategorieRepository;
use App\Repository\GenreRepository;
use App\Repository\CgvcguRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/")
 */
class MessageController extends AbstractController
{
    /**
     * @Route("admin/message", name="message_index", methods={"GET"})
     */
    public function index(MessageRepository $messageRepository): Response
    {
        return $this->render('message/index.html.twig', [
            'messages' => $messageRepository->findAll(),
        ]);
    }

   
      /**
     * @Route("message/new", name="message_new", methods={"GET","POST"})
     */
    public function new1(CgvcguRepository $cgvcguRepository,MessageRepository $messageRepository,GenreRepository $genreRepository,CategorieRepository $categorieRepository, Request $request): Response
    {    
       
        $message = new Message();
        $form = $this->createForm(MessageType::class, $message);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($message);
            $entityManager->flush();

            return $this->redirectToRoute('acceuil');
        }

        return $this->render('message/new.html.twig', [
            'message' => $message,
            'genres' => $genreRepository->findAll(),
            'categories' => $categorieRepository->findAll(),
            'messages' => $messageRepository->findAll(),
            'form' => $form->createView(),
            'cgvcgus' => $cgvcguRepository->findAll(),
        ]);
    }

    /**
     * @Route("admin/{id}", name="message_show", methods={"GET"})
     */
    public function show(Message $message): Response
    {
        return $this->render('message/show.html.twig', [
            'message' => $message,
        ]);
    }

    /**
     * @Route("admin/message/{id}/edit", name="message_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Message $message): Response
    {
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('message_index');
        }

        return $this->render('message/edit.html.twig', [
            'message' => $message,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("admin/delete/{id}", name="message_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Message $message): Response
    {
        if ($this->isCsrfTokenValid('delete'.$message->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($message);
            $entityManager->flush();
        }

        return $this->redirectToRoute('message_index');
    }
}
