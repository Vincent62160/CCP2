<?php

namespace App\Repository;

use App\Entity\UtilisateurAdresses;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method UtilisateurAdresses|null find($id, $lockMode = null, $lockVersion = null)
 * @method UtilisateurAdresses|null findOneBy(array $criteria, array $orderBy = null)
 * @method UtilisateurAdresses[]    findAll()
 * @method UtilisateurAdresses[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UtilisateurAdressesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, UtilisateurAdresses::class);
    }

    // /**
    //  * @return UtilisateurAdresses[] Returns an array of UtilisateurAdresses objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?UtilisateurAdresses
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
