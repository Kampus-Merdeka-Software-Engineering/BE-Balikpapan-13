-- CreateTable
CREATE TABLE `Course` (
    `id_course` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `kode_course` VARCHAR(191) NOT NULL,
    `name_course` VARCHAR(191) NOT NULL,
    `jumlah_course` VARCHAR(191) NOT NULL,
    `desc_course` VARCHAR(191) NOT NULL,
    `image_course` VARCHAR(191) NOT NULL,
    `vidio_course` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_course`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Categories` (
    `id_categories` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `kode_categories` VARCHAR(191) NOT NULL,
    `name_categories` VARCHAR(191) NOT NULL,
    `desc_categories` VARCHAR(191) NOT NULL,
    `image_categories` VARCHAR(191) NOT NULL,
    `jumlah_categories` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_categories`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
