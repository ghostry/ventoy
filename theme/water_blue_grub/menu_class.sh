#!/bin/bash
ls icons|while read name ;do
    if [[ "$name" != "vtoyret.png" ]]; then
        os=`echo $name|cut -d . -f1`;
        echo "{\"key\":\"$os\",\"class\":\"$os\"},";
        #echo "{\"key\":\"${os^}\",\"class\":\"$os\"},";
    fi
done
