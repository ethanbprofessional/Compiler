structure Parse =
struct 
  fun parse filename =
      let val file = TextIO.openIn filename
	  fun get _ = TextIO.input file
	  val lexer = TigerLexFun.makeLexer get
	  fun do_it() =
	      let val t = lexer()
	       in print t; print "\n";
		   if substring(t,0,3)="EOF" then () else do_it()
	      end
       in ErrorMsg.lineNum := 1; do_it();
	  TextIO.closeIn file
      end

end

structure Main = 
struct
  fun parse (_, [fileName]) = (Parse.parse fileName; OS.Process.success)
end