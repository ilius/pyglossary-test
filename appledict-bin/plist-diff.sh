function mydiff() {
    echo "Comparing $1 with $2"
    echo
    diff $1.dictionary-plist.json $2.dictionary-plist.json
    echo "_______________________________________________________________________"
    echo
}

mydiff 006-en-oxfjord_v10.5_c0_t0 006-en-oxfjord_v10.5_c1_t0

mydiff 006-en-oxfjord_v10.6_c0_t0 006-en-oxfjord_v10.6_c0_t1
mydiff 006-en-oxfjord_v10.6_c0_t0 006-en-oxfjord_v10.6_c0_t2
mydiff 006-en-oxfjord_v10.6_c0_t0 006-en-oxfjord_v10.6_c0_t3


mydiff 006-en-oxfjord_v10.6_c1_t0 006-en-oxfjord_v10.6_c1_t1
mydiff 006-en-oxfjord_v10.6_c1_t0 006-en-oxfjord_v10.6_c1_t2
mydiff 006-en-oxfjord_v10.6_c1_t0 006-en-oxfjord_v10.6_c1_t3

mydiff 006-en-oxfjord_v10.6_c2_t0 006-en-oxfjord_v10.6_c2_t1
mydiff 006-en-oxfjord_v10.6_c2_t0 006-en-oxfjord_v10.6_c2_t2
mydiff 006-en-oxfjord_v10.6_c2_t0 006-en-oxfjord_v10.6_c2_t3

mydiff 006-en-oxfjord_v10.6_c2_t3 006-en-oxfjord_v10.11_c2_t3