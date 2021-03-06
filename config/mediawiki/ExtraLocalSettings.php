<?php

// @see https://www.mediawiki.org/wiki/Manual:Configuration_settings

# Protect against web entry
if ( !defined( 'MEDIAWIKI' ) ) {
    exit;
}

$wgEnotifUserTalk = false;
$wgEnotifWatchlist = false;
$wgEmailAuthentication = true;

$wgUseInstantCommons = false;

$wgAuthenticationTokenVersion = "1";

$wgGroupPermissions['*']['createaccount'] = false;
$wgGroupPermissions['*']['edit'] = false;
$wgGroupPermissions['*']['read'] = true;

## For attaching licensing metadata to pages, and displaying an
## appropriate copyright notice / icon. GNU Free Documentation
## License and Creative Commons licenses are supported so far.
#$wgRightsPage = ""; # Set to the title of a wiki page that describes your license/copyright
#$wgRightsUrl = "";
#$wgRightsText = "";
#$wgRightsIcon = "";

## Uncomment this to disable output compression
# $wgDisableOutputCompression = true;

// OPTIONAL: Enable VisualEditor's experimental code features
#$wgDefaultUserOptions['visualeditor-enable-experimental'] = 1;

$wgFooterIcons['poweredby']['aureme'] = array(
        "src" => "$wgResourceBasePath/resources/assets/aureme_logo.png",
        "url" => "http://aureme.genouest.org/",
        "alt" => "Powered by AuReMe"
);

enableSemantics( getenv('MEDIAWIKI_SERVER') . '/', true );
