"= 60 Languages

" autocmd FileType py source ~/10_Activity/10_Mappings/Vim_Qiuy/
"== 60 Latex
    " use pdflatex
        let g:Tex_DefaultTargetFormat=';pdf'
        let g:Tex_MultipleCompileFormats='pdf,dvi'
        let g:Tex_CompileRule_pdf = 'mkdir -p tmp; pdflatex -output-directory tmp -interaction=nonstopmode $*; cp tmp/*.pdf .'
