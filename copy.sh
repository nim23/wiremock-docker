mkdir ./server/__files_temp
mkdir ./server/mappings_temp

find ./*/__files -iname '*.*' -exec cp {} ./server/__files_temp/ \;
find ./*/mappings -iname '*.json' -exec cp {} ./server/mappings_temp/ \;

mv ./server/__files_temp ./server/__files
mv ./server/mappings_temp ./server/mappings
