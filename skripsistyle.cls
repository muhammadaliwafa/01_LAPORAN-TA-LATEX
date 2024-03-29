%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%     filename  = "skripsistyle.cls",
%     version   = "1.0.0",
%     authors   = "Ade Irawan",
%     email     = "adeirawan@universitaspertamina.ac.id"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  2020/01/06   Created  Ade
%  2020/02/05   V1       Ade
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{skripsistyle}

\LoadClass[a4paper, openany, oneside, 11pt]{book}     

\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{tocloft}[2003/09/26]

\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\usepackage{caption} \captionsetup{labelsep=period}

% \ifthenelse{\boolean{up@draft}}%
% {}%         
% {% Setting Background
% }%

%------------------------------------------------------------
%Redefine caption names
%------------------------------------------------------------
\renewcommand\listfigurename{DAFTAR GAMBAR}%
\renewcommand\listtablename{DAFTAR TABEL}%
\renewcommand\partname{BAGIAN}%
\renewcommand\chaptername{BAB}%
\renewcommand\appendixname{LAMPIRAN}%
\renewcommand\bibname{DAFTAR PUSTAKA}%
\renewcommand\indexname{Indek}%
\renewcommand\tablename{Tabel}%
\renewcommand{\contentsname}{DAFTAR ISI}
\renewcommand{\figurename}{Gambar}%

\newenvironment{front}
{%---title page layouts
\newgeometry{left=3cm, right=2.5cm, top=2.5cm} % DON'T CHANGE !
\setlength{\parindent}{0cm}
%\linespread{0.6} 
}

\newenvironment{mytabular}
  {\trivlist\item
   \tabularx{1.5\textwidth}{XX}}
  {\endtabularx\endtrivlist}

\newenvironment{mytabularx}
  {\trivlist\item
  	\setlength{\extrarowheight}{6pt}
   \tabularx{\textwidth}{lcX}}
  {\endtabularx\endtrivlist}

\newcommand{\row}[3]{#1&#2&#3\\}

%------------------------------------------------------------
% Redefine All Information
%------------------------------------------------------------

\newcommand{\up@title}{}
\newcommand{\up@subtitle}{}
\renewcommand{\title}[2]{
	\renewcommand{\up@title}{#1}
        \renewcommand{\up@subtitle}{#2}
}

\newcommand{\up@titleeng}{}
\newcommand{\up@subtitleeng}{}
\providecommand{\titleeng}[2]{
	\renewcommand{\up@titleeng}{#1}
        \renewcommand{\up@subtitleeng}{#2}
}

\newcommand{\up@author}{}
\newcommand{\up@NIM}{}
\renewcommand{\author}[2]{
	\renewcommand{\up@author}{#1}
	\renewcommand{\up@NIM}{#2}
}

\newcommand{\up@fakultas}{}
\providecommand{\fakultas}[1]{\renewcommand{\up@fakultas}{#1}}

\newcommand{\up@prodi}{}
\providecommand{\prodi}[1]{\renewcommand{\up@prodi}{#1}}

\newcommand{\up@kaprodi}{}
\newcommand{\up@nipkaprodi}{}
\providecommand{\kaprodi}[2]{
	\renewcommand{\up@kaprodi}{#1}
	\renewcommand{\up@nipkaprodi}{#2}	
	}

\newcommand{\up@pembimbingsatu}{}
\newcommand{\up@nippembimbingsatu}{}
\providecommand{\pembimbingsatu}[2]{
	\renewcommand{\up@pembimbingsatu}{#1}
	\renewcommand{\up@nippembimbingsatu}{#2}	
	}

\newcommand{\up@pembimbingdua}{}
\newcommand{\up@nippembimbingdua}{}
\providecommand{\pembimbingdua}[2]{
	\renewcommand{\up@pembimbingdua}{#1}
	\renewcommand{\up@nippembimbingdua}{#2}	
	}

%\newcommand{\up@pengujisatu}{}
%\newcommand{\up@nippengujisatu}{}
%\providecommand{\pengujisatu}[2]{
%	\renewcommand{\up@pengujisatu}{#1}
%	\renewcommand{\up@nippengujisatu}{#2}	
%	}
%
%\newcommand{\up@pengujidua}{}
%\newcommand{\up@nippengujidua}{}
%\providecommand{\pengujidua}[2]{
%	\renewcommand{\up@pengujidua}{#1}
%	\renewcommand{\up@nippengujidua}{#2}	
%	}

\newcommand{\up@tgllulus}{}
\newcommand{\up@bulantahun}{}
\newcommand{\up@tahun}{}
\providecommand{\tgllulus}[3]{
	\renewcommand{\up@tgllulus}{#1}
	\renewcommand{\up@bulantahun}{#2}
	\renewcommand{\up@tahun}{#3}
	}

\newcommand{\up@tglpengesahan}{}
\providecommand{\tglpengesahan}[1]{\renewcommand{\up@tglpengesahan}{#1}}

\newcommand{\up@tglpernyataan}{}
\providecommand{\tglpernyataan}[1]{\renewcommand{\up@tglpernyataan}{#1}}

%------------------------------------------------------------
% Cover Page
%------------------------------------------------------------
\newcommand{\upcoverpage}{%
\thispagestyle{empty}%
\begin{front}
\begin{center}
	\null
	%\vskip 1.55cm
	\LARGE \bf \MakeUppercase{\up@title} \par
	{\linespread{0.5} 
        \Large \bf \MakeUppercase{\up@subtitle} \par
        \vskip 3cm
        \Large \bf LAPORAN TUGAS AKHIR \par        
    \vskip 3cm
    {\large \bf Oleh: \par
               \up@author \par
               \up@NIM \par }
    \vskip 3cm               
    \includegraphics[scale=0.74]{LogoUP.png}                     
    \vfill
	{\Large \bf FAKULTAS \MakeUppercase{\up@fakultas} \par%
	            PROGRAM STUDI \MakeUppercase{\up@prodi} \par%
	            UNIVERSITAS PERTAMINA \par%
	            \MakeUppercase{\up@tahun} \par}	 
	}                       
\end{center}
\end{front}

%------------------------------------------------------------
% Sampul dalam
%------------------------------------------------------------
\newpage
\thispagestyle{empty}%
\begin{front}
\begin{center}
	\null
	%\vskip 1.55cm
	\LARGE \bf \MakeUppercase{\up@title} \par
	{\linespread{0.5} 
        \Large \bf \up@subtitle \par
        \vskip 3cm
        \Large \bf LAPORAN TUGAS AKHIR \par        
    \vskip 3cm
    {\large \bf Oleh: \par
               \up@author \par
               \up@NIM \par }
    \vskip 3cm               
    \includegraphics[scale=0.74]{LogoUP.png}                     
    \vfill
	{\Large \bf FAKULTAS \MakeUppercase{\up@fakultas} \par%
	            PROGRAM STUDI \MakeUppercase{\up@prodi} \par%
	            UNIVERSITAS PERTAMINA \par%
	            \MakeUppercase{\up@tahun} \par}	 
	}                       
\end{center}
\end{front}
}

%------------------------------------------------------------
% Lembar Pengesahan
%------------------------------------------------------------
\newcommand{\lembarpengesahan}{%
\newpage
\thispagestyle{empty}%
\begin{front}
\begin{center}		
	{\Large \bf LEMBAR PENGESAHAN} \par
	\vskip 1em
	{\large
	\begin{mytabularx}
	    Judul Tugas Akhir                & : & \up@title \hspace{1pt} \up@subtitle \\%
		Nama Mahasiswa                   & : & \up@author \\%
		Nomor Induk Mahasiswa            & : & \up@NIM \\%
	    Program Studi                    & : & \up@prodi \\%
		Fakultas                         & : & \up@fakultas \\%
		Tanggal Lulus Sidang Tugas Akhir & : & \up@tgllulus \hspace{1pt} \up@bulantahun%
	\end{mytabularx}
	\vskip 1em
	Jakarta, \up@tglpengesahan \par
	MENGESAHKAN \par
	
%	\begin{mytabular}
%		Pembimbing I & Pembimbing II \\%
%		& \\%
%		& \\%
%		& \\%
%		& \\%
%		& \\%
%		\up@pembimbingsatu &  \up@pembimbingdua \\%	 
%		NIP.\up@nippembimbingsatu & NIP.\up@nippembimbingdua
%	\end{mytabular}	
	
		
	\begin{mytabularx}
		\row{Pembimbing I}{: \,Nama}{: \up@pembimbingsatu}
		\row{}{\,\,NIP}{: \up@nippembimbingsatu}
		\row{Pembimbing II}{: \,Nama}{: \up@pembimbingdua}
		\row{}{\,\,NIP}{: \up@nippembimbingdua}
%		\row{Penguji I}{: Nama}{: \up@pengujisatu}
%		\row{}{\,\, NIP}{: \up@nippengujisatu}
%		\row{Penguji II}{: Nama}{: \up@pengujidua}
%		\row{}{\,\, NIP}{: \up@nippengujidua}
	\end{mytabularx}
	\vfill
	MENGETAHUI, \par
	Ketua Program Studi \par
	\vskip 3cm
	\up@kaprodi \par
	NIP. \up@nipkaprodi	
}	
\end{center}
\end{front}
}

%------------------------------------------------------------
% Lembar Pernyataan
%------------------------------------------------------------
\newcommand{\lembarpernyataan}{%
\newpage
\onehalfspacing
\thispagestyle{empty}%
\begin{front}
	{\Large \bf \begin{center} LEMBAR PERNYATAAN \end{center}} \par
	{\large
	Dengan ini saya menyatakan bahwa Tugas Akhir berjudul \up@title \hspace{1pt} \up@subtitle \hspace{1pt} ini adalah benar-benar merupakan hasil karya saya sendiri dan tidak mengandung materi yang ditulis oleh orang lain kecuali telah dikutip sebagai referensi yang sumbernya telah dituliskan secara jelas sesuai dengan kaidah penulisan karya ilmiah. \par
Apabila dikemudian hari ditemukan adanya kecurangan dalam karya ini, saya bersedia menerima sanksi dari Universitas Pertamina sesuai dengan peraturan yang berlaku. \par
Demi pengembangan ilmu pengetahuan, saya menyetujui untuk memberikan kepada Universitas Pertamina hak bebas royalti noneksklusif ({\it non-exclusive royalty-free right}) atas Tugas Akhir ini beserta perangkat yang ada. Dengan hak bebas royalti noneksklusif ini Universitas Pertamina berhak menyimpan, mengalih media/format-kan, mengelola dalam bentuk pangkatan data ({\it database}), merawat, dan mempublikasikan Tugas Akhir saya selama tetap mencantumkan nama saya sebagai penulis/pencipta dan sebagai pemilik Hak Cipta.\par
Demikian pernyataan ini saya buat dengan sebenarnya \par
	\vskip 3cm
	\hspace{10cm} Jakarta, \up@tglpernyataan \par
	\hspace{9.8cm} Yang membuat pernyataan,
	\vskip 3cm
	\hspace{10cm} \up@author
}	
\end{front}
\newpage
\addtocounter{page}{-1}
} 

%------------------------------------------------------------
% Abstrak
%------------------------------------------------------------
\newcommand{\abstrakind}[1]{%
\setcounter{page}{1}
\phantomsection \addcontentsline{toc}{chapter}{ABSTRAK}
\pagestyle{plain}
\begin{front}
\chapter*{\Large \bf ABSTRAK}
    {\large \begin{singlespace}
        \vskip 1em
        \noindent {\bf{\up@author}}. {\bf{\up@NIM}}. \up@title. \par
        \input{#1}
    \end{singlespace}}
\end{front}    
\newpage
\thispagestyle{empty}%
}

\newcommand{\abstrakeng}[1]{
\phantomsection \addcontentsline{toc}{chapter}{ABSTRACT}
\pagestyle{plain}
\begin{front}
\chapter*{\Large \bf ABSTRACT}
    {\large \begin{singlespace}
        \vskip 1em
        \noindent {\bf{\up@author}}. {\bf{\up@NIM}}. \textit{\up@titleeng}. \par
        \input{#1}
    \end{singlespace}}
\end{front}    
\newpage
\thispagestyle{empty}%
}

%------------------------------------------------------------
% Kata Pengantar
%------------------------------------------------------------
\newcommand{\katapengantar}[1]{
\phantomsection \addcontentsline{toc}{chapter}{KATA PENGANTAR}
\pagestyle{plain}
\begin{front}
\chapter*{\Large \bf KATA PENGANTAR}
    {\large \begin{singlespace}
        \vskip 1em
        \input{#1}
    \end{singlespace}}
\end{front}    
}

%------------------------------------------------------------
% Daftar Isi
%------------------------------------------------------------
\newcommand{\daftarisi}{%
\begin{singlespace}
	\chapter*{\contentsname
	\@mkboth{%
	\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
	 \phantomsection\addcontentsline{toc}{chapter}{DAFTAR ISI} \@starttoc{toc}%
\end{singlespace}
}

\newlength{\mylength}% a "scratch" length
\newlength{\mylonglength}% another "scratch" length
% Format chapter entries so that the chapter name goes on the same line
% as "Chapter #".
\renewcommand{\cftchappresnum}{BAB }
\settowidth{\mylength}{\cftchappresnum\cftchapaftersnum}% extra space
\addtolength{\cftchapnumwidth}{\mylength} % add the extra space

\newcommand{\mylongname}{LAMPIRAN }% the longest chapter number header
\settowidth{\mylonglength}{\mylongname\cftchapaftersnum}% extra space

\newcommand{\Appendix}[1]{%
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{-\mylength}}
\addtocontents{toc}{\string\renewcommand{\string\cftchappresnum}{LAMPIRAN }}
\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{\mylonglength}}
%% BUG !! ?? 
\addtocontents{toc}{\string\renewcommand{\string\cftchappresnum}{LAMPIRAN }}
\chapter{#1}
}

%------------------------------------------------------------
% Daftar Tabel
%------------------------------------------------------------
\renewcommand{\cfttabpresnum}{Tabel\ }
\newlength{\mylent}
\settowidth{\mylent}{\cfttabpresnum}
\setlength{\cfttabnumwidth}{\dimexpr\mylent+1.5em}

\newcommand{\daftartabel}{%
\begin{singlespace}
	\chapter{\listtablename}%
	 \phantomsection \@starttoc{lot}%
\end{singlespace}
\clearpage
}

%------------------------------------------------------------
% Daftar Gambar
%------------------------------------------------------------
\renewcommand{\cftfigpresnum}{Gambar\ }
\newlength{\mylenf}
\settowidth{\mylenf}{\cftfigpresnum}
\setlength{\cfttabnumwidth}{\dimexpr\mylenf+1.5em}
\setlength{\cftfignumwidth}{\dimexpr\mylenf+2em}

\newcommand{\daftargambar}{%
\begin{singlespace}
	\chapter{\listfigurename}%
	\phantomsection \@starttoc{lof}%
\end{singlespace}
\clearpage
}

%--------------------- end of file ---------------------------------------
