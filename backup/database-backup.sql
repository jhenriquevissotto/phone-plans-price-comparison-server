/*
 Navicat Premium Data Transfer

 Source Server         : Localhost PS
 Source Server Type    : PostgreSQL
 Source Server Version : 140003
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140003
 File Encoding         : 65001

 Date: 27/05/2022 11:25:13
*/


-- ----------------------------
-- Sequence structure for admin_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_permissions_id_seq";
CREATE SEQUENCE "public"."admin_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for admin_roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_roles_id_seq";
CREATE SEQUENCE "public"."admin_roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for admin_users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_users_id_seq";
CREATE SEQUENCE "public"."admin_users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for files_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."files_id_seq";
CREATE SEQUENCE "public"."files_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for i18n_locale_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."i18n_locale_id_seq";
CREATE SEQUENCE "public"."i18n_locale_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for plans_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."plans_id_seq";
CREATE SEQUENCE "public"."plans_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for prices_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."prices_id_seq";
CREATE SEQUENCE "public"."prices_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for regions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."regions_id_seq";
CREATE SEQUENCE "public"."regions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for strapi_api_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."strapi_api_tokens_id_seq";
CREATE SEQUENCE "public"."strapi_api_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for strapi_core_store_settings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."strapi_core_store_settings_id_seq";
CREATE SEQUENCE "public"."strapi_core_store_settings_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for strapi_database_schema_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."strapi_database_schema_id_seq";
CREATE SEQUENCE "public"."strapi_database_schema_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for strapi_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."strapi_migrations_id_seq";
CREATE SEQUENCE "public"."strapi_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for strapi_webhooks_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."strapi_webhooks_id_seq";
CREATE SEQUENCE "public"."strapi_webhooks_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for up_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."up_permissions_id_seq";
CREATE SEQUENCE "public"."up_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for up_roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."up_roles_id_seq";
CREATE SEQUENCE "public"."up_roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for up_users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."up_users_id_seq";
CREATE SEQUENCE "public"."up_users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin_permissions";
CREATE TABLE "public"."admin_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('admin_permissions_id_seq'::regclass),
  "action" varchar(255) COLLATE "pg_catalog"."default",
  "subject" varchar(255) COLLATE "pg_catalog"."default",
  "properties" jsonb,
  "conditions" jsonb,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO "public"."admin_permissions" VALUES (1, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-25 20:26:35.998', '2022-05-25 20:26:35.998', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-25 20:26:36.007', '2022-05-25 20:26:36.007', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-25 20:26:36.013', '2022-05-25 20:26:36.013', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-25 20:26:36.019', '2022-05-25 20:26:36.019', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-25 20:26:36.027', '2022-05-25 20:26:36.027', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (6, 'plugin::upload.read', NULL, '{}', '["admin::is-creator"]', '2022-05-25 20:26:36.034', '2022-05-25 20:26:36.034', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-25 20:26:36.042', '2022-05-25 20:26:36.042', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (8, 'plugin::upload.assets.update', NULL, '{}', '["admin::is-creator"]', '2022-05-25 20:26:36.048', '2022-05-25 20:26:36.048', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-25 20:26:36.055', '2022-05-25 20:26:36.055', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-25 20:26:36.061', '2022-05-25 20:26:36.061', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (11, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-05-25 20:26:36.096', '2022-05-25 20:26:36.096', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (12, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-05-25 20:26:36.103', '2022-05-25 20:26:36.103', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (13, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-05-25 20:26:36.109', '2022-05-25 20:26:36.109', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-05-25 20:26:36.115', '2022-05-25 20:26:36.115', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-05-25 20:26:36.122', '2022-05-25 20:26:36.122', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-05-25 20:26:36.129', '2022-05-25 20:26:36.129', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-05-25 20:26:36.135', '2022-05-25 20:26:36.135', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-05-25 20:26:36.143', '2022-05-25 20:26:36.143', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-05-25 20:26:36.149', '2022-05-25 20:26:36.149', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (20, 'plugin::upload.read', NULL, '{}', '[]', '2022-05-25 20:26:36.156', '2022-05-25 20:26:36.156', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-05-25 20:26:36.162', '2022-05-25 20:26:36.162', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-05-25 20:26:36.167', '2022-05-25 20:26:36.167', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-05-25 20:26:36.175', '2022-05-25 20:26:36.175', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-05-25 20:26:36.184', '2022-05-25 20:26:36.184', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-05-25 20:26:36.193', '2022-05-25 20:26:36.193', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-05-25 20:26:36.199', '2022-05-25 20:26:36.199', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-05-25 20:26:36.206', '2022-05-25 20:26:36.206', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-05-25 20:26:36.213', '2022-05-25 20:26:36.213', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.22', '2022-05-25 20:26:36.22', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-05-25 20:26:36.226', '2022-05-25 20:26:36.226', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-05-25 20:26:36.233', '2022-05-25 20:26:36.233', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-05-25 20:26:36.24', '2022-05-25 20:26:36.24', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-05-25 20:26:36.246', '2022-05-25 20:26:36.246', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-05-25 20:26:36.252', '2022-05-25 20:26:36.252', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-05-25 20:26:36.258', '2022-05-25 20:26:36.258', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-05-25 20:26:36.264', '2022-05-25 20:26:36.264', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-05-25 20:26:36.27', '2022-05-25 20:26:36.27', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-05-25 20:26:36.278', '2022-05-25 20:26:36.278', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.293', '2022-05-25 20:26:36.293', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-05-25 20:26:36.299', '2022-05-25 20:26:36.299', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-05-25 20:26:36.306', '2022-05-25 20:26:36.306', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-05-25 20:26:36.311', '2022-05-25 20:26:36.311', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-05-25 20:26:36.317', '2022-05-25 20:26:36.317', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-05-25 20:26:36.324', '2022-05-25 20:26:36.324', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-05-25 20:26:36.33', '2022-05-25 20:26:36.33', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.339', '2022-05-25 20:26:36.339', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (47, 'admin::users.create', NULL, '{}', '[]', '2022-05-25 20:26:36.345', '2022-05-25 20:26:36.345', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (48, 'admin::users.read', NULL, '{}', '[]', '2022-05-25 20:26:36.351', '2022-05-25 20:26:36.351', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (49, 'admin::users.update', NULL, '{}', '[]', '2022-05-25 20:26:36.357', '2022-05-25 20:26:36.357', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (50, 'admin::users.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.363', '2022-05-25 20:26:36.363', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (51, 'admin::roles.create', NULL, '{}', '[]', '2022-05-25 20:26:36.369', '2022-05-25 20:26:36.369', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (52, 'admin::roles.read', NULL, '{}', '[]', '2022-05-25 20:26:36.376', '2022-05-25 20:26:36.376', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (53, 'admin::roles.update', NULL, '{}', '[]', '2022-05-25 20:26:36.382', '2022-05-25 20:26:36.382', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (54, 'admin::roles.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.389', '2022-05-25 20:26:36.389', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-05-25 20:26:36.395', '2022-05-25 20:26:36.395', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-05-25 20:26:36.401', '2022-05-25 20:26:36.401', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-05-25 20:26:36.408', '2022-05-25 20:26:36.408', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-05-25 20:26:36.414', '2022-05-25 20:26:36.414', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (59, 'plugin::content-manager.explorer.create', 'api::region.region', '{"fields": ["code", "area"]}', '[]', '2022-05-25 20:46:03.45', '2022-05-25 20:46:03.45', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (60, 'plugin::content-manager.explorer.read', 'api::region.region', '{"fields": ["code", "area"]}', '[]', '2022-05-25 20:46:03.461', '2022-05-25 20:46:03.461', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (61, 'plugin::content-manager.explorer.update', 'api::region.region', '{"fields": ["code", "area"]}', '[]', '2022-05-25 20:46:03.468', '2022-05-25 20:46:03.468', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (62, 'plugin::content-manager.explorer.delete', 'api::region.region', '{}', '[]', '2022-05-25 20:46:03.477', '2022-05-25 20:46:03.477', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (63, 'plugin::content-manager.explorer.publish', 'api::region.region', '{}', '[]', '2022-05-25 20:46:03.484', '2022-05-25 20:46:03.484', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (67, 'plugin::content-manager.explorer.delete', 'api::plan.plan', '{}', '[]', '2022-05-25 21:16:17.369', '2022-05-25 21:16:17.369', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (68, 'plugin::content-manager.explorer.publish', 'api::plan.plan', '{}', '[]', '2022-05-25 21:16:17.378', '2022-05-25 21:16:17.378', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (69, 'plugin::content-manager.explorer.create', 'api::price.price', '{"fields": ["from", "to", "feePerMin"]}', '[]', '2022-05-25 21:26:51.76', '2022-05-25 21:26:51.76', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (70, 'plugin::content-manager.explorer.read', 'api::price.price', '{"fields": ["from", "to", "feePerMin"]}', '[]', '2022-05-25 21:26:51.771', '2022-05-25 21:26:51.771', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (71, 'plugin::content-manager.explorer.update', 'api::price.price', '{"fields": ["from", "to", "feePerMin"]}', '[]', '2022-05-25 21:26:51.78', '2022-05-25 21:26:51.78', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (72, 'plugin::content-manager.explorer.delete', 'api::price.price', '{}', '[]', '2022-05-25 21:26:51.79', '2022-05-25 21:26:51.79', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (73, 'plugin::content-manager.explorer.publish', 'api::price.price', '{}', '[]', '2022-05-25 21:26:51.799', '2022-05-25 21:26:51.799', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (77, 'plugin::content-manager.explorer.create', 'api::plan.plan', '{"fields": ["slug_en", "slug_pt", "name_en", "name_pt", "freeMinutes", "price", "premium"]}', '[]', '2022-05-25 22:11:53.299', '2022-05-25 22:11:53.299', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (78, 'plugin::content-manager.explorer.read', 'api::plan.plan', '{"fields": ["slug_en", "slug_pt", "name_en", "name_pt", "freeMinutes", "price", "premium"]}', '[]', '2022-05-25 22:11:53.31', '2022-05-25 22:11:53.31', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (79, 'plugin::content-manager.explorer.update', 'api::plan.plan', '{"fields": ["slug_en", "slug_pt", "name_en", "name_pt", "freeMinutes", "price", "premium"]}', '[]', '2022-05-25 22:11:53.318', '2022-05-25 22:11:53.318', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (80, 'plugin::documentation.read', NULL, '{}', '[]', '2022-05-26 15:09:53.993', '2022-05-26 15:09:53.993', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (81, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2022-05-26 15:09:54.006', '2022-05-26 15:09:54.006', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (82, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2022-05-26 15:09:54.014', '2022-05-26 15:09:54.014', NULL, NULL);
INSERT INTO "public"."admin_permissions" VALUES (83, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2022-05-26 15:09:54.02', '2022-05-26 15:09:54.02', NULL, NULL);

-- ----------------------------
-- Table structure for admin_permissions_role_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin_permissions_role_links";
CREATE TABLE "public"."admin_permissions_role_links" (
  "permission_id" int4,
  "role_id" int4
)
;

-- ----------------------------
-- Records of admin_permissions_role_links
-- ----------------------------
INSERT INTO "public"."admin_permissions_role_links" VALUES (1, 2);
INSERT INTO "public"."admin_permissions_role_links" VALUES (2, 2);
INSERT INTO "public"."admin_permissions_role_links" VALUES (3, 2);
INSERT INTO "public"."admin_permissions_role_links" VALUES (4, 2);
INSERT INTO "public"."admin_permissions_role_links" VALUES (5, 2);
INSERT INTO "public"."admin_permissions_role_links" VALUES (6, 3);
INSERT INTO "public"."admin_permissions_role_links" VALUES (7, 3);
INSERT INTO "public"."admin_permissions_role_links" VALUES (8, 3);
INSERT INTO "public"."admin_permissions_role_links" VALUES (9, 3);
INSERT INTO "public"."admin_permissions_role_links" VALUES (10, 3);
INSERT INTO "public"."admin_permissions_role_links" VALUES (11, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (12, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (13, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (14, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (15, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (16, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (17, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (18, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (19, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (20, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (21, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (22, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (23, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (24, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (25, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (26, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (27, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (28, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (29, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (30, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (31, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (32, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (33, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (34, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (35, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (36, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (37, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (38, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (39, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (40, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (41, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (42, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (43, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (44, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (45, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (46, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (47, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (48, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (49, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (50, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (51, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (52, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (53, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (54, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (55, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (56, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (57, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (58, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (59, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (60, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (61, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (62, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (63, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (67, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (68, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (69, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (70, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (71, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (72, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (73, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (77, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (78, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (79, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (80, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (81, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (82, 1);
INSERT INTO "public"."admin_permissions_role_links" VALUES (83, 1);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin_roles";
CREATE TABLE "public"."admin_roles" (
  "id" int4 NOT NULL DEFAULT nextval('admin_roles_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO "public"."admin_roles" VALUES (1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-05-25 20:26:35.972', '2022-05-25 20:26:35.972', NULL, NULL);
INSERT INTO "public"."admin_roles" VALUES (2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-05-25 20:26:35.982', '2022-05-25 20:26:35.982', NULL, NULL);
INSERT INTO "public"."admin_roles" VALUES (3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-05-25 20:26:35.988', '2022-05-25 20:26:35.988', NULL, NULL);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin_users";
CREATE TABLE "public"."admin_users" (
  "id" int4 NOT NULL DEFAULT nextval('admin_users_id_seq'::regclass),
  "firstname" varchar(255) COLLATE "pg_catalog"."default",
  "lastname" varchar(255) COLLATE "pg_catalog"."default",
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "reset_password_token" varchar(255) COLLATE "pg_catalog"."default",
  "registration_token" varchar(255) COLLATE "pg_catalog"."default",
  "is_active" bool,
  "blocked" bool,
  "prefered_language" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO "public"."admin_users" VALUES (1, 'Admin', '', NULL, 'jhenrique.vissotto@gmail.com', '$2a$10$lpG/yV1VU6E4X.yZAZwSO.EeaFssnYi.m9rLf38Z5GV3BdqtvCTpK', NULL, NULL, 't', 'f', NULL, '2022-05-25 20:28:33.359', '2022-05-25 21:51:00.295', NULL, NULL);

-- ----------------------------
-- Table structure for admin_users_roles_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin_users_roles_links";
CREATE TABLE "public"."admin_users_roles_links" (
  "user_id" int4,
  "role_id" int4
)
;

-- ----------------------------
-- Records of admin_users_roles_links
-- ----------------------------
INSERT INTO "public"."admin_users_roles_links" VALUES (1, 1);
INSERT INTO "public"."admin_users_roles_links" VALUES (1, 2);
INSERT INTO "public"."admin_users_roles_links" VALUES (1, 3);

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS "public"."files";
CREATE TABLE "public"."files" (
  "id" int4 NOT NULL DEFAULT nextval('files_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "alternative_text" varchar(255) COLLATE "pg_catalog"."default",
  "caption" varchar(255) COLLATE "pg_catalog"."default",
  "width" int4,
  "height" int4,
  "formats" jsonb,
  "hash" varchar(255) COLLATE "pg_catalog"."default",
  "ext" varchar(255) COLLATE "pg_catalog"."default",
  "mime" varchar(255) COLLATE "pg_catalog"."default",
  "size" numeric(10,2),
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "preview_url" varchar(255) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "provider_metadata" jsonb,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for files_related_morphs
-- ----------------------------
DROP TABLE IF EXISTS "public"."files_related_morphs";
CREATE TABLE "public"."files_related_morphs" (
  "file_id" int4,
  "related_id" int4,
  "related_type" varchar(255) COLLATE "pg_catalog"."default",
  "field" varchar(255) COLLATE "pg_catalog"."default",
  "order" int4
)
;

-- ----------------------------
-- Records of files_related_morphs
-- ----------------------------

-- ----------------------------
-- Table structure for i18n_locale
-- ----------------------------
DROP TABLE IF EXISTS "public"."i18n_locale";
CREATE TABLE "public"."i18n_locale" (
  "id" int4 NOT NULL DEFAULT nextval('i18n_locale_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of i18n_locale
-- ----------------------------
INSERT INTO "public"."i18n_locale" VALUES (1, 'English (en)', 'en', '2022-05-25 20:26:35.819', '2022-05-25 20:26:35.819', NULL, NULL);

-- ----------------------------
-- Table structure for plans
-- ----------------------------
DROP TABLE IF EXISTS "public"."plans";
CREATE TABLE "public"."plans" (
  "id" int4 NOT NULL DEFAULT nextval('plans_id_seq'::regclass),
  "slug_en" varchar(255) COLLATE "pg_catalog"."default",
  "slug_pt" varchar(255) COLLATE "pg_catalog"."default",
  "name_en" varchar(255) COLLATE "pg_catalog"."default",
  "name_pt" varchar(255) COLLATE "pg_catalog"."default",
  "free_minutes" int4,
  "price" numeric(10,2),
  "premium" numeric(10,2),
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "published_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of plans
-- ----------------------------
INSERT INTO "public"."plans" VALUES (3, 'talk-more-120', 'fale-mais-120', 'Talk More 120', 'Fale Mais 120', 120, 152.00, 0.10, '2022-05-25 21:19:57.078', '2022-05-25 22:03:02.893', '2022-05-25 22:03:02.887', 1, 1);
INSERT INTO "public"."plans" VALUES (1, 'talk-more-30', 'fale-mais-30', 'Talk More 30', 'Fale Mais 30', 30, 0.00, 0.10, '2022-05-25 21:18:34.329', '2022-05-25 22:03:25.956', '2022-05-25 22:03:23.508', 1, 1);
INSERT INTO "public"."plans" VALUES (2, 'talk-more-60', 'fale-mais-60', 'Talk More 60', 'Fale Mais 60', 60, 34.00, 0.10, '2022-05-25 21:19:12.295', '2022-05-25 22:04:11.697', '2022-05-25 22:04:11.693', 1, 1);

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS "public"."prices";
CREATE TABLE "public"."prices" (
  "id" int4 NOT NULL DEFAULT nextval('prices_id_seq'::regclass),
  "fee_per_min" numeric(10,2),
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "published_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of prices
-- ----------------------------
INSERT INTO "public"."prices" VALUES (1, 1.90, '2022-05-25 21:38:17.035', '2022-05-25 21:38:19.331', '2022-05-25 21:38:19.325', 1, 1);
INSERT INTO "public"."prices" VALUES (2, 2.90, '2022-05-25 21:39:16.139', '2022-05-25 21:39:17.055', '2022-05-25 21:39:17.052', 1, 1);
INSERT INTO "public"."prices" VALUES (3, 1.70, '2022-05-25 21:39:57.859', '2022-05-25 21:39:58.722', '2022-05-25 21:39:58.72', 1, 1);
INSERT INTO "public"."prices" VALUES (4, 2.70, '2022-05-25 21:40:45.814', '2022-05-25 21:40:46.676', '2022-05-25 21:40:46.674', 1, 1);
INSERT INTO "public"."prices" VALUES (5, 0.90, '2022-05-25 21:41:09.761', '2022-05-25 21:41:18.176', '2022-05-25 21:41:18.171', 1, 1);
INSERT INTO "public"."prices" VALUES (6, 1.90, '2022-05-25 21:41:36.312', '2022-05-25 21:41:37.138', '2022-05-25 21:41:37.132', 1, 1);

-- ----------------------------
-- Table structure for prices_from_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."prices_from_links";
CREATE TABLE "public"."prices_from_links" (
  "price_id" int4,
  "region_id" int4
)
;

-- ----------------------------
-- Records of prices_from_links
-- ----------------------------
INSERT INTO "public"."prices_from_links" VALUES (1, 1);
INSERT INTO "public"."prices_from_links" VALUES (2, 2);
INSERT INTO "public"."prices_from_links" VALUES (3, 1);
INSERT INTO "public"."prices_from_links" VALUES (4, 3);
INSERT INTO "public"."prices_from_links" VALUES (5, 1);
INSERT INTO "public"."prices_from_links" VALUES (6, 4);

-- ----------------------------
-- Table structure for prices_to_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."prices_to_links";
CREATE TABLE "public"."prices_to_links" (
  "price_id" int4,
  "region_id" int4
)
;

-- ----------------------------
-- Records of prices_to_links
-- ----------------------------
INSERT INTO "public"."prices_to_links" VALUES (1, 2);
INSERT INTO "public"."prices_to_links" VALUES (2, 1);
INSERT INTO "public"."prices_to_links" VALUES (3, 3);
INSERT INTO "public"."prices_to_links" VALUES (4, 1);
INSERT INTO "public"."prices_to_links" VALUES (5, 4);
INSERT INTO "public"."prices_to_links" VALUES (6, 1);

-- ----------------------------
-- Table structure for regions
-- ----------------------------
DROP TABLE IF EXISTS "public"."regions";
CREATE TABLE "public"."regions" (
  "id" int4 NOT NULL DEFAULT nextval('regions_id_seq'::regclass),
  "code" int4,
  "area" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "published_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of regions
-- ----------------------------
INSERT INTO "public"."regions" VALUES (1, 11, 'São Paulo', '2022-05-25 21:06:19.759', '2022-05-25 21:08:41.532', '2022-05-25 21:08:41.529', 1, 1);
INSERT INTO "public"."regions" VALUES (3, 17, 'São José do Rio Preto', '2022-05-25 21:07:36.2', '2022-05-25 21:08:45.664', '2022-05-25 21:08:45.662', 1, 1);
INSERT INTO "public"."regions" VALUES (2, 16, 'Ribeirão Preto e Região', '2022-05-25 21:06:38.058', '2022-05-25 21:08:48.112', '2022-05-25 21:08:48.11', 1, 1);
INSERT INTO "public"."regions" VALUES (4, 18, 'Outras Regiões', '2022-05-25 21:07:47.795', '2022-05-25 21:08:50.537', '2022-05-25 21:08:50.533', 1, 1);

-- ----------------------------
-- Table structure for strapi_api_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."strapi_api_tokens";
CREATE TABLE "public"."strapi_api_tokens" (
  "id" int4 NOT NULL DEFAULT nextval('strapi_api_tokens_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "access_key" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of strapi_api_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for strapi_core_store_settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."strapi_core_store_settings";
CREATE TABLE "public"."strapi_core_store_settings" (
  "id" int4 NOT NULL DEFAULT nextval('strapi_core_store_settings_id_seq'::regclass),
  "key" varchar(255) COLLATE "pg_catalog"."default",
  "value" text COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "environment" varchar(255) COLLATE "pg_catalog"."default",
  "tag" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of strapi_core_store_settings
-- ----------------------------
INSERT INTO "public"."strapi_core_store_settings" VALUES (2, 'plugin_content_manager_configuration_content_types::admin::permission', '{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (3, 'plugin_content_manager_configuration_content_types::admin::user', '{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (4, 'plugin_content_manager_configuration_content_types::admin::role', '{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (14, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (15, 'plugin_i18n_default_locale', '"en"', 'string', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (1, 'strapi_content_types_schema', '{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::plan.plan":{"kind":"collectionType","collectionName":"plans","info":{"singularName":"plan","pluralName":"plans","displayName":"plan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug_en":{"type":"string","unique":true},"slug_pt":{"type":"string","unique":true},"name_en":{"type":"string"},"name_pt":{"type":"string"},"freeMinutes":{"type":"integer"},"price":{"type":"decimal"},"premium":{"type":"decimal"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"plans","info":{"singularName":"plan","pluralName":"plans","displayName":"plan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"slug_en":{"type":"string","unique":true},"slug_pt":{"type":"string","unique":true},"name_en":{"type":"string"},"name_pt":{"type":"string"},"freeMinutes":{"type":"integer"},"price":{"type":"decimal"},"premium":{"type":"decimal"}},"kind":"collectionType"},"modelType":"contentType","modelName":"plan","connection":"default","uid":"api::plan.plan","apiName":"plan","globalId":"Plan","actions":{},"lifecycles":{}},"api::price.price":{"kind":"collectionType","collectionName":"prices","info":{"singularName":"price","pluralName":"prices","displayName":"price","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"from":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"to":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"feePerMin":{"type":"decimal"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"prices","info":{"singularName":"price","pluralName":"prices","displayName":"price","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"from":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"to":{"type":"relation","relation":"oneToMany","target":"api::region.region"},"feePerMin":{"type":"decimal"}},"kind":"collectionType"},"modelType":"contentType","modelName":"price","connection":"default","uid":"api::price.price","apiName":"price","globalId":"Price","actions":{},"lifecycles":{}},"api::region.region":{"kind":"collectionType","collectionName":"regions","info":{"singularName":"region","pluralName":"regions","displayName":"region","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"code":{"type":"integer","unique":true},"area":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"regions","info":{"singularName":"region","pluralName":"regions","displayName":"region","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"code":{"type":"integer","unique":true},"area":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"region","connection":"default","uid":"api::region.region","apiName":"region","globalId":"Region","actions":{},"lifecycles":{}}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (16, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (9, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (11, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (12, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (13, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\n\n<p>But don’t worry! You can use the following link to reset your password:</p>\n<p><%= URL %>?code=<%= TOKEN %></p>\n\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\n\n<p>You have to confirm your email address. Please click on the link below.</p>\n\n<p><%= URL %>?confirmation=<%= CODE %></p>\n\n<p>Thanks.</p>"}}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (17, 'plugin_content_manager_configuration_content_types::api::region.region', '{"uid":"api::region.region","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"area","defaultSortBy":"area","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"area":{"edit":{"label":"area","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"area","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","code","area","createdAt"],"editRelations":[],"edit":[[{"name":"code","size":4},{"name":"area","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (19, 'plugin_content_manager_configuration_content_types::api::price.price', '{"uid":"api::price.price","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"from":{"edit":{"label":"from","description":"","placeholder":"","visible":true,"editable":true,"mainField":"area"},"list":{"label":"from","searchable":false,"sortable":false}},"to":{"edit":{"label":"to","description":"","placeholder":"","visible":true,"editable":true,"mainField":"area"},"list":{"label":"to","searchable":false,"sortable":false}},"feePerMin":{"edit":{"label":"feePerMin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"feePerMin","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","from","to","feePerMin"],"edit":[[{"name":"feePerMin","size":4}]],"editRelations":["from","to"]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (18, 'plugin_content_manager_configuration_content_types::api::plan.plan', '{"uid":"api::plan.plan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"slug_en","defaultSortBy":"slug_en","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"slug_en":{"edit":{"label":"slug_en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug_en","searchable":true,"sortable":true}},"slug_pt":{"edit":{"label":"slug_pt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug_pt","searchable":true,"sortable":true}},"name_en":{"edit":{"label":"name_en","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_en","searchable":true,"sortable":true}},"name_pt":{"edit":{"label":"name_pt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name_pt","searchable":true,"sortable":true}},"freeMinutes":{"edit":{"label":"freeMinutes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"freeMinutes","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"premium":{"edit":{"label":"premium","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"premium","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug_en","slug_pt","name_en"],"edit":[[{"name":"slug_en","size":6},{"name":"slug_pt","size":6}],[{"name":"name_en","size":6},{"name":"name_pt","size":6}],[{"name":"freeMinutes","size":4},{"name":"price","size":4},{"name":"premium","size":4}]],"editRelations":[]}}', 'object', NULL, NULL);
INSERT INTO "public"."strapi_core_store_settings" VALUES (20, 'plugin_documentation_config', '{"restrictedAccess":false}', 'object', NULL, NULL);

-- ----------------------------
-- Table structure for strapi_database_schema
-- ----------------------------
DROP TABLE IF EXISTS "public"."strapi_database_schema";
CREATE TABLE "public"."strapi_database_schema" (
  "id" int4 NOT NULL DEFAULT nextval('strapi_database_schema_id_seq'::regclass),
  "schema" json,
  "time" timestamp(6),
  "hash" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of strapi_database_schema
-- ----------------------------
INSERT INTO "public"."strapi_database_schema" VALUES (8, '{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"plans","indexes":[{"name":"plans_created_by_id_fk","columns":["created_by_id"]},{"name":"plans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"plans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"plans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slug_en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug_pt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name_en","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name_pt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"free_minutes","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"premium","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"prices","indexes":[{"name":"prices_created_by_id_fk","columns":["created_by_id"]},{"name":"prices_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"prices_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"prices_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"fee_per_min","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"regions","indexes":[{"name":"regions_created_by_id_fk","columns":["created_by_id"]},{"name":"regions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"regions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"regions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"code","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"area","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"prices_from_links","indexes":[{"name":"prices_from_links_fk","columns":["price_id"]},{"name":"prices_from_links_inv_fk","columns":["region_id"]}],"foreignKeys":[{"name":"prices_from_links_fk","columns":["price_id"],"referencedColumns":["id"],"referencedTable":"prices","onDelete":"CASCADE"},{"name":"prices_from_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"price_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"prices_to_links","indexes":[{"name":"prices_to_links_fk","columns":["price_id"]},{"name":"prices_to_links_inv_fk","columns":["region_id"]}],"foreignKeys":[{"name":"prices_to_links_fk","columns":["price_id"],"referencedColumns":["id"],"referencedTable":"prices","onDelete":"CASCADE"},{"name":"prices_to_links_inv_fk","columns":["region_id"],"referencedColumns":["id"],"referencedTable":"regions","onDelete":"CASCADE"}],"columns":[{"name":"price_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"region_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}', '2022-05-26 15:09:53.054', '72d16225c3806cfe4273001c77f621da');

-- ----------------------------
-- Table structure for strapi_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."strapi_migrations";
CREATE TABLE "public"."strapi_migrations" (
  "id" int4 NOT NULL DEFAULT nextval('strapi_migrations_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "time" timestamp(6)
)
;

-- ----------------------------
-- Records of strapi_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for strapi_webhooks
-- ----------------------------
DROP TABLE IF EXISTS "public"."strapi_webhooks";
CREATE TABLE "public"."strapi_webhooks" (
  "id" int4 NOT NULL DEFAULT nextval('strapi_webhooks_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "url" text COLLATE "pg_catalog"."default",
  "headers" jsonb,
  "events" jsonb,
  "enabled" bool
)
;

-- ----------------------------
-- Records of strapi_webhooks
-- ----------------------------

-- ----------------------------
-- Table structure for up_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."up_permissions";
CREATE TABLE "public"."up_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('up_permissions_id_seq'::regclass),
  "action" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of up_permissions
-- ----------------------------
INSERT INTO "public"."up_permissions" VALUES (1, 'plugin::users-permissions.auth.connect', '2022-05-25 20:26:35.775', '2022-05-25 20:26:35.775', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (2, 'plugin::users-permissions.user.me', '2022-05-25 20:26:35.775', '2022-05-25 20:26:35.775', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (5, 'plugin::users-permissions.auth.callback', '2022-05-25 20:26:35.785', '2022-05-25 20:26:35.785', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (6, 'plugin::users-permissions.auth.connect', '2022-05-25 20:26:35.785', '2022-05-25 20:26:35.785', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (9, 'plugin::users-permissions.auth.register', '2022-05-25 20:26:35.785', '2022-05-25 20:26:35.785', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (11, 'plugin::users-permissions.user.me', '2022-05-25 20:26:35.785', '2022-05-25 20:26:35.785', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (12, 'api::plan.plan.find', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (13, 'api::plan.plan.findOne', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (14, 'api::price.price.find', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (15, 'api::price.price.findOne', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (16, 'api::region.region.find', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (17, 'api::region.region.findOne', '2022-05-25 21:48:16.977', '2022-05-25 21:48:16.977', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (18, 'api::plan.plan.find', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (19, 'api::plan.plan.findOne', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (20, 'api::price.price.find', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (21, 'api::price.price.findOne', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (22, 'api::region.region.find', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);
INSERT INTO "public"."up_permissions" VALUES (23, 'api::region.region.findOne', '2022-05-25 21:51:58.264', '2022-05-25 21:51:58.264', NULL, NULL);

-- ----------------------------
-- Table structure for up_permissions_role_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."up_permissions_role_links";
CREATE TABLE "public"."up_permissions_role_links" (
  "permission_id" int4,
  "role_id" int4
)
;

-- ----------------------------
-- Records of up_permissions_role_links
-- ----------------------------
INSERT INTO "public"."up_permissions_role_links" VALUES (1, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (2, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (5, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (6, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (9, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (11, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (12, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (13, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (14, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (15, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (17, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (16, 2);
INSERT INTO "public"."up_permissions_role_links" VALUES (18, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (20, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (19, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (22, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (23, 1);
INSERT INTO "public"."up_permissions_role_links" VALUES (21, 1);

-- ----------------------------
-- Table structure for up_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."up_roles";
CREATE TABLE "public"."up_roles" (
  "id" int4 NOT NULL DEFAULT nextval('up_roles_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of up_roles
-- ----------------------------
INSERT INTO "public"."up_roles" VALUES (1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-05-25 20:26:35.76', '2022-05-25 21:51:58.257', NULL, NULL);
INSERT INTO "public"."up_roles" VALUES (2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-05-25 20:26:35.765', '2022-05-25 21:52:19.015', NULL, NULL);

-- ----------------------------
-- Table structure for up_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."up_users";
CREATE TABLE "public"."up_users" (
  "id" int4 NOT NULL DEFAULT nextval('up_users_id_seq'::regclass),
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "reset_password_token" varchar(255) COLLATE "pg_catalog"."default",
  "confirmation_token" varchar(255) COLLATE "pg_catalog"."default",
  "confirmed" bool,
  "blocked" bool,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "created_by_id" int4,
  "updated_by_id" int4
)
;

-- ----------------------------
-- Records of up_users
-- ----------------------------

-- ----------------------------
-- Table structure for up_users_role_links
-- ----------------------------
DROP TABLE IF EXISTS "public"."up_users_role_links";
CREATE TABLE "public"."up_users_role_links" (
  "user_id" int4,
  "role_id" int4
)
;

-- ----------------------------
-- Records of up_users_role_links
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."admin_permissions_id_seq"
OWNED BY "public"."admin_permissions"."id";
SELECT setval('"public"."admin_permissions_id_seq"', 84, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."admin_roles_id_seq"
OWNED BY "public"."admin_roles"."id";
SELECT setval('"public"."admin_roles_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."admin_users_id_seq"
OWNED BY "public"."admin_users"."id";
SELECT setval('"public"."admin_users_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."files_id_seq"
OWNED BY "public"."files"."id";
SELECT setval('"public"."files_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."i18n_locale_id_seq"
OWNED BY "public"."i18n_locale"."id";
SELECT setval('"public"."i18n_locale_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."plans_id_seq"
OWNED BY "public"."plans"."id";
SELECT setval('"public"."plans_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."prices_id_seq"
OWNED BY "public"."prices"."id";
SELECT setval('"public"."prices_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."regions_id_seq"
OWNED BY "public"."regions"."id";
SELECT setval('"public"."regions_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."strapi_api_tokens_id_seq"
OWNED BY "public"."strapi_api_tokens"."id";
SELECT setval('"public"."strapi_api_tokens_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."strapi_core_store_settings_id_seq"
OWNED BY "public"."strapi_core_store_settings"."id";
SELECT setval('"public"."strapi_core_store_settings_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."strapi_database_schema_id_seq"
OWNED BY "public"."strapi_database_schema"."id";
SELECT setval('"public"."strapi_database_schema_id_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."strapi_migrations_id_seq"
OWNED BY "public"."strapi_migrations"."id";
SELECT setval('"public"."strapi_migrations_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."strapi_webhooks_id_seq"
OWNED BY "public"."strapi_webhooks"."id";
SELECT setval('"public"."strapi_webhooks_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."up_permissions_id_seq"
OWNED BY "public"."up_permissions"."id";
SELECT setval('"public"."up_permissions_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."up_roles_id_seq"
OWNED BY "public"."up_roles"."id";
SELECT setval('"public"."up_roles_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."up_users_id_seq"
OWNED BY "public"."up_users"."id";
SELECT setval('"public"."up_users_id_seq"', 2, false);

-- ----------------------------
-- Indexes structure for table admin_permissions
-- ----------------------------
CREATE INDEX "admin_permissions_created_by_id_fk" ON "public"."admin_permissions" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "admin_permissions_updated_by_id_fk" ON "public"."admin_permissions" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table admin_permissions
-- ----------------------------
ALTER TABLE "public"."admin_permissions" ADD CONSTRAINT "admin_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table admin_permissions_role_links
-- ----------------------------
CREATE INDEX "admin_permissions_role_links_fk" ON "public"."admin_permissions_role_links" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "admin_permissions_role_links_inv_fk" ON "public"."admin_permissions_role_links" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table admin_roles
-- ----------------------------
CREATE INDEX "admin_roles_created_by_id_fk" ON "public"."admin_roles" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "admin_roles_updated_by_id_fk" ON "public"."admin_roles" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table admin_roles
-- ----------------------------
ALTER TABLE "public"."admin_roles" ADD CONSTRAINT "admin_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table admin_users
-- ----------------------------
CREATE INDEX "admin_users_created_by_id_fk" ON "public"."admin_users" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "admin_users_updated_by_id_fk" ON "public"."admin_users" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table admin_users
-- ----------------------------
ALTER TABLE "public"."admin_users" ADD CONSTRAINT "admin_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table admin_users_roles_links
-- ----------------------------
CREATE INDEX "admin_users_roles_links_fk" ON "public"."admin_users_roles_links" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "admin_users_roles_links_inv_fk" ON "public"."admin_users_roles_links" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table files
-- ----------------------------
CREATE INDEX "files_created_by_id_fk" ON "public"."files" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "files_updated_by_id_fk" ON "public"."files" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table files
-- ----------------------------
ALTER TABLE "public"."files" ADD CONSTRAINT "files_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table files_related_morphs
-- ----------------------------
CREATE INDEX "files_related_morphs_fk" ON "public"."files_related_morphs" USING btree (
  "file_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table i18n_locale
-- ----------------------------
CREATE INDEX "i18n_locale_created_by_id_fk" ON "public"."i18n_locale" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "i18n_locale_updated_by_id_fk" ON "public"."i18n_locale" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table i18n_locale
-- ----------------------------
ALTER TABLE "public"."i18n_locale" ADD CONSTRAINT "i18n_locale_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table plans
-- ----------------------------
CREATE INDEX "plans_created_by_id_fk" ON "public"."plans" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "plans_updated_by_id_fk" ON "public"."plans" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table plans
-- ----------------------------
ALTER TABLE "public"."plans" ADD CONSTRAINT "plans_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table prices
-- ----------------------------
CREATE INDEX "prices_created_by_id_fk" ON "public"."prices" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "prices_updated_by_id_fk" ON "public"."prices" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table prices
-- ----------------------------
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table prices_from_links
-- ----------------------------
CREATE INDEX "prices_from_links_fk" ON "public"."prices_from_links" USING btree (
  "price_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "prices_from_links_inv_fk" ON "public"."prices_from_links" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table prices_to_links
-- ----------------------------
CREATE INDEX "prices_to_links_fk" ON "public"."prices_to_links" USING btree (
  "price_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "prices_to_links_inv_fk" ON "public"."prices_to_links" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table regions
-- ----------------------------
CREATE INDEX "regions_created_by_id_fk" ON "public"."regions" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "regions_updated_by_id_fk" ON "public"."regions" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table regions
-- ----------------------------
ALTER TABLE "public"."regions" ADD CONSTRAINT "regions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table strapi_api_tokens
-- ----------------------------
CREATE INDEX "strapi_api_tokens_created_by_id_fk" ON "public"."strapi_api_tokens" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "strapi_api_tokens_updated_by_id_fk" ON "public"."strapi_api_tokens" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table strapi_api_tokens
-- ----------------------------
ALTER TABLE "public"."strapi_api_tokens" ADD CONSTRAINT "strapi_api_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table strapi_core_store_settings
-- ----------------------------
ALTER TABLE "public"."strapi_core_store_settings" ADD CONSTRAINT "strapi_core_store_settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table strapi_database_schema
-- ----------------------------
ALTER TABLE "public"."strapi_database_schema" ADD CONSTRAINT "strapi_database_schema_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table strapi_migrations
-- ----------------------------
ALTER TABLE "public"."strapi_migrations" ADD CONSTRAINT "strapi_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table strapi_webhooks
-- ----------------------------
ALTER TABLE "public"."strapi_webhooks" ADD CONSTRAINT "strapi_webhooks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table up_permissions
-- ----------------------------
CREATE INDEX "up_permissions_created_by_id_fk" ON "public"."up_permissions" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "up_permissions_updated_by_id_fk" ON "public"."up_permissions" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table up_permissions
-- ----------------------------
ALTER TABLE "public"."up_permissions" ADD CONSTRAINT "up_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table up_permissions_role_links
-- ----------------------------
CREATE INDEX "up_permissions_role_links_fk" ON "public"."up_permissions_role_links" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "up_permissions_role_links_inv_fk" ON "public"."up_permissions_role_links" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table up_roles
-- ----------------------------
CREATE INDEX "up_roles_created_by_id_fk" ON "public"."up_roles" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "up_roles_updated_by_id_fk" ON "public"."up_roles" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table up_roles
-- ----------------------------
ALTER TABLE "public"."up_roles" ADD CONSTRAINT "up_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table up_users
-- ----------------------------
CREATE INDEX "up_users_created_by_id_fk" ON "public"."up_users" USING btree (
  "created_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "up_users_updated_by_id_fk" ON "public"."up_users" USING btree (
  "updated_by_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table up_users
-- ----------------------------
ALTER TABLE "public"."up_users" ADD CONSTRAINT "up_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table up_users_role_links
-- ----------------------------
CREATE INDEX "up_users_role_links_fk" ON "public"."up_users_role_links" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "up_users_role_links_inv_fk" ON "public"."up_users_role_links" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Foreign Keys structure for table admin_permissions
-- ----------------------------
ALTER TABLE "public"."admin_permissions" ADD CONSTRAINT "admin_permissions_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."admin_permissions" ADD CONSTRAINT "admin_permissions_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table admin_permissions_role_links
-- ----------------------------
ALTER TABLE "public"."admin_permissions_role_links" ADD CONSTRAINT "admin_permissions_role_links_fk" FOREIGN KEY ("permission_id") REFERENCES "public"."admin_permissions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."admin_permissions_role_links" ADD CONSTRAINT "admin_permissions_role_links_inv_fk" FOREIGN KEY ("role_id") REFERENCES "public"."admin_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table admin_roles
-- ----------------------------
ALTER TABLE "public"."admin_roles" ADD CONSTRAINT "admin_roles_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."admin_roles" ADD CONSTRAINT "admin_roles_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table admin_users
-- ----------------------------
ALTER TABLE "public"."admin_users" ADD CONSTRAINT "admin_users_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."admin_users" ADD CONSTRAINT "admin_users_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table admin_users_roles_links
-- ----------------------------
ALTER TABLE "public"."admin_users_roles_links" ADD CONSTRAINT "admin_users_roles_links_fk" FOREIGN KEY ("user_id") REFERENCES "public"."admin_users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."admin_users_roles_links" ADD CONSTRAINT "admin_users_roles_links_inv_fk" FOREIGN KEY ("role_id") REFERENCES "public"."admin_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table files
-- ----------------------------
ALTER TABLE "public"."files" ADD CONSTRAINT "files_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."files" ADD CONSTRAINT "files_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table files_related_morphs
-- ----------------------------
ALTER TABLE "public"."files_related_morphs" ADD CONSTRAINT "files_related_morphs_fk" FOREIGN KEY ("file_id") REFERENCES "public"."files" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table i18n_locale
-- ----------------------------
ALTER TABLE "public"."i18n_locale" ADD CONSTRAINT "i18n_locale_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."i18n_locale" ADD CONSTRAINT "i18n_locale_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table plans
-- ----------------------------
ALTER TABLE "public"."plans" ADD CONSTRAINT "plans_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."plans" ADD CONSTRAINT "plans_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prices
-- ----------------------------
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prices_from_links
-- ----------------------------
ALTER TABLE "public"."prices_from_links" ADD CONSTRAINT "prices_from_links_fk" FOREIGN KEY ("price_id") REFERENCES "public"."prices" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."prices_from_links" ADD CONSTRAINT "prices_from_links_inv_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prices_to_links
-- ----------------------------
ALTER TABLE "public"."prices_to_links" ADD CONSTRAINT "prices_to_links_fk" FOREIGN KEY ("price_id") REFERENCES "public"."prices" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."prices_to_links" ADD CONSTRAINT "prices_to_links_inv_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table regions
-- ----------------------------
ALTER TABLE "public"."regions" ADD CONSTRAINT "regions_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."regions" ADD CONSTRAINT "regions_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table strapi_api_tokens
-- ----------------------------
ALTER TABLE "public"."strapi_api_tokens" ADD CONSTRAINT "strapi_api_tokens_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."strapi_api_tokens" ADD CONSTRAINT "strapi_api_tokens_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table up_permissions
-- ----------------------------
ALTER TABLE "public"."up_permissions" ADD CONSTRAINT "up_permissions_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."up_permissions" ADD CONSTRAINT "up_permissions_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table up_permissions_role_links
-- ----------------------------
ALTER TABLE "public"."up_permissions_role_links" ADD CONSTRAINT "up_permissions_role_links_fk" FOREIGN KEY ("permission_id") REFERENCES "public"."up_permissions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."up_permissions_role_links" ADD CONSTRAINT "up_permissions_role_links_inv_fk" FOREIGN KEY ("role_id") REFERENCES "public"."up_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table up_roles
-- ----------------------------
ALTER TABLE "public"."up_roles" ADD CONSTRAINT "up_roles_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."up_roles" ADD CONSTRAINT "up_roles_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table up_users
-- ----------------------------
ALTER TABLE "public"."up_users" ADD CONSTRAINT "up_users_created_by_id_fk" FOREIGN KEY ("created_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."up_users" ADD CONSTRAINT "up_users_updated_by_id_fk" FOREIGN KEY ("updated_by_id") REFERENCES "public"."admin_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table up_users_role_links
-- ----------------------------
ALTER TABLE "public"."up_users_role_links" ADD CONSTRAINT "up_users_role_links_fk" FOREIGN KEY ("user_id") REFERENCES "public"."up_users" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."up_users_role_links" ADD CONSTRAINT "up_users_role_links_inv_fk" FOREIGN KEY ("role_id") REFERENCES "public"."up_roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
