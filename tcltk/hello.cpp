// g++ hello.cpp -I/usr/local/Cellar/tcl-tk/8.6.11/lib/tcl8.6/critcl3.1.18/critcl_c/tcl8.6/

#include <tk.h>
 
int main(int argc, char* argv[])
{
  Tcl_Interp* interp = Tcl_CreateInterp();
  Tcl_FindExecutable(argv[0]);
  Tcl_Init(interp);
  Tk_Init(interp);
 
  char script[] = "pack [label .l -text {Hello, World!}]";
  Tcl_Eval(interp, script);
  Tk_MainLoop();
 
  Tcl_Finalize();

	return 0;
}

