###
# for new design, based on the old version.
###

sed -i -e "s/\par//"  publications.bib

#major
type=major
bib2bib -oc $type -ob $type.bib -c 'pubtype="major"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html

#Software
type=software
bib2bib -oc $type -ob $type.bib -c 'pubtype="software"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


#Book
type=Book
bib2bib -oc $type -ob $type.bib -c 'pubtype="Book"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


# #proceedings
type=proceedings
bib2bib -oc $type -ob $type.bib -c 'pubtype="proceedings"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


# #minor
type=minor
bib2bib -oc $type -ob $type.bib -c 'pubtype="minor"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html



# #International presentations
type=Int-presentation
bib2bib -oc $type -ob $type.bib -c 'pubtype="Int-presentation"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


# #National presentations
type=Nat-presentation
bib2bib -oc $type -ob $type.bib -c 'pubtype="Nat-presentation"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


# #Other presentations
type=Other-presentation
bib2bib -oc $type -ob $type.bib -c 'pubtype="Other-presentation"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html


# #reports
type=report
bib2bib -oc $type -ob $type.bib -c 'pubtype="report"' publications.bib
bibtex2html -nobibsource -nodoc  -nokeys -s unsrtabb  -o $type -citefile $type $type.bib
sed -i -f pub_cleanup.sed $type.html



gtml projekt.gtp
cp publications.html ../






# ######
# # generate a full one for me
# ######
# bib2bib -oc auto_generated/full -ob auto_generated/full.bib ../../tekster/CV_og_lignende/publications.bib

# bibtex2html  -nf reprint reprint -nf preprint preprint -nf presentation presentation -nf extra extra -nodoc -nobibsource  -s unsrtabb -o auto_generated/full -citefile auto_generated/full auto_generated/full.bib


