count=0

for a in 0 8000 16000 24000 32000 40000 48000 56000 64000 72000 80000 88000 96000 104000 112000 120000 128000 136000 144000 152000 160000 168000 176000 184000 192000 200000 208000 216000 224000 232000 240000 248000 256000 257000
do

echo $a
echo $count

mkdir ../../md/0/$count
mkdir ../../md/0/$count/restrained

gmx trjconv -f ../../../../../../ABMD/state_by_state.demyst/in-out/in-open_20frames.in-out_496frames.xtc -s ../../../../../../ABMD/state_by_state.demyst/InOpen-InOcc/InOpen-InOcc.tpr -dump $a -o ../../md/0/$count/restrained/confout.gro


(( count++ ))

echo
echo
echo
done
