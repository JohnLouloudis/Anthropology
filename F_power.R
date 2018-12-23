measurements <- read.csv("Anthropology_lab.csv", sep=";")

types <- measurements$Measurement.type
cranium <- measurements$Cranium
calvarium <- measurements$Calvarium

cran_ind_1 <- cranium[2]*100/cranium[1]
stat_len_ind_2 <- cranium[5]*100/cranium[1]
stad_wid_3 <- cranium[5]*100/cranium[2]
trans_fro_ind_4 <- cranium[14]*100/cranium[15]
trans_ffro_ind_5 <- cranium[14]*100/cranium[2]
occipital_bone_ind_6 <- cranium[9]*100/cranium[8]
face_ind_7 <- cranium[17]*100/cranium[16]
up_face_ind_8 <- cranium[28]*100/cranium[16]
corneal_ind_9 <- cranium[32]*100/cranium[31]
nosal_ind_10 <- cranium[38]*100/cranium[37]
jaw_ind_11 <- cranium[18]*100/cranium[6]
pal_ind_12 <- cranium[42]*100/cranium[41]
ob_crfor_ind_13 <- cranium[18]*100/cranium[1]
ver_crfor_ind_14 <- cranium[28]*100/cranium[47]
trans_crfor_ind_15 <- cranium[16]*100/cranium[2]
l_jaw_ind_16 <- cranium[51]*100/cranium[40]
up_cl_ind_17 <- cranium[55]*100/cranium[54]
ncram_m_18 <- (cranium[1]+cranium[2]+cranium[5])/3
splc_m_19 <- (cranium[18]+cranium[16]+cranium[17])/3
cr_cap_20 <- cranium[1]*cranium[47]*cranium[2]/2.24

results <- c(cran_ind_1, stat_len_ind_2, stad_wid_3, 
trans_fro_ind_4, trans_ffro_ind_5, occipital_bone_ind_6, face_ind_7, up_face_ind_8, 
corneal_ind_9, nosal_ind_10, jaw_ind_11, pal_ind_12, ob_crfor_ind_13, ver_crfor_ind_14, 
trans_crfor_ind_15, l_jaw_ind_16, up_cl_ind_17 , ncram_m_18, splc_m_19 ,cr_cap_20)

res_table <- matrix(results, ncol=1)

results_cranium <- data.frame(res_table)
rn <- c("Cranial indicator", "Length-Stature indicator", "Stature-width indicator", "Transversal frontal indicator",
        "Transversal forefrontal indicator", "Occipital bone indicator", "Face indicator", "Upper face indicator",
        "Corneal indicator", "Nosal indicator", "Jaw indicator", "Palate indicator", "Oblong cranial forehead indicator",
        "Vertical cranial forehead indicator", "Transversal cranial forehead indicator", "Lower jaw indicator", 
        "Upper clade indicator", "Neurocranial measure", "Splachnocranial measure", "Cranial capacity")
row.names(results_cranium) <- rn
View(results_cranium)


as.numeric(levels(calvarium))[calvarium]

cran_ind_1 <- calvarium[2]*100/calvarium[1]
stat_len_ind_2 <- calvarium[5]*100/calvarium[1]
stad_wid_3 <- calvarium[5]*100/calvarium[2]
trans_fro_ind_4 <- calvarium[14]*100/calvarium[15]
trans_ffro_ind_5 <- calvarium[14]*100/calvarium[2]
occipital_bone_ind_6 <- calvarium[9]*100/calvarium[8]
face_ind_7 <- calvarium[17]*100/calvarium[16]
up_face_ind_8 <- calvarium[28]*100/calvarium[16]
corneal_ind_9 <- calvarium[32]*100/calvarium[31]
nosal_ind_10 <- calvarium[38]*100/calvarium[37]
jaw_ind_11 <- calvarium[18]*100/calvarium[6]
pal_ind_12 <- calvarium[42]*100/calvarium[41]
ob_crfor_ind_13 <- calvarium[18]*100/calvarium[1]
ver_crfor_ind_14 <- calvarium[28]*100/calvarium[47]
trans_crfor_ind_15 <- calvarium[16]*100/calvarium[2]
l_jaw_ind_16 <- calvarium[51]*100/calvarium[40]
up_cl_ind_17 <- calvarium[55]*100/calvarium[54]
ncram_m_18 <- (calvarium[1]+calvarium[2]+calvarium[5])/3
splc_m_19 <- (calvarium[18]+calvarium[16]+calvarium[17])/3
cr_cap_20 <- calvarium[1]*calvarium[47]*calvarium[2]/2.24

results <- c(cran_ind_1, stat_len_ind_2, stad_wid_3, 
             trans_fro_ind_4, trans_ffro_ind_5, occipital_bone_ind_6, face_ind_7, up_face_ind_8, 
             corneal_ind_9, nosal_ind_10, jaw_ind_11, pal_ind_12, ob_crfor_ind_13, ver_crfor_ind_14, 
             trans_crfor_ind_15, l_jaw_ind_16, up_cl_ind_17 , ncram_m_18, splc_m_19 ,cr_cap_20)

res_table <- matrix(results, ncol=1)

results_calvarium <- data.frame(res_table)
rn <- c("Cranial indicator", "Length-Stature indicator", "Stature-width indicator", "Transversal frontal indicator",
        "Transversal forefrontal indicator", "Occipital bone indicator", "Face indicator", "Upper face indicator",
        "Corneal indicator", "Nosal indicator", "Jaw indicator", "Palate indicator", "Oblong cranial forehead indicator",
        "Vertical cranial forehead indicator", "Transversal cranial forehead indicator", "Lower jaw indicator", 
        "Upper clade indicator", "Neurocranial measure", "Splachnocranial measure", "Cranial capacity")
row.names(results_calvarium) <- rn
View(results_calvarium)
