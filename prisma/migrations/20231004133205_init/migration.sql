/*
  Warnings:

  - The primary key for the `Course` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `Course` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Course` table. All the data in the column will be lost.
  - Added the required column `desc_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `jumlah_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kode_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_course` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vidio_course` to the `Course` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Course` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    DROP COLUMN `image`,
    DROP COLUMN `name`,
    ADD COLUMN `desc_course` VARCHAR(191) NOT NULL,
    ADD COLUMN `id_course` INTEGER NOT NULL AUTO_INCREMENT,
    ADD COLUMN `image_course` VARCHAR(191) NOT NULL,
    ADD COLUMN `jumlah_course` VARCHAR(191) NOT NULL,
    ADD COLUMN `kode_course` VARCHAR(191) NOT NULL,
    ADD COLUMN `name_course` VARCHAR(191) NOT NULL,
    ADD COLUMN `vidio_course` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id_course`);

-- CreateTable
CREATE TABLE `Categories` (
    `id_categoris` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `kode_categories` VARCHAR(191) NOT NULL,
    `name_categories` VARCHAR(191) NOT NULL,
    `desc_categories` VARCHAR(191) NOT NULL,
    `image_categories` VARCHAR(191) NOT NULL,
    `jumlah_categories` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_categoris`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
