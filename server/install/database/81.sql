INSERT INTO  `setting` (
`setting` ,
`value` ,
`fieldType` ,
`helptext` ,
`options` ,
`cat` ,
`userChange` ,
`title` ,
`validation` ,
`ordering` ,
`default` ,
`userSee` ,
`type`
)
VALUES (
 'DATE_FORMAT',  'Y-m-d',  'text',  'The Date Format to use when displaying dates in the CMS.', NULL ,  'regional',  '1',  'Date Format',  'required',  '30',  'Y-m-d',  '1',  'string'
);

ALTER TABLE  `media` ADD  `is_module` TINYINT NOT NULL DEFAULT  '0';

INSERT INTO `module` (`ModuleID`, `Module`, `Name`, `Enabled`, `RegionSpecific`, `Description`, `ImageUri`, `SchemaVersion`, `ValidExtensions`, `PreviewEnabled`, `assignable`) VALUES 
(NULL, 'font', 'Font', '1', '0', 'A font to use in other Modules', 'forms/library.gif', '1', 'ttf,otf,eot,svg,woff', '0', '0');

UPDATE `version` SET `app_ver` = '1.7.0-alpha2', `XmdsVersion` = 4;
UPDATE `setting` SET `value` = 0 WHERE `setting` = 'PHONE_HOME_DATE';
UPDATE `version` SET `DBVersion` = '81';