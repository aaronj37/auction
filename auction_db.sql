--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.4
-- Dumped by pg_dump version 9.5.1

-- Started on 2016-08-16 16:50:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1940 (class 1262 OID 33066)
-- Name: Auctions; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Auctions" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "Auctions" OWNER TO postgres;

\connect "Auctions"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1943 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 41284)
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE items (
    item_id numeric,
    name character varying,
    icon character varying,
    source_id numeric
);


ALTER TABLE items OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 41278)
-- Name: recipes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE recipes (
    spell_id numeric,
    item_id numeric,
    materials character varying,
    cooldown numeric,
    cast_time numeric
);


ALTER TABLE recipes OWNER TO postgres;

--
-- TOC entry 1935 (class 0 OID 41284)
-- Dependencies: 172
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO items (item_id, name, icon, source_id) VALUES (25, 'Worn Shortsword', 'inv_sword_04', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (35, 'Bent Staff', 'inv_staff_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (36, 'Worn Mace', 'inv_mace_03', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (37, 'Worn Axe', 'inv_axe_11', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (38, 'Recruit''s Shirt', 'inv_shirt_05', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (39, 'Recruit''s Pants', 'inv_pants_02', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (40, 'Recruit''s Boots', 'inv_boots_06', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (43, 'Squire''s Boots', 'inv_boots_01', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (44, 'Squire''s Pants', 'inv_pants_02', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (45, 'Squire''s Shirt', 'inv_shirt_01', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (47, 'Footpad''s Shoes', 'inv_boots_05', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (48, 'Footpad''s Pants', 'inv_pants_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (49, 'Footpad''s Shirt', 'inv_shirt_05', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (51, 'Neophyte''s Boots', 'inv_boots_04', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (52, 'Neophyte''s Pants', 'inv_pants_02', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (53, 'Neophyte''s Shirt', 'inv_shirt_01', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (55, 'Apprentice''s Boots', 'inv_boots_09', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (57, 'Acolyte''s Robe', 'inv_chest_cloth_24', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (59, 'Acolyte''s Shoes', 'inv_boots_01', 18672);
INSERT INTO items (item_id, name, icon, source_id) VALUES (60, 'Layered Tunic', 'inv_chest_leather_09', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (61, 'Dwarven Leather Pants', 'inv_pants_leather_38v2', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (79, 'Dwarven Cloth Britches', 'inv_pants_cloth_41v4', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (80, 'Soft Fur-Lined Shoes', 'inv_boots_09', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (85, 'Dirty Leather Vest', 'inv_shirt_07', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (117, 'Tough Jerky', 'inv_misc_food_16', 982);
INSERT INTO items (item_id, name, icon, source_id) VALUES (118, 'Minor Healing Potion', 'inv_potion_49', 2330);
INSERT INTO items (item_id, name, icon, source_id) VALUES (120, 'Thug Pants', 'inv_pants_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (121, 'Thug Boots', 'inv_boots_05', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (127, 'Trapper''s Shirt', 'inv_shirt_07', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (129, 'Rugged Trapper''s Boots', 'inv_boots_06', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (139, 'Brawler''s Pants', 'inv_pants_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (140, 'Brawler''s Boots', 'inv_boots_04', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (147, 'Rugged Trapper''s Pants', 'inv_pants_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (148, 'Rugged Trapper''s Shirt', 'inv_shirt_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (153, 'Primitive Kilt', 'inv_pants_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (159, 'Refreshing Spring Water', 'inv_drink_07', 151);
INSERT INTO items (item_id, name, icon, source_id) VALUES (182, 'Garrick''s Head', 'inv_misc_head_human_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (193, 'Tattered Cloth Vest', 'inv_shirt_black_01', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (194, 'Tattered Cloth Pants', 'inv_pants_12', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (195, 'Tattered Cloth Boots', 'inv_boots_05', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (200, 'Thick Cloth Vest', 'inv_shirt_02', 1291);
INSERT INTO items (item_id, name, icon, source_id) VALUES (201, 'Thick Cloth Pants', 'inv_pants_12', 1291);
INSERT INTO items (item_id, name, icon, source_id) VALUES (202, 'Thick Cloth Shoes', 'inv_boots_05', 1291);
INSERT INTO items (item_id, name, icon, source_id) VALUES (209, 'Dirty Leather Pants', 'inv_pants_wolf', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (210, 'Dirty Leather Boots', 'inv_boots_06', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (236, 'Cured Leather Armor', 'inv_chest_leather_10', 1295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (237, 'Cured Leather Pants', 'inv_pants_06', 1295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (238, 'Cured Leather Boots', 'inv_boots_03', 1295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (239, 'Cured Leather Gloves', 'inv_gauntlets_21', 1295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (285, 'Scalemail Vest', 'inv_chest_chain_09', 956);
INSERT INTO items (item_id, name, icon, source_id) VALUES (286, 'Scalemail Pants', 'inv_pants_03', 956);
INSERT INTO items (item_id, name, icon, source_id) VALUES (287, 'Scalemail Boots', 'inv_boots_01', 956);
INSERT INTO items (item_id, name, icon, source_id) VALUES (414, 'Dalaran Sharp', 'inv_misc_food_39', 295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (422, 'Dwarven Mild', 'inv_misc_food_07', 295);
INSERT INTO items (item_id, name, icon, source_id) VALUES (537, 'Dull Frenzy Scale', 'inv_misc_monsterscales_02', 905);
INSERT INTO items (item_id, name, icon, source_id) VALUES (555, 'Rough Vulture Feathers', 'spell_magic_featherfall', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (556, 'Buzzard Beak', 'inv_misc_birdbeck_01', 7376);
INSERT INTO items (item_id, name, icon, source_id) VALUES (647, 'Destiny', 'inv_sword_19', 15740);
INSERT INTO items (item_id, name, icon, source_id) VALUES (711, 'Tattered Cloth Gloves', 'inv_gauntlets_27', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (714, 'Dirty Leather Gloves', 'inv_gauntlets_18', 2113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (718, 'Scalemail Gloves', 'inv_gauntlets_04', 956);
INSERT INTO items (item_id, name, icon, source_id) VALUES (719, 'Rabbit Handler Gloves', 'inv_gauntlets_114v4', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (720, 'Brawler Gloves', 'inv_gauntlets_05', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (723, 'Goretusk Liver', 'inv_misc_organ_04', 157);
INSERT INTO items (item_id, name, icon, source_id) VALUES (724, 'Goretusk Liver Pie', 'inv_misc_food_10', 2542);
INSERT INTO items (item_id, name, icon, source_id) VALUES (725, 'Gnoll Paw', 'inv_misc_monsterclaw_04', 98);
INSERT INTO items (item_id, name, icon, source_id) VALUES (727, 'Notched Shortsword', 'inv_sword_04', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (728, 'Recipe: Westfall Stew', 'inv_scroll_03', 340);
INSERT INTO items (item_id, name, icon, source_id) VALUES (729, 'Stringy Vulture Meat', 'inv_misc_food_16', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (730, 'Murloc Eye', 'inv_misc_eye_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (731, 'Goretusk Snout', 'spell_magic_polymorphpig', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (733, 'Westfall Stew', 'inv_misc_bowl_01', 2543);
INSERT INTO items (item_id, name, icon, source_id) VALUES (735, 'Rolf and Malakai''s Medallions', 'inv_jewelry_amulet_03', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (737, 'Holy Spring Water', 'inv_potion_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (738, 'Sack of Barley', 'inv_misc_food_wheat_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (739, 'Sack of Corn', 'inv_misc_food_wheat_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (740, 'Sack of Rye', 'inv_misc_food_wheat_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (742, 'A Sycamore Branch', 'inv_misc_branch_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (744, 'Thunderbrew''s Boot Flask', 'inv_drink_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (745, 'Marshal McBride''s Documents', 'inv_scroll_03', 54);
INSERT INTO items (item_id, name, icon, source_id) VALUES (748, 'Stormwind Armor Marker', 'inv_scroll_03', 59);
INSERT INTO items (item_id, name, icon, source_id) VALUES (750, 'Tough Wolf Meat', 'inv_misc_food_16', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (752, 'Red Burlap Bandana', 'inv_misc_bandana_03', 42937);
INSERT INTO items (item_id, name, icon, source_id) VALUES (753, 'Dragonmaw Shortsword', 'inv_sword_36', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (754, 'Shortsword of Vengeance', 'inv_sword_14', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (755, 'Melted Candle', 'inv_misc_candle_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (756, 'Tunnel Pick', 'inv_pick_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (763, 'Ice-Covered Bracers', 'inv_bracer_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (765, 'Silverleaf', 'inv_misc_herb_10', 1313);
INSERT INTO items (item_id, name, icon, source_id) VALUES (766, 'Flanged Mace', 'inv_mace_07', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (767, 'Long Bo Staff', 'inv_staff_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (768, 'Lumberjack Axe', 'inv_axe_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (769, 'Chunk of Boar Meat', 'inv_misc_food_14', 113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (770, 'Pointy Crocolisk Tooth', 'inv_misc_bone_08', 1082);
INSERT INTO items (item_id, name, icon, source_id) VALUES (771, 'Chipped Boar Tusk', 'inv_misc_bone_04', 113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (772, 'Large Candle', 'inv_misc_candle_01', 40);
INSERT INTO items (item_id, name, icon, source_id) VALUES (773, 'Gold Dust', 'inv_misc_dust_01', 40);
INSERT INTO items (item_id, name, icon, source_id) VALUES (774, 'Malachite', 'inv_misc_gem_emerald_03', 6);
INSERT INTO items (item_id, name, icon, source_id) VALUES (776, 'Vendetta', 'inv_weapon_shortblade_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (777, 'Prowler Teeth', 'inv_misc_monsterfang_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (778, 'Kobold Excavation Pick', 'inv_pick_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (779, 'Shiny Seashell', 'inv_misc_shell_01', 15668);
INSERT INTO items (item_id, name, icon, source_id) VALUES (780, 'Torn Murloc Fin', 'inv_misc_monsterscales_02', 46);
INSERT INTO items (item_id, name, icon, source_id) VALUES (781, 'Stone Gnoll Hammer', 'inv_hammer_09', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (782, 'Painted Gnoll Armband', 'inv_misc_bandana_01', 97);
INSERT INTO items (item_id, name, icon, source_id) VALUES (783, 'Light Hide', 'inv_misc_pelt_wolf_ruin_02', 113);
INSERT INTO items (item_id, name, icon, source_id) VALUES (785, 'Mageroyal', 'inv_jewelry_talisman_03', 153868);
INSERT INTO items (item_id, name, icon, source_id) VALUES (787, 'Slitherskin Mackerel', 'inv_misc_fish_24', 7752);
INSERT INTO items (item_id, name, icon, source_id) VALUES (789, 'Stout Battlehammer', 'inv_hammer_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (790, 'Forester''s Axe', 'inv_axe_14', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (791, 'Gnarled Ash Staff', 'inv_staff_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (792, 'Knitted Sandals', 'inv_boots_fabric_01', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (793, 'Knitted Gloves', 'inv_gauntlets_18', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (794, 'Knitted Pants', 'inv_pants_11', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (795, 'Knitted Tunic', 'inv_shirt_10', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (796, 'Rough Leather Boots', 'inv_boots_09', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (797, 'Rough Leather Gloves', 'inv_gauntlets_18', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (798, 'Rough Leather Pants', 'inv_pants_09', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (799, 'Rough Leather Vest', 'inv_chest_wolf', 74);
INSERT INTO items (item_id, name, icon, source_id) VALUES (804, 'Large Blue Sack', 'inv_misc_bag_10_blue', 9027);
INSERT INTO items (item_id, name, icon, source_id) VALUES (805, 'Small Red Pouch', 'inv_misc_bag_09_red', 3654);
INSERT INTO items (item_id, name, icon, source_id) VALUES (809, 'Bloodrazor', 'inv_sword_28', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (810, 'Hammer of the Northern Wind', 'inv_hammer_11', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (811, 'Axe of the Deep Woods', 'inv_axe_07', 15740);
INSERT INTO items (item_id, name, icon, source_id) VALUES (812, 'Glowing Brightwood Staff', 'inv_staff_29', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (813, 'Broken Cog', 'inv_misc_gear_01', 114);
INSERT INTO items (item_id, name, icon, source_id) VALUES (814, 'Flask of Oil', 'inv_drink_07', 114);
INSERT INTO items (item_id, name, icon, source_id) VALUES (816, 'Small Hand Blade', 'inv_weapon_shortblade_01', 42381);
INSERT INTO items (item_id, name, icon, source_id) VALUES (818, 'Tigerseye', 'inv_misc_gem_opal_03', 61);
INSERT INTO items (item_id, name, icon, source_id) VALUES (820, 'Slicer Blade', 'inv_weapon_shortblade_01', 115);
INSERT INTO items (item_id, name, icon, source_id) VALUES (821, 'Riverpaw Leather Vest', 'inv_shirt_07', 123);
INSERT INTO items (item_id, name, icon, source_id) VALUES (826, 'Brutish Riverpaw Axe', 'inv_axe_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (827, 'Wicked Blackjack', 'inv_mace_01', 122);
INSERT INTO items (item_id, name, icon, source_id) VALUES (828, 'Small Blue Pouch', 'inv_misc_bag_09_blue', 3654);
INSERT INTO items (item_id, name, icon, source_id) VALUES (829, 'Red Leather Bandana', 'inv_misc_bandana_03', 95);
INSERT INTO items (item_id, name, icon, source_id) VALUES (832, 'Silver Defias Belt', 'inv_belt_03', 121);
INSERT INTO items (item_id, name, icon, source_id) VALUES (833, 'Lifestone', 'inv_ore_truesilver_01', 15740);
INSERT INTO items (item_id, name, icon, source_id) VALUES (835, 'Large Rope Net', 'inv_misc_net_01', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (837, 'Heavy Weave Armor', 'inv_shirt_06', 1214);
INSERT INTO items (item_id, name, icon, source_id) VALUES (838, 'Heavy Weave Pants', 'inv_pants_14', 1214);
INSERT INTO items (item_id, name, icon, source_id) VALUES (839, 'Heavy Weave Gloves', 'inv_gauntlets_18', 1214);
INSERT INTO items (item_id, name, icon, source_id) VALUES (840, 'Heavy Weave Shoes', 'inv_boots_05', 1214);
INSERT INTO items (item_id, name, icon, source_id) VALUES (841, 'Furlbrow''s Pocket Watch', 'inv_misc_pocketwatch_02', 290);
INSERT INTO items (item_id, name, icon, source_id) VALUES (843, 'Tanned Leather Boots', 'inv_boots_wolf', 896);
INSERT INTO items (item_id, name, icon, source_id) VALUES (844, 'Tanned Leather Gloves', 'inv_gauntlets_05', 896);
INSERT INTO items (item_id, name, icon, source_id) VALUES (845, 'Tanned Leather Pants', 'inv_pants_wolf', 896);
INSERT INTO items (item_id, name, icon, source_id) VALUES (846, 'Tanned Leather Jerkin', 'inv_chest_wolf', 896);
INSERT INTO items (item_id, name, icon, source_id) VALUES (847, 'Chainmail Armor', 'inv_chest_chain', 167);
INSERT INTO items (item_id, name, icon, source_id) VALUES (848, 'Chainmail Pants', 'inv_pants_03', 167);
INSERT INTO items (item_id, name, icon, source_id) VALUES (849, 'Chainmail Boots', 'inv_boots_01', 167);
INSERT INTO items (item_id, name, icon, source_id) VALUES (850, 'Chainmail Gloves', 'inv_gauntlets_04', 167);
INSERT INTO items (item_id, name, icon, source_id) VALUES (851, 'Cutlass', 'inv_sword_36', 1287);
INSERT INTO items (item_id, name, icon, source_id) VALUES (852, 'Mace', 'inv_mace_15', 222);
INSERT INTO items (item_id, name, icon, source_id) VALUES (853, 'Hatchet', 'inv_axe_11', 1287);
INSERT INTO items (item_id, name, icon, source_id) VALUES (854, 'Quarter Staff', 'inv_staff_17', 1287);
INSERT INTO items (item_id, name, icon, source_id) VALUES (856, 'Blue Leather Bag', 'inv_misc_bag_05', 9027);
INSERT INTO items (item_id, name, icon, source_id) VALUES (857, 'Large Red Sack', 'inv_misc_bag_10_red', 9027);
INSERT INTO items (item_id, name, icon, source_id) VALUES (858, 'Lesser Healing Potion', 'inv_potion_50', 2337);
INSERT INTO items (item_id, name, icon, source_id) VALUES (859, 'Fine Cloth Shirt', 'inv_shirt_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (860, 'Cavalier''s Boots', 'inv_boots_05', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (862, 'Runed Ring', 'inv_belt_34', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (863, 'Gloom Reaper', 'inv_axe_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (864, 'Knightly Longsword', 'inv_sword_27', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (865, 'Leaden Mace', 'inv_mace_03', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (866, 'Monk''s Staff', 'inv_staff_08', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (867, 'Gloves of Holy Might', 'inv_gauntlets_06', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (868, 'Ardent Custodian', 'inv_mace_13', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (869, 'Dazzling Longsword', 'inv_sword_25', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (870, 'Fiery War Axe', 'inv_axe_02', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (871, 'Flurry Axe', 'inv_axe_17', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (872, 'Rockslicer', 'inv_throwingaxe_01', 47626);
INSERT INTO items (item_id, name, icon, source_id) VALUES (873, 'Staff of Jordan', 'inv_staff_13', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (876, 'Worn Wooden Buckler', 'inv_shield_09', 0);
INSERT INTO items (item_id, name, icon, source_id) VALUES (878, 'Fist-Sized Spinneret', 'inv_misc_monsterspidercarapace_01', 14279);
INSERT INTO items (item_id, name, icon, source_id) VALUES (880, 'Staff of Horrors', 'inv_staff_25', 0);


--
-- TOC entry 1934 (class 0 OID 41278)
-- Dependencies: 171
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recipes (spell_id, item_id, materials, cooldown, cast_time) VALUES (2330, 118, '[[2447,1],[765,1],[3371,1]]', 1, 0);
INSERT INTO recipes (spell_id, item_id, materials, cooldown, cast_time) VALUES (2542, 724, '[[723,1]]', 2, 0);
INSERT INTO recipes (spell_id, item_id, materials, cooldown, cast_time) VALUES (2543, 733, '[[769,1],[159,1]]', 2, 0);
INSERT INTO recipes (spell_id, item_id, materials, cooldown, cast_time) VALUES (7752, 787, '[[6303,1]]', 2, 0);
INSERT INTO recipes (spell_id, item_id, materials, cooldown, cast_time) VALUES (2337, 858, '[[118,1],[2450,1]]', 1, 0);


--
-- TOC entry 1942 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-08-16 16:50:07

--
-- PostgreSQL database dump complete
--

