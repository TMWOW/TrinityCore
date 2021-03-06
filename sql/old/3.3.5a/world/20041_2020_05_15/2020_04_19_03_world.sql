-- 
UPDATE `creature` SET `wander_distance` = 0, `movementType` = 2 WHERE `guid` = 126445;
DELETE FROM `creature_addon` WHERE `guid` = 126445;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`, `visibilityDistanceType`, `auras`) VALUES
(126445, 1264450, 0, 0, 4097, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` = 1264450;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(1264450,  1, 258.853, -240.519, -9.10091, 0, 0, 0, 0, 100, 0),
(1264450,  2, 266.729, -242.493, -8.32708, 0, 0, 0, 0, 100, 0),
(1264450,  3, 275.521, -239.43,  -8.25407, 0, 0, 0, 0, 100, 0),
(1264450,  4, 281.801, -232.557, -8.25407, 0, 0, 0, 0, 100, 0),
(1264450,  5, 287.606, -233.488, -8.484,   0, 0, 0, 0, 100, 0),
(1264450,  6, 296.215, -237.034, -11.5626, 0, 0, 0, 0, 100, 0),
(1264450,  7, 303.604, -240.565, -14.0888, 0, 0, 0, 0, 100, 0),
(1264450,  8, 317.284, -247.168, -14.0888, 0, 0, 0, 0, 100, 0),
(1264450,  9, 321.445, -249.176, -14.0888, 0, 0, 0, 0, 100, 0),
(1264450, 10, 314.126, -245.501, -14.0888, 0, 0, 0, 0, 100, 0),
(1264450, 11, 306.529, -242.441, -14.0888, 0, 0, 0, 0, 100, 0),
(1264450, 12, 302.244, -240.714, -13.7846, 0, 0, 0, 0, 100, 0),
(1264450, 13, 292.602, -236.383, -10.4792, 0, 0, 0, 0, 100, 0),
(1264450, 14, 288.324, -234.462, -8.82875, 0, 0, 0, 0, 100, 0),
(1264450, 15, 282.729, -232.895, -8.25401, 0, 0, 0, 0, 100, 0),
(1264450, 16, 277.275, -238.912, -8.25401, 0, 0, 0, 0, 100, 0),
(1264450, 17, 268.603, -244.83,  -8.25406, 0, 0, 0, 0, 100, 0),
(1264450, 18, 258.127, -244.109, -8.25406, 0, 0, 0, 0, 100, 0),
(1264450, 19, 253.805, -238.514, -8.49638, 0, 0, 0, 0, 100, 0),
(1264450, 20, 247.398, -227.432, -8.49771, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `memberGUID` IN (126444, 126445, 126605, 126606);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(126445, 126444, 4, 0, 515, 0, 0),
(126445, 126445, 0, 0, 515, 0, 0),
(126445, 126605, 4, 90, 515, 0, 0),
(126445, 126606, 5.66, 45, 515, 0, 0);
