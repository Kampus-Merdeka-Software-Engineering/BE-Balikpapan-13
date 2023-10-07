/*
  Warnings:

  - Added the required column `harga_course` to the `Categories` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Categories` ADD COLUMN `harga_course` VARCHAR(191) NOT NULL;
