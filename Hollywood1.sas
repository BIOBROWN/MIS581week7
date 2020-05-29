DATA HOLLYWOOD;
	INFILE "/folders/myshortcuts/C_DRIVE/SASDATA/HollywoodProfit4.csv" DLM="," FIRSTOBS=2;
	INPUT FILM $ GENRE $ LEADSTUDIO $ ROTTON ASCORE GROSS PROFIT YEAR;
	RUN;
	
PROC CORR DATA=WORK.HOLLYWOOD PEARSON SPEARMAN PLOT=MATRIX(HISTOGRAM);
     VAR ASCORE GROSS;
TITLE "Correlation of Audience Score and Worldwide Gross ";
RUN;



TITLE;FOOTNOTE;
