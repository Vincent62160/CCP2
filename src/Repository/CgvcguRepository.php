<?php

namespace App\Repository;

use App\Entity\Cgvcgu;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Cgvcgu|null find($id, $lockMode = null, $lockVersion = null)
 * @method Cgvcgu|null findOneBy(array $criteria, array $orderBy = null)
 * @method Cgvcgu[]    findAll()
 * @method Cgvcgu[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CgvcguRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Cgvcgu::class);
    }

    // /**
    //  * @return Cgvcgu[] Returns an array of Cgvcgu objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Cgvcgu
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
