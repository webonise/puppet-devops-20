#!bin/sh

#declare require variables
retention_days = Rcount
today=$(date +"%m_%d_%Y")
#Obj_name=image(new_image.json) #not sure how to take image reference so commenting it.

#Location setting and json file name
PATH_CNAME="C:\Users\Venkata\webonise\puppet-devops-20\scripts\:"
filename=new_image.json
#validate path and todays date.
echo $PATH_CNAME $today

read Rcount
#validate read value from Rcount.
echo $Rcount

imagecreationtime=creationTimestamp(new_image.json)


for x in $(find $PATH_CNAME -type f imagecreationtime)
do
if [(today - imagecreationtime) >= Rcount]
then
echo "Print total images"
else
echo "print obj reference to the string"
fi




