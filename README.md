The IKScE Demo is excellent. See https://www.drupal.org/project/iksce
What about Pulling the IKScE Demo into a Vanilla Drupal 7 and vanilla Stanbol site:
1. Install Drupal 7. Please be mindful that later versions of Drupal 7 have an issue with RESTWS URL extensions (https://www.drupal.org/node/2484829) .
2. Pull the contents of sites so that they are appended to the sites/all/ directory tree in your drupal installation.
3. Run loadothermodules.sh in the sites/all/modules folder. Be sure that drush is installed.
4. Set up stanbol. See instructions below.
5. Add the line $conf['iksce_vie_stanbol_url'] = 'http://{stanbol-host}:{stanbol-port}';
to sites/default/settings.php.
6. Set jquery_update to version 1.7 from the configuration settings in Drupal.

Setting up Stanbol:

1. Get the full (or partial) version from http://stanbol.apache.org/ .
2. Follow the manual steps here. (https://github.com/fago/stanbol-for-drupal).
   and for reference go to the stanbol-apache-felix-configuration-screenshots  in this repository. 
   To execute this go to http://{stanbol-host}:{stanbol-port}//system/console/configMgr with default name: admin , default password: admin





