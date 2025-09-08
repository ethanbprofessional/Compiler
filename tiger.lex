type pos = int
type lexresult = Tokens.token

val lineNum = ErrorMsg.lineNum
val linePos = ErrorMsg.linePos
val lexString = ref ""
val lexComment = ref 0;
fun err(p1,p2) = ErrorMsg.error p1

fun eof() = let val pos = hd(!linePos) in Tokens.EOF(pos, pos) end


%%
%structure TigerLexFun
%s COMMENT ID STRING SPACE;
number=[0-9]+;
commentS="/*";
commentE="*/";
identifier=[a-zA-Z][a-zA-Z0-9_]*;
escapeSeq=\\[nt"\"""\\"];
escapeEx=\\[ntb];
%%
<INITIAL> \n                    =>   (lineNum := !lineNum+1; linePos := yypos :: !linePos; continue());
<INITIAL> {commentS}            =>   (lexComment := 1; YYBEGIN COMMENT; continue());
<INITIAL> var  	                =>   (Tokens.VAR(yypos, yypos + 3));
<INITIAL> let                   =>   (Tokens.LET(yypos, yypos + 3));
<INITIAL> if                    =>   (Tokens.IF(yypos, yypos + 2));
<INITIAL> of                    =>   (Tokens.OF(yypos, yypos + 2));
<INITIAL> do                    =>   (Tokens.DO(yypos, yypos + 2));
<INITIAL> to                    =>   (Tokens.TO(yypos, yypos + 2));
<INITIAL> then                  =>   (Tokens.THEN(yypos, yypos + 4));
<INITIAL> else                  =>   (Tokens.ELSE(yypos, yypos + 4));
<INITIAL> type                  =>   (Tokens.TYPE(yypos, yypos + 4));
<INITIAL> nil                   =>   (Tokens.NIL(yypos, yypos + 3));
<INITIAL> for                   =>   (Tokens.FOR(yypos, yypos + 3));
<INITIAL> array                 =>   (Tokens.ARRAY(yypos, yypos + 5));
<INITIAL> while                 =>   (Tokens.WHILE(yypos, yypos + 5));
<INITIAL> break                 =>   (Tokens.BREAK(yypos, yypos + 5));
<INITIAL> function              =>   (Tokens.FUNCTION(yypos, yypos + 8));
<INITIAL> in                    =>   (Tokens.IN(yypos, yypos + 2));
<INITIAL> end                   =>   (Tokens.END(yypos, yypos + 3));
<INITIAL> {identifier}          =>   (Tokens.ID(yytext, yypos, yypos + String.size yytext));
<INITIAL> " "|\013|\t           =>   (continue());
<INITIAL> "."                   =>   (Tokens.DOT(yypos, yypos + 1));
<INITIAL> "("                   =>   (Tokens.LPAREN(yypos, yypos + 1));
<INITIAL> ")"                   =>   (Tokens.RPAREN(yypos, yypos + 1));
<INITIAL> "["                   =>   (Tokens.LBRACK(yypos, yypos + 1));
<INITIAL> "]"                   =>   (Tokens.RBRACK(yypos, yypos + 1));
<INITIAL> "{"                   =>   (Tokens.LBRACE(yypos, yypos + 1));
<INITIAL> "}"                   =>   (Tokens.RBRACE(yypos, yypos + 1));
<INITIAL> ":="                  =>   (Tokens.ASSIGN(yypos, yypos + 2));
<INITIAL> ","	                  =>   (Tokens.COMMA(yypos, yypos + 1));
<INITIAL> ":"                   =>   (Tokens.COLON(yypos, yypos + 1));
<INITIAL> ";"                   =>   (Tokens.SEMICOLON(yypos, yypos + 1));
<INITIAL> "="                   =>   (Tokens.EQ(yypos, yypos + 1));
<INITIAL> "<>"                  =>   (Tokens.NEQ(yypos, yypos + 2));
<INITIAL> ">"                   =>   (Tokens.GT(yypos, yypos + 1));
<INITIAL> ">="                  =>   (Tokens.GE(yypos, yypos + 2));
<INITIAL> "<"                   =>   (Tokens.LT(yypos, yypos + 1));
<INITIAL> "<="                  =>   (Tokens.LE(yypos, yypos + 2));
<INITIAL> "+"                   =>   (Tokens.PLUS(yypos, yypos + 1));
<INITIAL> "-"                   =>   (Tokens.MINUS(yypos, yypos + 1));
<INITIAL> "*"                   =>   (Tokens.TIMES(yypos, yypos + 1));
<INITIAL> "/"                   =>   (Tokens.DIVIDE(yypos, yypos + 1));
<INITIAL> "&"                   =>   (Tokens.AND(yypos, yypos + 1));
<INITIAL> "|"                   =>   (Tokens.OR(yypos, yypos + 1));
<INITIAL> {number}              =>   (Tokens.INT(valOf (Int.fromString yytext), yypos, yypos + String.size yytext));
<INITIAL> "\"\\n\""             =>   (Tokens.STRING(str(chr(10)), yypos, yypos + 4));
<INITIAL> "\"\""                =>   (Tokens.STRING("", yypos, yypos));
<INITIAL> "\""                  =>   (lexString := ""; YYBEGIN STRING; continue());
<INITIAL> .                     =>   (ErrorMsg.error yypos ("illegal character " ^ yytext); continue());

<COMMENT> .                     =>   (continue());
<COMMENT> \n                    =>   (lineNum := !lineNum+1; linePos := yypos :: !linePos; continue());
<COMMENT> {commentS}            =>   (lexComment := !lexComment + 1; continue());
<COMMENT> {commentE}            =>   (if (!lexComment = 1) then (YYBEGIN INITIAL; continue()) else (lexComment := !lexComment + ~1; continue()));

<STRING> \n                     =>   (lineNum := !lineNum+1; linePos := yypos :: !linePos; YYBEGIN SPACE; continue());
<STRING> \\[0-9]{3}             =>   (Tokens.STRING(str(chr(valOf(Int.fromString (substring(yytext, 1, 3))))), yypos, yypos + 3));
<STRING> \\\"                   =>   (lexString := (!lexString) ^ substring(yytext, 1, 1); continue());
<STRING> [^\\\"\n]+{escapeSeq}  =>   (lexString := (!lexString) ^ substring(yytext, 0, String.size (yytext) + ~2) ^ substring(yytext, String.size (yytext) + ~1, 1); Tokens.STRING((!lexString), yypos, yypos));
<STRING> [^\\\"\n]+\\           =>   (lexString := (!lexString) ^ substring(yytext, 0, String.size (yytext) + ~1); continue());
<STRING> [^\\\"\n]+             =>   (lexString := (!lexString) ^ yytext; Tokens.STRING((!lexString), yypos, yypos));
<STRING> "\""                   =>   (YYBEGIN INITIAL; continue());

<SPACE> [\ \t]+\\               =>   (YYBEGIN STRING; continue());
