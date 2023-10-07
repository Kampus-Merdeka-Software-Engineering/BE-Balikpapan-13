/*
  Warnings:

  - You are about to drop the column `harga_course` on the `Categories` table. All the data in the column will be lost.
  - Added the required column `harga_categories` to the `Categories` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Categories` DROP COLUMN `harga_course`,
    ADD COLUMN `harga_categories` INTEGER NOT NULL;
