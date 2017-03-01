\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{OTLletter}[2014/08/16 Example LaTeX class]
\LoadClass[11pt,letterpaper,roman]{moderncv}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[scale=0.75]{geometry}
\DeclareOption{\moderncvstyle{classic}}
\DeclareOption{\moderncvcolor{green}}
\DeclareOption{\name{Jeremy}{Mark Ottley}}
\DeclareOption{\address{2930 N. Calvert St.}{Baltimore, MD}{}}
\DeclareOption{\phone[mobile]{410.336.8333}}
\DeclareOption{\email{jeremy.ottley@gmail.com}}
\date{\today}

