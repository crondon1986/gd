/*24/07/18 create convocatorias*/

CREATE TABLE `convocatoria` (
 `id_convocatoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_documento` int(10) unsigned NOT NULL,
 `id_itemsubcategoria` int(10) unsigned NOT NULL,
 `nota_convocatoria` text COLLATE utf8_unicode_ci NOT NULL,
 `para_convocatoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `de_convocatoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `cuerpo_convocatoria` text COLLATE utf8_unicode_ci NOT NULL,
 `created_at` timestamp NULL DEFAULT NULL,
 `updated_at` timestamp NULL DEFAULT NULL,
 `numero` int(11) NOT NULL,
 `anio_convocatoria` text COLLATE utf8_unicode_ci NOT NULL,
 PRIMARY KEY (`id_convocatoria`),
 KEY `convocatoria_id_documento_foreign` (`id_documento`),
 KEY `convocatoria_id_itemsubcategoria_foreign` (`id_itemsubcategoria`),
 CONSTRAINT `convocatoria_id_documento_foreign` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE,
 CONSTRAINT `convocatoria_id_itemsubcategoria_foreign` FOREIGN KEY (`id_itemsubcategoria`) REFERENCES `itemsubcategoria` (`id_itemsubcategoria`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `itemsubcategoria` (`id_itemsubcategoria`, `id_subcategoria`, `nombre_itemsubcategoria`, `descripcion_itemsubcategoria`, `created_at`, `updated_at`) VALUES (NULL, '2', 'Evento', ' Evento de Convocatoria', NULL, NULL);

/*04/08/2018*/

ALTER TABLE `oficio` ADD `tipo` VARCHAR(100) NULL DEFAULT 'contratacion' AFTER `cuerpo`;
ALTER TABLE `oficio` ADD `formap1` TEXT  AFTER `tipo`;
ALTER TABLE `oficio` ADD `fichatecnica` TEXT  AFTER `formap1`;