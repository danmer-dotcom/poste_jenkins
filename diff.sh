#!/bin/bash

COLUMN_NAME_PROD=$(cat plugin_prod_nome_ver_ALF | awk '{ print $1 }')

COLUMN_VERS_PROD=$(cat plugin_prod_nome_ver_ALF | awk '{ print $2 }')

COLUMN_NAME_GEN3GPAZNE=$(cat gen3gpazne_plugin_2-319-2 | awk '{ print $1 }')

COLUMN_VERS_GEN3GPAZNE=$(cat gen3gpazne_plugin_2-319-2 | awk '{ print $2 }')

COLUMN_NAME_GPAWS2=$(cat gpaws2_plugin_2-263-3 | awk '{ print $1 }')

COLUMN_VERS_GPAWS2=$(cat gpaws2_plugin_2-263-3 | awk '{ print $2 }')

COLUMN_NAME_GPWEB2=$(cat gpweb2_plugin_2-263-3 | awk '{ print $1 }')

COLUMN_VERS_GPWEB2=$(cat gpweb2_plugin_2-263-3 | awk '{ print $2 }')

COLUMN_NAME_PCL=$(cat pcl_plugin_2-263-3 | awk '{ print $1 }')

COLUMN_VERS_PCL=$(cat pcl_plugin_2-263-3 | awk '{ print $2 }')

COLUMN_NAME_OCPRM=$(cat ocprm_plugin_2-263-3 | awk '{ print $1 }')

COLUMN_VERS_OCPRM=$(cat ocprm_plugin_2-263-3 | awk '{ print $2 }')


VERS_OCPRM () {

if [ "$COLUMN_NAME_OCPRM" = "$COLUMN_NAME_PROD" ]; then

    printf "\n$COLUMN_NAME_PROD $COLUMN_VERS_PROD" >> ocprm/ocprm_equals

else
    
    printf "\n$COLUMN_NAME_OCPRM $COLUMN_VERS_PROD" >> ocprm/ocprm_not_present
fi

}

VERS_OCPRM



