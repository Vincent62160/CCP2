<?php

namespace App\Form;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use App\Entity\Cgvcgu;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CgvcguType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('conditiong',CKEditorType::class,)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Cgvcgu::class,
        ]);
    }
}
