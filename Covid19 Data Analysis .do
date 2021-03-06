clear
set more off

import delimited "/Users/robschuldt/Downloads/covid_set.csv"

drop if county =="Statewide Unallocated" 
drop if county ==  "New York City Unallocated"



local cases entry_1_confirmed entry_2_confirmed entry_3_confirmed entry_4_confirmed entry_5_confirmed entry_6_confirmed entry_7_confirmed entry_8_confirmed entry_9_confirmed entry_10_confirmed entry_11_confirmed entry_12_confirmed entry_13_confirmed entry_14_confirmed entry_15_confirmed entry_16_confirmed entry_17_confirmed entry_18_confirmed entry_19_confirmed entry_20_confirmed entry_21_confirmed entry_22_confirmed entry_23_confirmed entry_24_confirmed entry_25_confirmed entry_26_confirmed entry_27_confirmed entry_28_confirmed entry_29_confirmed entry_30_confirmed entry_31_confirmed entry_32_confirmed entry_33_confirmed entry_34_confirmed entry_35_confirmed entry_36_confirmed entry_37_confirmed entry_38_confirmed entry_39_confirmed entry_40_confirmed entry_41_confirmed entry_42_confirmed entry_43_confirmed entry_44_confirmed entry_45_confirmed entry_46_confirmed entry_47_confirmed entry_48_confirmed entry_49_confirmed entry_50_confirmed entry_51_confirmed entry_52_confirmed entry_53_confirmed entry_54_confirmed entry_55_confirmed entry_56_confirmed entry_57_confirmed entry_58_confirmed entry_59_confirmed entry_60_confirmed entry_61_confirmed entry_62_confirmed entry_63_confirmed entry_64_confirmed entry_65_confirmed entry_66_confirmed entry_67_confirmed entry_68_confirmed entry_69_confirmed entry_70_confirmed entry_71_confirmed entry_72_confirmed entry_73_confirmed entry_74_confirmed entry_75_confirmed entry_76_confirmed entry_77_confirmed entry_78_confirmed entry_79_confirmed entry_80_confirmed entry_81_confirmed
local deaths entry_0_death entry_1_death entry_2_death entry_3_death entry_4_death entry_5_death entry_6_death entry_7_death entry_8_death entry_9_death entry_10_death entry_11_death entry_12_death entry_13_death entry_14_death entry_15_death entry_16_death entry_17_death entry_18_death entry_19_death entry_20_death entry_21_death entry_22_death entry_23_death entry_24_death entry_25_death entry_26_death entry_27_death entry_28_death entry_29_death entry_30_death entry_31_death entry_32_death entry_33_death entry_34_death entry_35_death entry_36_death entry_37_death entry_38_death entry_39_death entry_40_death entry_41_death entry_42_death entry_43_death entry_44_death entry_45_death entry_46_death entry_47_death entry_48_death entry_49_death entry_50_death entry_51_death entry_52_death entry_53_death entry_54_death entry_55_death entry_56_death entry_57_death entry_58_death entry_59_death entry_60_death entry_61_death entry_62_death entry_63_death entry_64_death entry_65_death entry_66_death entry_67_death entry_68_death entry_69_death entry_70_death entry_71_death entry_72_death entry_73_death entry_74_death entry_75_death entry_76_death entry_77_death entry_78_death entry_79_death entry_80_death entry_81_death


foreach var in `cases' {
bysort countyfips: replace `var' = (`var'/popul)*100
}
foreach var in `deaths' {
bysort countyfips: replace `var' = (`var'/popul)*100
}

