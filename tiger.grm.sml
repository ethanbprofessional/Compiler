functor TigerLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Tiger_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
structure A = Absyn


end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\000\000\000\000\
\\001\000\001\000\179\000\005\000\179\000\007\000\179\000\009\000\179\000\
\\011\000\179\000\013\000\179\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\179\000\027\000\179\000\
\\031\000\179\000\032\000\179\000\035\000\179\000\036\000\179\000\
\\038\000\179\000\039\000\179\000\043\000\179\000\044\000\179\000\
\\045\000\179\000\000\000\
\\001\000\001\000\180\000\005\000\180\000\007\000\180\000\009\000\180\000\
\\011\000\180\000\013\000\180\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\180\000\027\000\180\000\
\\031\000\180\000\032\000\180\000\035\000\180\000\036\000\180\000\
\\038\000\180\000\039\000\180\000\043\000\180\000\044\000\180\000\
\\045\000\180\000\000\000\
\\001\000\001\000\181\000\005\000\181\000\007\000\181\000\009\000\181\000\
\\011\000\181\000\013\000\181\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\181\000\027\000\181\000\
\\031\000\181\000\032\000\181\000\035\000\181\000\036\000\181\000\
\\038\000\181\000\039\000\181\000\043\000\181\000\044\000\181\000\
\\045\000\181\000\000\000\
\\001\000\001\000\182\000\005\000\182\000\007\000\182\000\009\000\182\000\
\\011\000\182\000\013\000\182\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\182\000\027\000\182\000\
\\031\000\182\000\032\000\182\000\035\000\182\000\036\000\182\000\
\\038\000\182\000\039\000\182\000\043\000\182\000\044\000\182\000\
\\045\000\182\000\000\000\
\\001\000\001\000\183\000\005\000\183\000\007\000\183\000\009\000\183\000\
\\011\000\183\000\013\000\183\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\183\000\027\000\183\000\
\\031\000\183\000\032\000\183\000\035\000\183\000\036\000\183\000\
\\038\000\183\000\039\000\183\000\043\000\183\000\044\000\183\000\
\\045\000\183\000\000\000\
\\001\000\001\000\184\000\005\000\184\000\007\000\184\000\009\000\184\000\
\\011\000\184\000\013\000\184\000\015\000\027\000\016\000\026\000\
\\017\000\025\000\018\000\024\000\026\000\184\000\027\000\184\000\
\\031\000\184\000\032\000\184\000\035\000\184\000\036\000\184\000\
\\038\000\184\000\039\000\184\000\043\000\184\000\044\000\184\000\
\\045\000\184\000\000\000\
\\001\000\002\000\015\000\003\000\014\000\004\000\013\000\008\000\012\000\
\\009\000\043\000\016\000\011\000\030\000\010\000\033\000\009\000\
\\034\000\008\000\037\000\007\000\041\000\006\000\042\000\005\000\000\000\
\\001\000\002\000\015\000\003\000\014\000\004\000\013\000\008\000\012\000\
\\009\000\080\000\016\000\011\000\030\000\010\000\033\000\009\000\
\\034\000\008\000\037\000\007\000\041\000\006\000\042\000\005\000\000\000\
\\001\000\002\000\015\000\003\000\014\000\004\000\013\000\008\000\012\000\
\\016\000\011\000\030\000\010\000\033\000\009\000\034\000\008\000\
\\037\000\007\000\041\000\006\000\042\000\005\000\000\000\
\\001\000\002\000\037\000\000\000\
\\001\000\002\000\064\000\000\000\
\\001\000\002\000\065\000\000\000\
\\001\000\002\000\066\000\000\000\
\\001\000\002\000\073\000\000\000\
\\001\000\002\000\076\000\000\000\
\\001\000\002\000\076\000\013\000\075\000\000\000\
\\001\000\002\000\101\000\012\000\100\000\029\000\099\000\000\000\
\\001\000\002\000\103\000\000\000\
\\001\000\002\000\106\000\000\000\
\\001\000\002\000\106\000\009\000\105\000\000\000\
\\001\000\002\000\131\000\000\000\
\\001\000\002\000\133\000\000\000\
\\001\000\002\000\139\000\000\000\
\\001\000\002\000\140\000\000\000\
\\001\000\002\000\147\000\000\000\
\\001\000\002\000\157\000\000\000\
\\001\000\006\000\084\000\028\000\083\000\000\000\
\\001\000\006\000\123\000\020\000\122\000\000\000\
\\001\000\006\000\124\000\000\000\
\\001\000\006\000\137\000\020\000\136\000\000\000\
\\001\000\008\000\085\000\000\000\
\\001\000\009\000\070\000\000\000\
\\001\000\009\000\095\000\000\000\
\\001\000\009\000\121\000\000\000\
\\001\000\011\000\094\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\001\000\011\000\127\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\001\000\011\000\145\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\001\000\011\000\163\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\001\000\013\000\092\000\000\000\
\\001\000\013\000\134\000\000\000\
\\001\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\
\\031\000\069\000\000\000\
\\001\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\
\\035\000\107\000\000\000\
\\001\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\
\\036\000\068\000\000\000\
\\001\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\
\\036\000\141\000\000\000\
\\001\000\020\000\082\000\000\000\
\\001\000\020\000\093\000\000\000\
\\001\000\020\000\148\000\000\000\
\\001\000\020\000\154\000\000\000\
\\001\000\028\000\067\000\000\000\
\\001\000\028\000\120\000\000\000\
\\001\000\028\000\142\000\000\000\
\\001\000\038\000\063\000\000\000\
\\001\000\039\000\097\000\000\000\
\\001\000\040\000\118\000\000\000\
\\001\000\043\000\036\000\044\000\035\000\045\000\034\000\000\000\
\\165\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\166\000\000\000\
\\167\000\000\000\
\\168\000\000\000\
\\169\000\000\000\
\\170\000\000\000\
\\171\000\000\000\
\\172\000\000\000\
\\173\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\
\\032\000\108\000\000\000\
\\174\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\175\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\176\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\177\000\000\000\
\\178\000\000\000\
\\185\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\000\000\
\\186\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\000\000\
\\187\000\000\000\
\\188\000\000\000\
\\189\000\017\000\025\000\018\000\024\000\000\000\
\\190\000\017\000\025\000\018\000\024\000\000\000\
\\191\000\008\000\048\000\010\000\047\000\012\000\046\000\014\000\045\000\
\\028\000\044\000\000\000\
\\192\000\000\000\
\\193\000\000\000\
\\194\000\000\000\
\\195\000\000\000\
\\196\000\010\000\115\000\014\000\114\000\028\000\113\000\040\000\112\000\000\000\
\\197\000\014\000\153\000\000\000\
\\198\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\199\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\200\000\028\000\144\000\000\000\
\\201\000\010\000\160\000\028\000\159\000\000\000\
\\202\000\000\000\
\\203\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\204\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\205\000\010\000\091\000\028\000\090\000\000\000\
\\206\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\207\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\208\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\209\000\000\000\
\\210\000\007\000\071\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\211\000\000\000\
\\212\000\005\000\096\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\\213\000\000\000\
\\214\000\043\000\036\000\044\000\035\000\045\000\034\000\000\000\
\\215\000\000\000\
\\216\000\000\000\
\\217\000\000\000\
\\218\000\000\000\
\\219\000\045\000\034\000\000\000\
\\220\000\000\000\
\\221\000\000\000\
\\222\000\000\000\
\\223\000\000\000\
\\224\000\005\000\149\000\000\000\
\\225\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\226\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\227\000\000\000\
\\228\000\043\000\036\000\000\000\
\\229\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\230\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\231\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\232\000\015\000\027\000\016\000\026\000\017\000\025\000\018\000\024\000\
\\020\000\023\000\021\000\022\000\022\000\021\000\023\000\020\000\
\\024\000\019\000\025\000\018\000\026\000\017\000\027\000\016\000\000\000\
\\233\000\000\000\
\\234\000\005\000\128\000\015\000\027\000\016\000\026\000\017\000\025\000\
\\018\000\024\000\020\000\023\000\021\000\022\000\022\000\021\000\
\\023\000\020\000\024\000\019\000\025\000\018\000\026\000\017\000\
\\027\000\016\000\000\000\
\"
val actionRowNumbers =
"\009\000\057\000\056\000\060\000\
\\061\000\055\000\010\000\009\000\
\\009\000\009\000\007\000\059\000\
\\058\000\076\000\009\000\009\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\100\000\113\000\
\\102\000\101\000\099\000\052\000\
\\011\000\012\000\013\000\049\000\
\\043\000\041\000\069\000\032\000\
\\095\000\062\000\009\000\014\000\
\\016\000\009\000\008\000\071\000\
\\070\000\005\000\004\000\006\000\
\\003\000\002\000\001\000\073\000\
\\072\000\075\000\074\000\112\000\
\\098\000\009\000\045\000\027\000\
\\031\000\009\000\009\000\009\000\
\\063\000\009\000\093\000\090\000\
\\039\000\078\000\046\000\035\000\
\\033\000\097\000\077\000\053\000\
\\017\000\009\000\018\000\020\000\
\\042\000\067\000\064\000\094\000\
\\009\000\009\000\080\000\009\000\
\\081\000\079\000\009\000\068\000\
\\104\000\054\000\019\000\105\000\
\\110\000\050\000\034\000\028\000\
\\029\000\009\000\009\000\091\000\
\\036\000\119\000\009\000\009\000\
\\021\000\009\000\096\000\103\000\
\\022\000\040\000\009\000\030\000\
\\009\000\023\000\024\000\044\000\
\\065\000\051\000\015\000\083\000\
\\084\000\085\000\037\000\107\000\
\\106\000\111\000\009\000\025\000\
\\115\000\047\000\109\000\009\000\
\\009\000\118\000\009\000\082\000\
\\114\000\048\000\009\000\019\000\
\\066\000\092\000\088\000\026\000\
\\009\000\117\000\108\000\086\000\
\\116\000\009\000\009\000\089\000\
\\038\000\087\000\000\000"
val gotoT =
"\
\\001\000\002\000\002\000\162\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\006\000\031\000\007\000\030\000\008\000\029\000\009\000\028\000\
\\010\000\027\000\012\000\026\000\000\000\
\\000\000\
\\001\000\036\000\003\000\001\000\000\000\
\\001\000\037\000\003\000\001\000\000\000\
\\001\000\038\000\003\000\001\000\000\000\
\\001\000\040\000\003\000\001\000\004\000\039\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\047\000\003\000\001\000\000\000\
\\001\000\048\000\003\000\001\000\000\000\
\\001\000\049\000\003\000\001\000\000\000\
\\001\000\050\000\003\000\001\000\000\000\
\\001\000\051\000\003\000\001\000\000\000\
\\001\000\052\000\003\000\001\000\000\000\
\\001\000\053\000\003\000\001\000\000\000\
\\001\000\054\000\003\000\001\000\000\000\
\\001\000\055\000\003\000\001\000\000\000\
\\001\000\056\000\003\000\001\000\000\000\
\\001\000\057\000\003\000\001\000\000\000\
\\001\000\058\000\003\000\001\000\000\000\
\\000\000\
\\009\000\059\000\010\000\027\000\000\000\
\\000\000\
\\000\000\
\\006\000\060\000\007\000\030\000\008\000\029\000\009\000\028\000\
\\010\000\027\000\012\000\026\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\070\000\003\000\001\000\000\000\
\\000\000\
\\014\000\072\000\000\000\
\\001\000\075\000\003\000\001\000\000\000\
\\001\000\077\000\003\000\001\000\005\000\076\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\040\000\003\000\001\000\004\000\079\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\084\000\003\000\001\000\000\000\
\\001\000\085\000\003\000\001\000\000\000\
\\001\000\086\000\003\000\001\000\000\000\
\\000\000\
\\001\000\040\000\003\000\001\000\004\000\087\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\011\000\096\000\000\000\
\\001\000\100\000\003\000\001\000\000\000\
\\000\000\
\\013\000\102\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\107\000\003\000\001\000\000\000\
\\001\000\108\000\003\000\001\000\000\000\
\\000\000\
\\001\000\109\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\001\000\077\000\003\000\001\000\005\000\114\000\000\000\
\\000\000\
\\012\000\115\000\000\000\
\\000\000\
\\013\000\117\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\123\000\003\000\001\000\000\000\
\\001\000\124\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\127\000\003\000\001\000\000\000\
\\001\000\128\000\003\000\001\000\000\000\
\\000\000\
\\001\000\130\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\133\000\003\000\001\000\000\000\
\\000\000\
\\001\000\136\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\014\000\141\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\144\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\148\000\003\000\001\000\000\000\
\\001\000\149\000\003\000\001\000\000\000\
\\000\000\
\\001\000\150\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\153\000\003\000\001\000\000\000\
\\013\000\154\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\156\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\159\000\003\000\001\000\000\000\
\\001\000\160\000\003\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 163
val numrules = 70
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle General.Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(List.map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit
 | STRING of unit ->  (string) | INT of unit ->  (int)
 | ID of unit ->  (string)
 | recdec of unit ->  ( ( Symbol.symbol * A.exp * pos )  list)
 | tyfields of unit ->  (A.field list)
 | tydec of unit ->  ({ name:Symbol.symbol,ty:A.ty,pos:pos }  list)
 | ty of unit ->  (A.ty) | fundec of unit ->  (A.fundec)
 | fundecs of unit ->  (A.fundec list) | vardec of unit ->  (A.dec)
 | dec of unit ->  (A.dec) | decs of unit ->  (A.dec list)
 | expcomma of unit ->  (A.exp list)
 | expseq of unit ->  ( ( A.exp * pos )  list)
 | lvalue of unit ->  (A.exp) | program of unit ->  (A.exp)
 | exp of unit ->  (A.exp)
end
type svalue = MlyValue.svalue
type result = A.exp
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn (T 32) => true | (T 33) => true | (T 34) => true | (T 40) => true
 | (T 36) => true | (T 37) => true | (T 38) => true | (T 42) => true
 | (T 43) => true | (T 44) => true | (T 28) => true | (T 29) => true
 | (T 30) => true | (T 31) => true | (T 35) => true | (T 39) => true
 | (T 41) => true | _ => false
val preferred_change : (term list * term list) list = 
(nil
,nil
 $$ (T 30))::
(nil
,nil
 $$ (T 31))::
(nil
,nil
 $$ (T 7))::
nil
val noShift = 
fn (T 0) => true | _ => false
val showTerminal =
fn (T 0) => "EOF"
  | (T 1) => "ID"
  | (T 2) => "INT"
  | (T 3) => "STRING"
  | (T 4) => "COMMA"
  | (T 5) => "COLON"
  | (T 6) => "SEMICOLON"
  | (T 7) => "LPAREN"
  | (T 8) => "RPAREN"
  | (T 9) => "LBRACK"
  | (T 10) => "RBRACK"
  | (T 11) => "LBRACE"
  | (T 12) => "RBRACE"
  | (T 13) => "DOT"
  | (T 14) => "PLUS"
  | (T 15) => "MINUS"
  | (T 16) => "TIMES"
  | (T 17) => "DIVIDE"
  | (T 18) => "UMINUS"
  | (T 19) => "EQ"
  | (T 20) => "NEQ"
  | (T 21) => "LT"
  | (T 22) => "LE"
  | (T 23) => "GT"
  | (T 24) => "GE"
  | (T 25) => "AND"
  | (T 26) => "OR"
  | (T 27) => "ASSIGN"
  | (T 28) => "ARRAY"
  | (T 29) => "IF"
  | (T 30) => "THEN"
  | (T 31) => "ELSE"
  | (T 32) => "WHILE"
  | (T 33) => "FOR"
  | (T 34) => "TO"
  | (T 35) => "DO"
  | (T 36) => "LET"
  | (T 37) => "IN"
  | (T 38) => "END"
  | (T 39) => "OF"
  | (T 40) => "BREAK"
  | (T 41) => "NIL"
  | (T 42) => "FUNCTION"
  | (T 43) => "VAR"
  | (T 44) => "TYPE"
  | (T 45) => "LVAL"
  | (T 46) => "IFTHN"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn (T 1) => MlyValue.ID(fn () => ("bogus")) | 
(T 2) => MlyValue.INT(fn () => (1)) | 
(T 3) => MlyValue.STRING(fn () => ("")) | 
_ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 46) $$ (T 45) $$ (T 44) $$ (T 43) $$ (T 42) $$ (T 41) $$ (T 40)
 $$ (T 39) $$ (T 38) $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33)
 $$ (T 32) $$ (T 31) $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26)
 $$ (T 25) $$ (T 24) $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19)
 $$ (T 18) $$ (T 17) $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12)
 $$ (T 11) $$ (T 10) $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ 
(T 4) $$ (T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)
) => let val  result = MlyValue.program (fn _ => let val  (exp as exp1
) = exp1 ()
 in (exp)
end)
 in ( LrTable.NT 1, ( result, exp1left, exp1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.lvalue lvalue1, lvalue1left, lvalue1right))
 :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (
lvalue as lvalue1) = lvalue1 ()
 in (lvalue)
end)
 in ( LrTable.NT 0, ( result, lvalue1left, lvalue1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.INT INT1, INT1left, INT1right)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  (INT as INT1) = 
INT1 ()
 in (A.IntExp(INT))
end)
 in ( LrTable.NT 0, ( result, INT1left, INT1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.STRING STRING1, STRING1left, (STRINGright
 as STRING1right))) :: rest671)) => let val  result = MlyValue.exp (fn
 _ => let val  (STRING as STRING1) = STRING1 ()
 in (A.StringExp(STRING, STRINGright))
end)
 in ( LrTable.NT 0, ( result, STRING1left, STRING1right), rest671)
end
|  ( 4, ( ( _, ( _, NIL1left, NIL1right)) :: rest671)) => let val  
result = MlyValue.exp (fn _ => (A.NilExp))
 in ( LrTable.NT 0, ( result, NIL1left, NIL1right), rest671)
end
|  ( 5, ( ( _, ( _, BREAK1left, (BREAKright as BREAK1right))) :: 
rest671)) => let val  result = MlyValue.exp (fn _ => (
A.BreakExp(BREAKright)))
 in ( LrTable.NT 0, ( result, BREAK1left, BREAK1right), rest671)
end
|  ( 6, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( _, LPAREN1left, _)) ::
 rest671)) => let val  result = MlyValue.exp (fn _ => (A.SeqExp([])))
 in ( LrTable.NT 0, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 7, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.expseq 
expseq1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val 
 result = MlyValue.exp (fn _ => let val  (expseq as expseq1) = expseq1
 ()
 in (A.SeqExp(expseq))
end)
 in ( LrTable.NT 0, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, _, expright)) :: ( _, ( _, IF1left, _)) :: rest671)
) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.IfExp{test = exp1, then' = exp2, else' = NONE, pos = expright})

end)
 in ( LrTable.NT 0, ( result, IF1left, exp2right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( 
MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, 
expright)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result =
 MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in (
A.IfExp({test = exp1, then' = exp2, else' = SOME exp3, pos = expright})
)
end)
 in ( LrTable.NT 0, ( result, IF1left, exp3right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( 
MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) ::
 _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FOR1left, _)) :: 
rest671)) => let val  result = MlyValue.exp (fn _ => let val  (ID as 
ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in (
A.ForExp({var = Symbol.symbol(ID), escape = ref true, lo = exp1, hi = exp2, body = exp3, pos = exp3right})
)
end)
 in ( LrTable.NT 0, ( result, FOR1left, exp3right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, _, _)) :: ( _, ( _, WHILE1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.WhileExp({test = exp1, body = exp2, pos = exp2right}))
end)
 in ( LrTable.NT 0, ( result, WHILE1left, exp2right), rest671)
end
|  ( 12, ( ( _, ( _, _, (ENDright as END1right))) :: ( _, ( 
MlyValue.expseq expseq1, _, _)) :: _ :: ( _, ( MlyValue.decs decs1, _,
 _)) :: ( _, ( _, LET1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  (decs as decs1) = decs1 ()
 val  (expseq as expseq1) = expseq1 ()
 in (A.LetExp({decs = decs, body = A.SeqExp(expseq), pos = ENDright}))

end)
 in ( LrTable.NT 0, ( result, LET1left, END1right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.exp exp1, _, (expright as exp1right))) :: (
 _, ( _, MINUS1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  (exp as exp1) = exp1 ()
 in (
A.OpExp({left = A.IntExp(0), oper = A.MinusOp, right = exp, pos = expright})
)
end)
 in ( LrTable.NT 0, ( result, MINUS1left, exp1right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.EqOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.NeqOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.LtOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.GtOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.GeOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.LeOp, right = exp2, pos = exp2right}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.IfExp({test = exp1, then' = exp2, else' = SOME (A.IntExp(0)), pos = exp2right})
)
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.IfExp({test = exp1, then' = A.IntExp(1), else' = SOME exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.TimesOp, right = exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.DivideOp, right = exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, expright)) :: rest671)) => let val  
result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.PlusOp, right = exp2, pos = expright}))

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.OpExp({left = exp1, oper = A.MinusOp, right = exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 26, ( ( _, ( MlyValue.ID ID1, ID1left, (IDright as ID1right))) ::
 rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  (ID
 as ID1) = ID1 ()
 in (A.VarExp(A.SimpleVar(Symbol.symbol(ID), IDright)))
end)
 in ( LrTable.NT 2, ( result, ID1left, ID1right), rest671)
end
|  ( 27, ( ( _, ( _, _, (RPARENright as RPAREN1right))) :: _ :: ( _, (
 MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = 
MlyValue.lvalue (fn _ => let val  (ID as ID1) = ID1 ()
 in (
A.CallExp({func = Symbol.symbol(ID), args = [], pos = RPARENright}))

end)
 in ( LrTable.NT 2, ( result, ID1left, RPAREN1right), rest671)
end
|  ( 28, ( ( _, ( _, _, (RBRACEright as RBRACE1right))) :: _ :: ( _, (
 MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = 
MlyValue.lvalue (fn _ => let val  (ID as ID1) = ID1 ()
 in (
A.RecordExp({typ = Symbol.symbol(ID), fields = [], pos = RBRACEright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RBRACE1right), rest671)
end
|  ( 29, ( ( _, ( _, _, (RPARENright as RPAREN1right))) :: ( _, ( 
MlyValue.expcomma expcomma1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, _)) :: rest671)) => let val  result = MlyValue.lvalue (fn _
 => let val  (ID as ID1) = ID1 ()
 val  (expcomma as expcomma1) = expcomma1 ()
 in (
A.CallExp({func = Symbol.symbol(ID), args = expcomma, pos = RPARENright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RPAREN1right), rest671)
end
|  ( 30, ( ( _, ( _, _, (RBRACEright as RBRACE1right))) :: ( _, ( 
MlyValue.recdec recdec1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, _)) :: rest671)) => let val  result = MlyValue.lvalue (fn _
 => let val  (ID as ID1) = ID1 ()
 val  (recdec as recdec1) = recdec1 ()
 in (
A.RecordExp({typ = Symbol.symbol(ID), fields = recdec, pos = RBRACEright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RBRACE1right), rest671)
end
|  ( 31, ( ( _, ( _, _, RBRACK1right)) :: ( _, ( MlyValue.exp exp1, _,
 expright)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: 
rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  (ID
 as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
A.VarExp(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp, expright))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RBRACK1right), rest671)
end
|  ( 32, ( ( _, ( _, _, RBRACK2right)) :: ( _, ( MlyValue.exp exp2, _,
 exp2right)) :: _ :: _ :: ( _, ( MlyValue.exp exp1, _, exp1right)) ::
 _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let
 val  result = MlyValue.lvalue (fn _ => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.VarExp(A.SubscriptVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp2, exp2right), exp1, exp1right))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RBRACK2right), rest671)
end
|  ( 33, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, 
( MlyValue.exp exp1, _, expright)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, _)) :: rest671)) => let val  result = MlyValue.lvalue (fn _
 => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.ArrayExp({typ = Symbol.symbol(ID), size = exp1, init = exp2, pos = expright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 34, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, 
( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, IDright)) :: rest671)) => let val  result = MlyValue.lvalue
 (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in (
A.AssignExp({var = A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp1, exp1right), exp = exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: ( _, ( 
MlyValue.exp exp1, _, expright)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, IDright)) :: rest671)) => let val  result = MlyValue.lvalue
 (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  ID2 = ID2 ()
 in (
A.VarExp(A.FieldVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp, expright), Symbol.symbol(ID2), ID2right))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, ID2right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: ( _, ( 
MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, ( MlyValue.exp 
exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)
) :: rest671)) => let val  result = MlyValue.lvalue (fn _ => let val 
 (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  ID2 = ID2 ()
 in (
A.VarExp(A.FieldVar(A.SubscriptVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp2, exp2right), exp1, exp1right), Symbol.symbol(ID2), ID2right))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, ID2right), rest671)
end
|  ( 37, ( ( _, ( _, _, RBRACK3right)) :: ( _, ( MlyValue.exp exp3, _,
 exp3right)) :: _ :: ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _
 :: ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, ( 
MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, 
ID1left, IDright)) :: rest671)) => let val  result = MlyValue.lvalue
 (fn _ => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  ID2 = ID2 ()
 val  exp3 = exp3 ()
 in (
A.VarExp(A.SubscriptVar(A.FieldVar(A.SubscriptVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID), IDright), exp2, exp2right), exp1, exp1right), Symbol.symbol(ID2), ID2right), exp3, exp3right))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, RBRACK3right), rest671)
end
|  ( 38, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: ( _, ( MlyValue.exp exp1,
 _, (expright as exp1right))) :: _ :: ( _, ( MlyValue.ID ID1, ID1left,
 ID1right)) :: rest671)) => let val  result = MlyValue.lvalue (fn _ =>
 let val  ID1 = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  ID2 = ID2 ()
 val  exp2 = exp2 ()
 in (
A.AssignExp({var = A.FieldVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID1), ID1right), exp1, exp1right), Symbol.symbol(ID2), ID2right), exp = exp2, pos = expright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 39, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( 
MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: ( _, ( MlyValue.exp exp2,
 _, exp2right)) :: _ :: _ :: ( _, ( MlyValue.exp exp1, _, exp1right))
 :: _ :: ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) =>
 let val  result = MlyValue.lvalue (fn _ => let val  ID1 = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 val  ID2 = ID2 ()
 val  exp3 = exp3 ()
 in (
A.AssignExp({var = A.FieldVar(A.SubscriptVar(A.SubscriptVar(A.SimpleVar(Symbol.symbol(ID1), ID1right), exp2, exp2right), exp1, exp1right), Symbol.symbol(ID2), ID2right), exp = exp3, pos = exp3right})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp3right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( 
MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let val  result = 
MlyValue.lvalue (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 in (
A.VarExp(A.FieldVar(A.SimpleVar(Symbol.symbol(ID1), IDright), Symbol.symbol(ID2), IDright))
)
end)
 in ( LrTable.NT 2, ( result, ID1left, ID2right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.exp exp1, _, (expright as exp1right))) :: _
 :: ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( MlyValue.ID 
ID1, ID1left, IDright)) :: rest671)) => let val  result = 
MlyValue.lvalue (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
A.AssignExp({ var = A.FieldVar(A.SimpleVar(Symbol.symbol(ID1), IDright), Symbol.symbol(ID2), ID2right), exp = exp, pos = expright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp1right), rest671)
end
|  ( 42, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, 
( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID2, _,
 ID2right)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: 
rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  ID1 =
 ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in (
A.AssignExp({ var = A.SubscriptVar(A.FieldVar(A.SimpleVar(Symbol.symbol(ID1), IDright), Symbol.symbol(ID2), ID2right), exp1, exp1right), exp = exp2, pos = exp2right})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 43, ( ( _, ( MlyValue.exp exp1, _, (expright as exp1right))) :: _
 :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let
 val  result = MlyValue.lvalue (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
A.AssignExp({var = A.SimpleVar(Symbol.symbol(ID), IDright), exp = exp, pos = expright})
)
end)
 in ( LrTable.NT 2, ( result, ID1left, exp1right), rest671)
end
|  ( 44, ( ( _, ( MlyValue.expseq expseq1, _, expseq1right)) :: _ :: (
 _, ( MlyValue.exp exp1, exp1left, expright)) :: rest671)) => let val 
 result = MlyValue.expseq (fn _ => let val  (exp as exp1) = exp1 ()
 val  (expseq as expseq1) = expseq1 ()
 in ((exp, expright) :: expseq)
end)
 in ( LrTable.NT 3, ( result, exp1left, expseq1right), rest671)
end
|  ( 45, ( ( _, ( MlyValue.exp exp1, exp1left, (expright as exp1right)
)) :: rest671)) => let val  result = MlyValue.expseq (fn _ => let val 
 (exp as exp1) = exp1 ()
 in ([(exp, expright)])
end)
 in ( LrTable.NT 3, ( result, exp1left, exp1right), rest671)
end
|  ( 46, ( ( _, ( MlyValue.expcomma expcomma1, _, expcomma1right)) ::
 _ :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val 
 result = MlyValue.expcomma (fn _ => let val  (exp as exp1) = exp1 ()
 val  (expcomma as expcomma1) = expcomma1 ()
 in (exp :: expcomma)
end)
 in ( LrTable.NT 4, ( result, exp1left, expcomma1right), rest671)
end
|  ( 47, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)
) => let val  result = MlyValue.expcomma (fn _ => let val  (exp as 
exp1) = exp1 ()
 in ([exp])
end)
 in ( LrTable.NT 4, ( result, exp1left, exp1right), rest671)
end
|  ( 48, ( ( _, ( MlyValue.decs decs1, _, decs1right)) :: ( _, ( 
MlyValue.dec dec1, dec1left, _)) :: rest671)) => let val  result = 
MlyValue.decs (fn _ => let val  (dec as dec1) = dec1 ()
 val  (decs as decs1) = decs1 ()
 in (dec :: decs)
end)
 in ( LrTable.NT 5, ( result, dec1left, decs1right), rest671)
end
|  ( 49, ( ( _, ( MlyValue.dec dec1, dec1left, dec1right)) :: rest671)
) => let val  result = MlyValue.decs (fn _ => let val  (dec as dec1) =
 dec1 ()
 in ([dec])
end)
 in ( LrTable.NT 5, ( result, dec1left, dec1right), rest671)
end
|  ( 50, ( ( _, ( MlyValue.tydec tydec1, tydec1left, tydec1right)) :: 
rest671)) => let val  result = MlyValue.dec (fn _ => let val  (tydec
 as tydec1) = tydec1 ()
 in (A.TypeDec(tydec))
end)
 in ( LrTable.NT 6, ( result, tydec1left, tydec1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.vardec vardec1, vardec1left, vardec1right))
 :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (
vardec as vardec1) = vardec1 ()
 in (vardec)
end)
 in ( LrTable.NT 6, ( result, vardec1left, vardec1right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.fundecs fundecs1, fundecs1left, 
fundecs1right)) :: rest671)) => let val  result = MlyValue.dec (fn _
 => let val  (fundecs as fundecs1) = fundecs1 ()
 in (A.FunctionDec(fundecs))
end)
 in ( LrTable.NT 6, ( result, fundecs1left, fundecs1right), rest671)

end
|  ( 53, ( ( _, ( MlyValue.tydec tydec1, _, tydec1right)) :: ( _, ( 
MlyValue.ty ty1, _, tyright)) :: _ :: ( _, ( MlyValue.ID ID1, _, _))
 :: ( _, ( _, TYPE1left, _)) :: rest671)) => let val  result = 
MlyValue.tydec (fn _ => let val  (ID as ID1) = ID1 ()
 val  (ty as ty1) = ty1 ()
 val  (tydec as tydec1) = tydec1 ()
 in ({name = Symbol.symbol(ID), ty = ty, pos = tyright} :: tydec)
end)
 in ( LrTable.NT 11, ( result, TYPE1left, tydec1right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.ty ty1, _, (tyright as ty1right))) :: _ :: 
( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, TYPE1left, _)) :: rest671)
) => let val  result = MlyValue.tydec (fn _ => let val  (ID as ID1) = 
ID1 ()
 val  (ty as ty1) = ty1 ()
 in ([{name = Symbol.symbol(ID), ty = ty, pos = tyright}])
end)
 in ( LrTable.NT 11, ( result, TYPE1left, ty1right), rest671)
end
|  ( 55, ( ( _, ( MlyValue.ID ID1, ID1left, (IDright as ID1right))) ::
 rest671)) => let val  result = MlyValue.ty (fn _ => let val  (ID as 
ID1) = ID1 ()
 in (A.NameTy(Symbol.symbol(ID), IDright))
end)
 in ( LrTable.NT 10, ( result, ID1left, ID1right), rest671)
end
|  ( 56, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.tyfields 
tyfields1, _, _)) :: ( _, ( _, LBRACE1left, _)) :: rest671)) => let
 val  result = MlyValue.ty (fn _ => let val  (tyfields as tyfields1) =
 tyfields1 ()
 in (A.RecordTy(tyfields))
end)
 in ( LrTable.NT 10, ( result, LBRACE1left, RBRACE1right), rest671)

end
|  ( 57, ( ( _, ( MlyValue.ID ID1, _, (IDright as ID1right))) :: _ :: 
( _, ( _, ARRAY1left, _)) :: rest671)) => let val  result = 
MlyValue.ty (fn _ => let val  (ID as ID1) = ID1 ()
 in (A.ArrayTy(Symbol.symbol(ID), IDright))
end)
 in ( LrTable.NT 10, ( result, ARRAY1left, ID1right), rest671)
end
|  ( 58, ( ( _, ( MlyValue.tyfields tyfields1, _, tyfields1right)) :: 
( _, ( _, _, COMMAright)) :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: (
 _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = 
MlyValue.tyfields (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 in (
let
                                           val x : A.field = {name = Symbol.symbol(ID1), escape = ref true, typ = Symbol.symbol(ID2), pos = COMMAright}
                                        in
                                           x :: tyfields
                                        end
)
end)
 in ( LrTable.NT 12, ( result, ID1left, tyfields1right), rest671)
end
|  ( 59, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( 
MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let val  result = 
MlyValue.tyfields (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 in (
[{name = Symbol.symbol(ID1), escape = ref true, typ = Symbol.symbol(ID2), pos = IDright}]
)
end)
 in ( LrTable.NT 12, ( result, ID1left, ID2right), rest671)
end
|  ( 60, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
ASSIGNright)) :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left,
 _)) :: rest671)) => let val  result = MlyValue.vardec (fn _ => let
 val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
A.VarDec({name = Symbol.symbol(ID), escape = ref true, typ = NONE, init = exp, pos = ASSIGNright})
)
end)
 in ( LrTable.NT 7, ( result, VAR1left, exp1right), rest671)
end
|  ( 61, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
ASSIGNright)) :: ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( 
MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, _)) :: rest671)) => let
 val  result = MlyValue.vardec (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
A.VarDec({name = Symbol.symbol(ID1), escape = ref true, typ = SOME (Symbol.symbol(ID2), ID2right), init = exp, pos = ASSIGNright})
)
end)
 in ( LrTable.NT 7, ( result, VAR1left, exp1right), rest671)
end
|  ( 62, ( ( _, ( MlyValue.fundecs fundecs1, _, fundecs1right)) :: ( _
, ( MlyValue.fundec fundec1, fundec1left, _)) :: rest671)) => let val 
 result = MlyValue.fundecs (fn _ => let val  (fundec as fundec1) = 
fundec1 ()
 val  (fundecs as fundecs1) = fundecs1 ()
 in (fundec :: fundecs)
end)
 in ( LrTable.NT 8, ( result, fundec1left, fundecs1right), rest671)

end
|  ( 63, ( ( _, ( MlyValue.fundec fundec1, fundec1left, fundec1right))
 :: rest671)) => let val  result = MlyValue.fundecs (fn _ => let val 
 (fundec as fundec1) = fundec1 ()
 in ([fundec])
end)
 in ( LrTable.NT 8, ( result, fundec1left, fundec1right), rest671)
end
|  ( 64, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
EQright)) :: _ :: ( _, ( MlyValue.tyfields tyfields1, _, _)) :: _ :: (
 _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: 
rest671)) => let val  result = MlyValue.fundec (fn _ => let val  (ID
 as ID1) = ID1 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 val  (exp as exp1) = exp1 ()
 in (
let
                                                       val x : A.fundec = {name = Symbol.symbol(ID), params = tyfields, result = NONE, body = exp, pos = EQright}
                                                    in
                                                       x
                                                    end
)
end)
 in ( LrTable.NT 9, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 65, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
EQright)) :: _ :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, 
FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.fundec
 (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
let 
                                                val x : A.fundec = {name = Symbol.symbol(ID), params = [], result = NONE, body = exp, pos = EQright}
                                             in
                                                x
                                             end
)
end)
 in ( LrTable.NT 9, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 66, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
EQright)) :: ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: ( _, (
 MlyValue.tyfields tyfields1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _
, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result
 = MlyValue.fundec (fn _ => let val  ID1 = ID1 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
let
                                                                val x : A.fundec = {name = Symbol.symbol(ID1), params = tyfields, result = SOME (Symbol.symbol(ID2), ID2right), body = exp, pos = EQright}
                                                             in
                                                                x
                                                             end
)
end)
 in ( LrTable.NT 9, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 67, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, 
EQright)) :: ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: _ :: _ :: (
 _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: 
rest671)) => let val  result = MlyValue.fundec (fn _ => let val  ID1 =
 ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
let
                                                         val x : A.fundec = {name = Symbol.symbol(ID1), params = [], result = SOME (Symbol.symbol(ID2), ID2right), body = exp, pos = EQright}
                                                      in
                                                         x
                                                      end
)
end)
 in ( LrTable.NT 9, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 68, ( ( _, ( MlyValue.recdec recdec1, _, recdec1right)) :: _ :: (
 _, ( MlyValue.exp exp1, _, expright)) :: _ :: ( _, ( MlyValue.ID ID1,
 ID1left, _)) :: rest671)) => let val  result = MlyValue.recdec (fn _
 => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  (recdec as recdec1) = recdec1 ()
 in ((Symbol.symbol(ID), exp, expright) :: recdec)
end)
 in ( LrTable.NT 13, ( result, ID1left, recdec1right), rest671)
end
|  ( 69, ( ( _, ( MlyValue.exp exp1, _, (expright as exp1right))) :: _
 :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  
result = MlyValue.recdec (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ([(Symbol.symbol(ID), exp, expright)])
end)
 in ( LrTable.NT 13, ( result, ID1left, exp1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.program x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : Tiger_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(
ParserData.MlyValue.VOID,p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(
ParserData.MlyValue.ID (fn () => i),p1,p2))
fun INT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(
ParserData.MlyValue.INT (fn () => i),p1,p2))
fun STRING (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(
ParserData.MlyValue.STRING (fn () => i),p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(
ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(
ParserData.MlyValue.VOID,p1,p2))
fun SEMICOLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(
ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(
ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(
ParserData.MlyValue.VOID,p1,p2))
fun DOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(
ParserData.MlyValue.VOID,p1,p2))
fun PLUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(
ParserData.MlyValue.VOID,p1,p2))
fun MINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(
ParserData.MlyValue.VOID,p1,p2))
fun TIMES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(
ParserData.MlyValue.VOID,p1,p2))
fun DIVIDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(
ParserData.MlyValue.VOID,p1,p2))
fun UMINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(
ParserData.MlyValue.VOID,p1,p2))
fun EQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(
ParserData.MlyValue.VOID,p1,p2))
fun NEQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(
ParserData.MlyValue.VOID,p1,p2))
fun LT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(
ParserData.MlyValue.VOID,p1,p2))
fun LE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(
ParserData.MlyValue.VOID,p1,p2))
fun GT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(
ParserData.MlyValue.VOID,p1,p2))
fun GE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(
ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(
ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(
ParserData.MlyValue.VOID,p1,p2))
fun ASSIGN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(
ParserData.MlyValue.VOID,p1,p2))
fun ARRAY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(
ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(
ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(
ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(
ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(
ParserData.MlyValue.VOID,p1,p2))
fun FOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(
ParserData.MlyValue.VOID,p1,p2))
fun TO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(
ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(
ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(
ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(
ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(
ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(
ParserData.MlyValue.VOID,p1,p2))
fun BREAK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(
ParserData.MlyValue.VOID,p1,p2))
fun NIL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(
ParserData.MlyValue.VOID,p1,p2))
fun FUNCTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(
ParserData.MlyValue.VOID,p1,p2))
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(
ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(
ParserData.MlyValue.VOID,p1,p2))
fun LVAL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 45,(
ParserData.MlyValue.VOID,p1,p2))
fun IFTHN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 46,(
ParserData.MlyValue.VOID,p1,p2))
end
end
