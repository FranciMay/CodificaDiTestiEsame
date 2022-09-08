# Codifica Di Testi (2021/22)
Il progetto contenuto in questo <i>repository</i> è stato realizzato per l'esame di <b>Codifica di Testi</b> con il professor <i>Angelo Mario Del Grosso</i> dagli studenti del <b>Corso di Laurea</b> in <b>Informatica Umanistica</b> (triennale):

- <i>Michele Andreoli</i> (mat. 596587)

- <i>Francesco Maggio</i> (mat. 605001) 

Sono state codificate due pagine di manoscritto, in particolare i fogli 21 e 22 - prolusioni 3

Il progetto è stato validato con Xerces con il seguente comando:

java -cp "tools/Xerces-J-bin.2.12.1/xerces-2_12_1/" dom.Counter -v ProgettoAndreoliMaggio.xml

I file XML e XSL sono stati trasformati con Saxon-HE 10.3 in un file HTML "<i>ProgettoOutput.html</i>" con il seguente comando:

java net.sf.saxon.Transform -s:merge.xml -xsl:merge.xsl -o:ProgettoOutput.html