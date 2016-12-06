$pdf_previewer = 'open -a skim';
$clean_ext = 'bbl rel %R-blx.bib %R.synctex.gz';
$preview_continuous_mode = 1;
@default_files = ('*.tex');
$pdf_mode = 1;

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  } else {
   system "makeglossaries '$_[0]'";
  };
}
