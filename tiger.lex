type pos = int
type lexresult = Tokens.token

val lineNum = ErrorMsg.lineNum
val linePos = ErrorMsg.linePos
val lexString = ref ""
val lexComment = ref 0
fun err(p1,p2) = ErrorMsg.error p1

fun trim(yytext) = 
            let
                val str = valOf(String.fromString yytext)
                val ret = String.substring(str, 1, (String.size str - 2)) (* trims quotation marks *)
            in
                ret
            end

fun eof() = let 
                val pos = hd(!linePos)
                val comment = 
                    if !lexComment = 0
                    then
                        ()
                    else
                        ErrorMsg.error 0 "Unclosed comment" 
            in 
                Tokens.EOF(pos, pos) 
            end

%%
%structure TigerLexFun
%s COMMENT;
number=[0-9]+;
identifier=[a-zA-Z][a-zA-Z0-9_]*;
stringLit=\"(\\\"|[^\"])*\";
commentStart="/*";
commentEnd="*/";
%%
    <INITIAL> {commentStart}        =>   (lexComment := 1; YYBEGIN COMMENT; continue());
    <INITIAL> " "|\t|\n             =>   (continue());
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
    <INITIAL> "."                   =>   (Tokens.DOT(yypos, yypos + 1));
    <INITIAL> "("                   =>   (Tokens.LPAREN(yypos, yypos + 1));
    <INITIAL> ")"                   =>   (Tokens.RPAREN(yypos, yypos + 1));
    <INITIAL> "["                   =>   (Tokens.LBRACK(yypos, yypos + 1));
    <INITIAL> "]"                   =>   (Tokens.RBRACK(yypos, yypos + 1));
    <INITIAL> "{"                   =>   (Tokens.LBRACE(yypos, yypos + 1));
    <INITIAL> "}"                   =>   (Tokens.RBRACE(yypos, yypos + 1));
    <INITIAL> ":="                  =>   (Tokens.ASSIGN(yypos, yypos + 2));
    <INITIAL> ","	                =>   (Tokens.COMMA(yypos, yypos + 1));
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
    <INITIAL> {number}              =>   (Tokens.INT(valOf(Int.fromString yytext), yypos, yypos + String.size yytext));
    <INITIAL> {stringLiteral}       =>   (Tokens.STRING(trim(yytext), yypos, yypos + String.size yytext));
    <INITIAL> {identifier}          =>   (Tokens.ID(yytext, yypos, yypos + String.size yytext));
    <INITIAL> .                     =>   (ErrorMsg.error yypos ("illegal character " ^ yytext); continue());

    <COMMENT> .                     =>   (continue());
    <COMMENT> \n                    =>   (continue());
    <COMMENT> {commentStart}        =>   (lexComment := !lexComment + 1; continue());
    <COMMENT> {commentEnd}          =>   (if !lexComment = 1 then YYBEGIN INITIAL else (); lexComment := !lexComment + ~1; continue());