-- CreateTable
CREATE TABLE `Vidio` (
    `id_vidio` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `id_course` INTEGER NOT NULL,
    `nama_vidio` VARCHAR(191) NOT NULL,
    `link_vidio` VARCHAR(191) NOT NULL,
    `duration` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_vidio`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
