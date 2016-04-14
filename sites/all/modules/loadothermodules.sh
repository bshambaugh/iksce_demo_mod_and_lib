#!/bin/bash

modules=(ctools-7.x-1.9.tar.gz entity-7.x-1.6.tar.gz entity_rdf-7.x-1.x-dev.tar.gz entityreference-7.x-1.1.tar.gz features-7.x-2.7.tar.gz libraries-7.x-2.2.tar.gz link-7.x-1.4.tar.gz rdfx-7.x-2.0-alpha4.tar.gz restws-7.x-2.4.tar.gz  search_api-7.x-1.16.tar.gz strongarm-7.x-2.0.tar.gz wysiwyg-7.x-2.2.tar.gz)

ikscemodules=(backbone iksce_annotate jquery_update search_api_stanbol iksce_demo vie)

#echo ${modules[2]}
#copy, decompress, and enable all non iksce-demo specific modules 
for i in "${modules[@]}"; do echo $i; done
for i in "${modules[@]}"; do cp /home/brent/Downloads/$i .; done
for i in "${modules[@]}"; do tar -xvf $i; done
for i in "${modules[@]}"; do drush en ${i/%[-0-9]*.tar.gz/}; done
#enable all of the iksce demo modules
for i in "${ikscemodules[@]}"; do drush en ${i}; done
#for i in "${modules[@]}"; do rm -r ${i/%[-0-9]*.tar.gz/}; done
#for i in "${modules[@]}"; do rm -r ${i}; done


