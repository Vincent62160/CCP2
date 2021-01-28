<?php

namespace App\Repository;

use App\Entity\SectionEntretien;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method SectionEntretien|null find($id, $lockMode = null, $lockVersion = null)
 * @method SectionEntretien|null findOneBy(array $criteria, array $orderBy = null)
 * @method SectionEntretien[]    findAll()
 * @method SectionEntretien[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SectionEntretienRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SectionEntretien::class);
    }

    // /**
    //  * @return SectionEntretien[] Returns an array of SectionEntretien objects
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
    public function findOneBySomeField($value): ?SectionEntretien
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
