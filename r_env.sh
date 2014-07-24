apt-get install -y r-base
apt-get install -y gdebi-core libapparmor1
RSTUDIO_VER="0.98.977"
wget http://download2.rstudio.org/rstudio-server-$RSTUDIO_VER-amd64.deb --no-verbose
gdebi -n -q rstudio-server-$RSTUDIO_VER-amd64.deb
rm rstudio-server-$RSTUDIO_VER-amd64.deb
echo "options(repos=structure(c(CRAN='http://cran.csie.ntu.edu.tw/', omegahat='http://www.omegahat.org/R')))" > /home/vagrant/.Rprofile
su vagrant -c "Rscript -e \"dir.create(Sys.getenv('R_LIBS_USER'), recursive = TRUE)\""
su vagrant -c "Rscript -e \"install.packages('devtools', quiet=FALSE, verbose=TRUE)\""
