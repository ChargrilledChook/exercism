export const translate = (rna) => {
  if (!rna) return [];

  let codons = rna.match(/[\S]{1,3}/g);
  let res = [];
  for(let i = 0; i < codons.length; i++) {
    let elt = codons[i]
    if (stops.includes(elt)) {
      break;
    } else if(proteins[elt]) {
      res.push(proteins[elt]);
    } else {
      throw 'Invalid codon';
    }
  }
  return res;
};

export const proteins = {
  AUG : 'Methionine',
  UUU : 'Phenylalanine',
  UUC : 'Phenylalanine',
  UCU : 'Serine',
  UCC : 'Serine',
  UCA : 'Serine',
  UCG : 'Serine',
  UUG : 'Leucine',
  UUA : 'Leucine',
  UAU : 'Tyrosine',
  UAC : 'Tyrosine',
  UGU : 'Cysteine',
  UGC : 'Cysteine',
  UGG : 'Tryptophan',
};

export const stops = ['UAA', 'UAG', 'UGA'];
