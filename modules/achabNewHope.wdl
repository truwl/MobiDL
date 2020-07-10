task achabNewHope {

 File AchabExe
 File OutMpa
 String? OutPhenolyzer
 String CustomVCF
 String CnvGeneList
 String FilterList  String GenesOfInterest
 String FatherSample
 String CaseSample
 String MotherSample
 Float AllelicFrequency
 Float MozaicRate
 Float MozaicDP
 String WorkflowType
 String CheckTrio
 String CustomInfo
 String SampleID
 String OutDir
 String PerlPath
 String Affected
 String FavouriteGeneRef
 String FilterCustomVCF
 String FilterCustomVCFRegex
 #runtime attributes
 Int Cpu
 Int Memory


 command <<<
  "${PerlPath}" "${AchabExe}" \
  --vcf "${OutMpa}" \
  --outDir "${OutDir}${SampleID}/${WorkflowType}/achab_excel/" \
  --outPrefix "${SampleID}" \
  --case "${CaseSample}" \
  --dad "${FatherSample}" \
  --mum "${MotherSample}" \
  ${CheckTrio} \
  --candidates "${GenesOfInterest}" \
  --phenolyzerFile "${OutPhenolyzer}" \
  --popFreqThr "${AllelicFrequency}" \
  --newHope \
  --filterList "${FilterList}" \
  --cnvGeneList "${CnvGeneList}" \
  --customVCF "${CustomVCF}" \
  --mozaicRate "${MozaicRate}" \
  --mozaicDP "${MozaicDP}" \
  --customInfoList "${CustomInfo}" \
  --affected "${Affected}" \
  --favouriteGeneRef "${FavouriteGeneRef}" \
  --filterCustomVCF "${FilterCustomVCF}" \
  --filterCustomVCFRegex "${FilterCustomVCFRegex}"
 >>>
 
 output {
  File outAchabNewHope = "${OutDir}${SampleID}/${WorkflowType}/achab_excel/${SampleID}_achab_catch_newHope.xlsx"
 }
 runtime {                                                                                                                                                                    
  cpu: "${Cpu}"
  requested_memory_mb_per_core: "${Memory}"
 }
}
