// https://linuxhint.com/signal_handlers_c_programming_language/
//
// Ctrl+cでsigintをプログラムに送ると 
// sig_handler関数が呼ばれる
// 終了するにはCtrl+\でsigquitをプログラムに送る

#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void sig_handler(int signum)
{
  // Return type of the handler function should be void
  printf("\nInside handler function\n");
}

int main()
{
  signal(SIGINT, sig_handler);  // Register signal handler
  for(int i=1; ; i++){          // Infinite loop
    printf("%d : Inside main function\n", i);
    sleep(1);                   // Delay for 1 second
  }
  return 0;
}

