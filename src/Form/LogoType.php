<?php

namespace App\Form;

use App\Entity\Logo;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class LogoType extends AbstractType
{
    
        public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('imageFile', FileType::class, [
            'required' => true,
            'label' => 'Télécharger une image de type jpg, jpeg,png, gif',
        

        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Logo::class,
        ]);
    }
}
