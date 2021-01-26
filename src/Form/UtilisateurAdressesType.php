<?php

namespace App\Form;

use App\Entity\UtilisateurAdresses;
use App\Entity\Client;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class UtilisateurAdressesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom')
            ->add('prenom')
            ->add('telephone')
            ->add('adresse')
            ->add('cp')
            ->add('pays')
            ->add('ville')
            ->add('complement')
            ->add('utilisateur', EntityType::class, [
                'class' => Client::class,
                'choice_label' => 'email'
            ])
         
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => UtilisateurAdresses::class,
        ]);
    }
}
