cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-liver-disease-cirrho---secondary:
    run: ccu002_01-liver-disease-cirrho---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  extrahepatic-ccu002_01-liver-disease---secondary:
    run: extrahepatic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-cirrho---secondary/output
  nonalcoholic-ccu002_01-liver-disease---secondary:
    run: nonalcoholic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: extrahepatic-ccu002_01-liver-disease---secondary/output
  ccu002---secondary:
    run: ccu002---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: nonalcoholic-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-abscess---secondary:
    run: ccu002_01-liver-disease-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002---secondary/output
  ccu002_01-liver-disease-hepatitis---secondary:
    run: ccu002_01-liver-disease-hepatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-abscess---secondary/output
  ccu002_01-liver-disease-operation---secondary:
    run: ccu002_01-liver-disease-operation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-hepatitis---secondary/output
  cystic-ccu002_01-liver-disease---secondary:
    run: cystic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-operation---secondary/output
  fatty-ccu002_01-liver-disease---secondary:
    run: fatty-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cystic-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-rejection---secondary:
    run: ccu002_01-liver-disease-rejection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: fatty-ccu002_01-liver-disease---secondary/output
  viral-ccu002_01-liver-disease---secondary:
    run: viral-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-rejection---secondary/output
  infectious-ccu002_01-liver-disease---secondary:
    run: infectious-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: viral-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-varice---secondary:
    run: ccu002_01-liver-disease-varice---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: infectious-ccu002_01-liver-disease---secondary/output
  chronic-ccu002_01-liver-disease---secondary:
    run: chronic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-varice---secondary/output
  ccu002_01-liver-disease-banding---secondary:
    run: ccu002_01-liver-disease-banding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: chronic-ccu002_01-liver-disease---secondary/output
  oesophageal-ccu002_01-liver-disease---secondary:
    run: oesophageal-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-banding---secondary/output
  ccu002_01-liver-disease-transplantation---secondary:
    run: ccu002_01-liver-disease-transplantation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: oesophageal-ccu002_01-liver-disease---secondary/output
  congenital-ccu002_01-liver-disease---secondary:
    run: congenital-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-transplantation---secondary/output
  primary-ccu002_01-liver-disease---secondary:
    run: primary-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: congenital-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-bleeding---secondary:
    run: ccu002_01-liver-disease-bleeding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: primary-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-sclerotherapy---secondary:
    run: ccu002_01-liver-disease-sclerotherapy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-bleeding---secondary/output
  ccu002_01-liver-disease-atresia---secondary:
    run: ccu002_01-liver-disease-atresia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-sclerotherapy---secondary/output
  active-ccu002_01-liver-disease---secondary:
    run: active-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-atresia---secondary/output
  ccu002_01-liver-disease-exploration---secondary:
    run: ccu002_01-liver-disease-exploration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: active-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-oesophagoscopy---secondary:
    run: ccu002_01-liver-disease-oesophagoscopy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-exploration---secondary/output
  ccu002_01-liver-disease-balloon---secondary:
    run: ccu002_01-liver-disease-balloon---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-oesophagoscopy---secondary/output
  rigid-ccu002_01-liver-disease---secondary:
    run: rigid-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-balloon---secondary/output
  ccu002_01-liver-disease-ligation---secondary:
    run: ccu002_01-liver-disease-ligation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rigid-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-childh---secondary:
    run: ccu002_01-liver-disease-childh---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-ligation---secondary/output
  persistent-ccu002_01-liver-disease---secondary:
    run: persistent-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-childh---secondary/output
  ccu002_01-liver-disease-compensation---secondary:
    run: ccu002_01-liver-disease-compensation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: persistent-ccu002_01-liver-disease---secondary/output
  orthotopic-ccu002_01-liver-disease---secondary:
    run: orthotopic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-compensation---secondary/output
  lobular-ccu002_01-liver-disease---secondary:
    run: lobular-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: orthotopic-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-oesophagu---secondary:
    run: ccu002_01-liver-disease-oesophagu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lobular-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-damage---secondary:
    run: ccu002_01-liver-disease-damage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-oesophagu---secondary/output
  florid-ccu002_01-liver-disease---secondary:
    run: florid-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-damage---secondary/output
  fibreoptic-ccu002_01-liver-disease---secondary:
    run: fibreoptic-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: florid-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-specified---secondary:
    run: ccu002_01-liver-disease-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: fibreoptic-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-absence---secondary:
    run: ccu002_01-liver-disease-absence---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-specified---secondary/output
  portal-ccu002_01-liver-disease---secondary:
    run: portal-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-absence---secondary/output
  ccu002_01-liver-disease-transplant---secondary:
    run: ccu002_01-liver-disease-transplant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: portal-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-alagille---secondary:
    run: ccu002_01-liver-disease-alagille---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-transplant---secondary/output
  hepatorenal-ccu002_01-liver-disease---secondary:
    run: hepatorenal-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-alagille---secondary/output
  ccu002_01-liver-disease-fibrosis---secondary:
    run: ccu002_01-liver-disease-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: hepatorenal-ccu002_01-liver-disease---secondary/output
  ccu002_01-liver-disease-sclerosis---secondary:
    run: ccu002_01-liver-disease-sclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-fibrosis---secondary/output
  ccu002_01-liver-disease-failure---secondary:
    run: ccu002_01-liver-disease-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-sclerosis---secondary/output
  acute-ccu002_01-liver-disease---secondary:
    run: acute-ccu002_01-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ccu002_01-liver-disease-failure---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: acute-ccu002_01-liver-disease---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
