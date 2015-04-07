silent filetype plugin on
syntax enable

function! SyntaxAt(lnum, col)
  return synIDattr(synID(a:lnum, a:col, 0), 'name')
endfunction

describe 'Syntax highlighting'
  before
    tabnew
    tabonly!

    silent put =[
    \   'describe ''Syntax highlighting''',
    \   '  before',
    \   '    set ignorecase',
    \   '  end',
    \   '  after',
    \   '    set ignorecase&',
    \   '  end',
    \   '  it ''highlights vspec-specific keywords''',
    \   '    Expect type(s) ==# type('''')',
    \   '    Expect type(s) not ==# type(0)',
    \   '    SKIP',
    \   '    TODO',
    \   '  end',
    \   '  context ''with a nested suite''',
    \   '    it ''is supported''',
    \   '    end',
    \   '  end',
    \   'end',
    \ ]
    1 delete _

    setfiletype vim
  end

  it 'highlights :describe properly'
    Expect SyntaxAt(1, 1) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 2) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 8) ==# 'vimVspecCommand'
    Expect SyntaxAt(1, 9) ==# ''
    Expect SyntaxAt(1, 10) ==# 'vimString'
    Expect SyntaxAt(1, 11) ==# 'vimString'
    Expect SyntaxAt(1, 12) ==# 'vimString'
    Expect SyntaxAt(1, 13) ==# 'vimString'
    Expect SyntaxAt(1, 14) ==# 'vimString'
    Expect SyntaxAt(1, 15) ==# 'vimString'
    Expect SyntaxAt(1, 16) ==# 'vimString'
    Expect SyntaxAt(1, 17) ==# 'vimString'
    Expect SyntaxAt(1, 18) ==# 'vimString'
    Expect SyntaxAt(1, 19) ==# 'vimString'
    Expect SyntaxAt(1, 20) ==# 'vimString'
    Expect SyntaxAt(1, 21) ==# 'vimString'
    Expect SyntaxAt(1, 22) ==# 'vimString'
    Expect SyntaxAt(1, 23) ==# 'vimString'
    Expect SyntaxAt(1, 24) ==# 'vimString'
    Expect SyntaxAt(1, 25) ==# 'vimString'
    Expect SyntaxAt(1, 26) ==# 'vimString'
    Expect SyntaxAt(1, 27) ==# 'vimString'
    Expect SyntaxAt(1, 28) ==# 'vimString'
    Expect SyntaxAt(1, 29) ==# 'vimString'
    Expect SyntaxAt(1, 30) ==# 'vimString'
  end

  it 'highlights :before properly'
    Expect SyntaxAt(2, 1) ==# ''
    Expect SyntaxAt(2, 2) ==# ''
    Expect SyntaxAt(2, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(2, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(2, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(2, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(2, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(2, 8) ==# 'vimVspecCommand'
  end

  it 'highlights :after properly'
    Expect SyntaxAt(5, 1) ==# ''
    Expect SyntaxAt(5, 2) ==# ''
    Expect SyntaxAt(5, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(5, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(5, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(5, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(5, 7) ==# 'vimVspecCommand'
  end

  it 'highlights :it properly'
    Expect SyntaxAt(8, 1) ==# ''
    Expect SyntaxAt(8, 2) ==# ''
    Expect SyntaxAt(8, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(8, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(8, 5) ==# ''
    Expect SyntaxAt(8, 6) ==# 'vimString'
    Expect SyntaxAt(8, 7) ==# 'vimString'
    Expect SyntaxAt(8, 8) ==# 'vimString'
    Expect SyntaxAt(8, 9) ==# 'vimString'
    Expect SyntaxAt(8, 10) ==# 'vimString'
    Expect SyntaxAt(8, 11) ==# 'vimString'
    Expect SyntaxAt(8, 12) ==# 'vimString'
    Expect SyntaxAt(8, 13) ==# 'vimString'
    Expect SyntaxAt(8, 14) ==# 'vimString'
    Expect SyntaxAt(8, 15) ==# 'vimString'
    Expect SyntaxAt(8, 16) ==# 'vimString'
    Expect SyntaxAt(8, 17) ==# 'vimString'
    Expect SyntaxAt(8, 18) ==# 'vimString'
    Expect SyntaxAt(8, 19) ==# 'vimString'
    Expect SyntaxAt(8, 20) ==# 'vimString'
    Expect SyntaxAt(8, 21) ==# 'vimString'
    Expect SyntaxAt(8, 22) ==# 'vimString'
    Expect SyntaxAt(8, 23) ==# 'vimString'
    Expect SyntaxAt(8, 24) ==# 'vimString'
    Expect SyntaxAt(8, 25) ==# 'vimString'
    Expect SyntaxAt(8, 26) ==# 'vimString'
    Expect SyntaxAt(8, 27) ==# 'vimString'
    Expect SyntaxAt(8, 28) ==# 'vimString'
    Expect SyntaxAt(8, 29) ==# 'vimString'
    Expect SyntaxAt(8, 30) ==# 'vimString'
    Expect SyntaxAt(8, 31) ==# 'vimString'
    Expect SyntaxAt(8, 32) ==# 'vimString'
    Expect SyntaxAt(8, 33) ==# 'vimString'
    Expect SyntaxAt(8, 34) ==# 'vimString'
    Expect SyntaxAt(8, 35) ==# 'vimString'
    Expect SyntaxAt(8, 36) ==# 'vimString'
    Expect SyntaxAt(8, 37) ==# 'vimString'
    Expect SyntaxAt(8, 38) ==# 'vimString'
    Expect SyntaxAt(8, 39) ==# 'vimString'
    Expect SyntaxAt(8, 40) ==# 'vimString'
    Expect SyntaxAt(8, 41) ==# 'vimString'
  end

  it 'highlights :Expect properly'
    Expect SyntaxAt(9, 1) ==# ''
    Expect SyntaxAt(9, 2) ==# ''
    Expect SyntaxAt(9, 3) ==# ''
    Expect SyntaxAt(9, 4) ==# ''
    Expect SyntaxAt(9, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 8) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 9) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 10) ==# 'vimVspecCommand'
    Expect SyntaxAt(9, 11) ==# ''
    Expect SyntaxAt(9, 12) ==# 'vimFuncName'
    Expect SyntaxAt(9, 13) ==# 'vimFuncName'
    Expect SyntaxAt(9, 14) ==# 'vimFuncName'
    Expect SyntaxAt(9, 15) ==# 'vimFuncName'
    Expect SyntaxAt(9, 16) ==# 'vimParenSep'
    Expect SyntaxAt(9, 17) ==# 'vimOperParen'
    Expect SyntaxAt(9, 18) ==# 'vimParenSep'
    Expect SyntaxAt(9, 19) ==# ''
    Expect SyntaxAt(9, 20) ==# 'vimOper'
    Expect SyntaxAt(9, 21) ==# 'vimOper'
    Expect SyntaxAt(9, 22) ==# 'vimOper'
    Expect SyntaxAt(9, 23) ==# ''
    Expect SyntaxAt(9, 24) ==# 'vimFuncName'
    Expect SyntaxAt(9, 25) ==# 'vimFuncName'
    Expect SyntaxAt(9, 26) ==# 'vimFuncName'
    Expect SyntaxAt(9, 27) ==# 'vimFuncName'
    Expect SyntaxAt(9, 28) ==# 'vimParenSep'
    Expect SyntaxAt(9, 29) ==# 'vimString'
    Expect SyntaxAt(9, 30) ==# 'vimString'
    Expect SyntaxAt(9, 31) ==# 'vimParenSep'

    Expect SyntaxAt(10, 1) ==# ''
    Expect SyntaxAt(10, 2) ==# ''
    Expect SyntaxAt(10, 3) ==# ''
    Expect SyntaxAt(10, 4) ==# ''
    Expect SyntaxAt(10, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 8) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 9) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 10) ==# 'vimVspecCommand'
    Expect SyntaxAt(10, 11) ==# ''
    Expect SyntaxAt(10, 12) ==# 'vimFuncName'
    Expect SyntaxAt(10, 13) ==# 'vimFuncName'
    Expect SyntaxAt(10, 14) ==# 'vimFuncName'
    Expect SyntaxAt(10, 15) ==# 'vimFuncName'
    Expect SyntaxAt(10, 16) ==# 'vimParenSep'
    Expect SyntaxAt(10, 17) ==# 'vimOperParen'
    Expect SyntaxAt(10, 18) ==# 'vimParenSep'
    Expect SyntaxAt(10, 19) ==# ''
    Expect SyntaxAt(10, 20) ==# 'vimVspecOperator'
    Expect SyntaxAt(10, 21) ==# 'vimVspecOperator'
    Expect SyntaxAt(10, 22) ==# 'vimVspecOperator'
    Expect SyntaxAt(10, 23) ==# ''
    Expect SyntaxAt(10, 24) ==# 'vimOper'
    Expect SyntaxAt(10, 25) ==# 'vimOper'
    Expect SyntaxAt(10, 26) ==# 'vimOper'
    Expect SyntaxAt(10, 27) ==# ''
    Expect SyntaxAt(10, 28) ==# 'vimFuncName'
    Expect SyntaxAt(10, 29) ==# 'vimFuncName'
    Expect SyntaxAt(10, 30) ==# 'vimFuncName'
    Expect SyntaxAt(10, 31) ==# 'vimFuncName'
    Expect SyntaxAt(10, 32) ==# 'vimParenSep'
    Expect SyntaxAt(10, 33) ==# 'vimNumber'
    Expect SyntaxAt(10, 34) ==# 'vimParenSep'
  end

  it 'highlights :SKIP and :TODO properly'
    Expect SyntaxAt(11, 1) ==# ''
    Expect SyntaxAt(11, 2) ==# ''
    Expect SyntaxAt(11, 3) ==# ''
    Expect SyntaxAt(11, 4) ==# ''
    Expect SyntaxAt(11, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(11, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(11, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(11, 8) ==# 'vimVspecCommand'

    Expect SyntaxAt(12, 1) ==# ''
    Expect SyntaxAt(12, 2) ==# ''
    Expect SyntaxAt(12, 3) ==# ''
    Expect SyntaxAt(12, 4) ==# ''
    Expect SyntaxAt(12, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(12, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(12, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(12, 8) ==# 'vimVspecCommand'
  end

  it 'highlights :end properly'
    Expect SyntaxAt(13, 1) ==# ''
    Expect SyntaxAt(13, 2) ==# ''
    Expect SyntaxAt(13, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(13, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(13, 5) ==# 'vimVspecCommand'

    Expect SyntaxAt(18, 1) ==# 'vimVspecCommand'
    Expect SyntaxAt(18, 2) ==# 'vimVspecCommand'
    Expect SyntaxAt(18, 3) ==# 'vimVspecCommand'
  end

  it 'highlights :end properly'
    Expect SyntaxAt(13, 1) ==# ''
    Expect SyntaxAt(13, 2) ==# ''
    Expect SyntaxAt(13, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(13, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(13, 5) ==# 'vimVspecCommand'

    Expect SyntaxAt(18, 1) ==# 'vimVspecCommand'
    Expect SyntaxAt(18, 2) ==# 'vimVspecCommand'
    Expect SyntaxAt(18, 3) ==# 'vimVspecCommand'
  end

  it 'highlights :context properly'
    Expect SyntaxAt(14, 1) ==# ''
    Expect SyntaxAt(14, 2) ==# ''
    Expect SyntaxAt(14, 3) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 4) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 5) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 6) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 7) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 8) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 9) ==# 'vimVspecCommand'
    Expect SyntaxAt(14, 10) ==# ''
    Expect SyntaxAt(14, 11) ==# 'vimString'
    Expect SyntaxAt(14, 12) ==# 'vimString'
    Expect SyntaxAt(14, 13) ==# 'vimString'
    Expect SyntaxAt(14, 14) ==# 'vimString'
    Expect SyntaxAt(14, 15) ==# 'vimString'
    Expect SyntaxAt(14, 16) ==# 'vimString'
    Expect SyntaxAt(14, 17) ==# 'vimString'
    Expect SyntaxAt(14, 18) ==# 'vimString'
    Expect SyntaxAt(14, 19) ==# 'vimString'
    Expect SyntaxAt(14, 20) ==# 'vimString'
    Expect SyntaxAt(14, 21) ==# 'vimString'
    Expect SyntaxAt(14, 22) ==# 'vimString'
    Expect SyntaxAt(14, 23) ==# 'vimString'
    Expect SyntaxAt(14, 24) ==# 'vimString'
    Expect SyntaxAt(14, 25) ==# 'vimString'
    Expect SyntaxAt(14, 26) ==# 'vimString'
    Expect SyntaxAt(14, 27) ==# 'vimString'
    Expect SyntaxAt(14, 28) ==# 'vimString'
    Expect SyntaxAt(14, 29) ==# 'vimString'
    Expect SyntaxAt(14, 30) ==# 'vimString'
    Expect SyntaxAt(14, 31) ==# 'vimString'
  end
end
