RSTUDIO_VER="0.98.1028"
wget http://download2.rstudio.org/rstudio-server-$RSTUDIO_VER-i386.deb --no-verbose
gdebi -n -q rstudio-server-$RSTUDIO_VER-i386.deb
rm rstudio-server-$RSTUDIO_VER-i386.deb
echo "options(repos=structure(c(CRAN='http://cran.csie.ntu.edu.tw/', omegahat='http://www.omegahat.org/R')))" > /home/vagrant/.Rprofile
su vagrant -c "Rscript -e \"dir.create(Sys.getenv('R_LIBS_USER'), recursive = TRUE)\""
su vagrant -c "Rscript -e \"install.packages('devtools', quiet = TRUE, verbose = FALSE)\""
su vagrant -c "cd ~ && wget http://cran.r-project.org/src/contrib/Archive/RJSONIO/RJSONIO_1.0-3.tar.gz --no-verbose && R CMD INSTALL RJSONIO_1.0-3.tar.gz && rm RJSONIO_1.0-3.tar.gz"
su vagrant -c "Rscript -e \"library(devtools);install_github('DSC2014Tutorial','TaiwanRUserGroup', quiet=TRUE)\""
su vagrant -c "Rscript -e \"library(devtools);install_github('RSelenium', 'johndharrison')\""
