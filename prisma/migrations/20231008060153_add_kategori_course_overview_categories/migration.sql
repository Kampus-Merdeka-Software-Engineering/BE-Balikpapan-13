/*
  Warnings:

  - You are about to drop the column `jumlah_course` on the `Course` table. All the data in the column will be lost.
  - Added the required column `overview_categories` to the `Categories` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kategori_course` to the `Course` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Categories` ADD COLUMN `overview_categories` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Course` DROP COLUMN `jumlah_course`,
    ADD COLUMN `kategori_course` VARCHAR(191) NOT NULL;
