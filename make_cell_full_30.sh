#rm image_spam.net
#echo "192 22500 1" > training.data 
#for i in `ls cell/x/*`; do ./image2fann_invert_30 $i 1 >> training30.data; done
#for i in `ls cell/o/*`; do ./image2fann_invert_30 $i -1 >> training30.data; done
#for i in `ls cell2/x/*`; do ./image2fann_invert_30 $i 1 >> training30.data; done
#for i in `ls cell2/o/*`; do ./image2fann_invert_30 $i -1 >> training30.data; done

#echo "8 22500 1" > test.data 
for i in `ls cell/test/x*`; do ./image2fann_invert_30 $i 1 >> test.data; done
for i in `ls cell/test/o*`; do ./image2fann_invert_30 $i -1 >> test.data; done
#./train
#echo "done training. testing:"
#./test


#sed -i '/0/ { N; s/\n// }' test.data
