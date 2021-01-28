<?php

namespace App\Repository;

use App\Entity\SectionDeux;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method SectionDeux|null find($id, $lockMode = null, $lockVersion = null)
 * @method SectionDeux|null findOneBy(array $criteria, array $orderBy = null)
 * @method SectionDeux[]    findAll()
 * @method SectionDeux[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SectionDeuxRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SectionDeux::class);
    }

    // /**
    //  * @return SectionDeux[] Returns an array of SectionDeux objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?SectionDeux
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
