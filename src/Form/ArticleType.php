<?php

namespace App\Form;
use App\Entity\Genre;
use App\Entity\Article;
use App\Entity\Images;
use App\Entity\Categorie;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Titre')
            ->add('description')
            ->add('image', EntityType::class, [
                'class' => Images::class,
                'choice_label' => 'image'
            ])
        
        ->add('categorie', EntityType::class, [
            'class' => Categorie::class,
            'choice_label' => 'categorie'
        ])
        ->add('genre', EntityType::class, [
            'class' => Genre::class,
            'choice_label' => 'genre'
        ])
    ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
