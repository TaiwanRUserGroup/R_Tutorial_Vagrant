RSTUDIO_VER="0.98.977"
RPKG_LIST="bitops RCurl httr digest memoise whisker stringr evaluate devtools"
wget http://download2.rstudio.org/rstudio-server-$RSTUDIO_VER-amd64.deb --no-verbose
gdebi -n -q rstudio-server-$RSTUDIO_VER-amd64.deb
rm rstudio-server-$RSTUDIO_VER-amd64.deb
echo "options(repos=structure(c(CRAN='http://cran.csie.ntu.edu.tw/', omegahat='http://www.omegahat.org/R')))" > /home/vagrant/.Rprofile
su vagrant -c "Rscript -e \"dir.create(Sys.getenv('R_LIBS_USER'), recursive = TRUE)\""
for pkg in $RPKG_LIST
do
  su vagrant -c "Rscript -e \"download.packages('$pkg', destdir='/home/vagrant', quiet = TRUE)\""
  su vagrant -c "cd ~ && R CMD INSTALL $pkg_*.tar.gz"
  su vagrant -c "cd ~ && rm $pkg_*.tar.gz"
done
