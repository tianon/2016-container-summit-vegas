#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

/** /
void sighdlr(int sig) {
	printf("lolsig %d\n", sig);
	exit(0);
}
/**/

int main() {
	//if (signal(SIGCHLD, SIG_IGN) == SIG_ERR) { perror(0); exit(1); }
	//if (signal(SIGTERM, sighdlr) == SIG_ERR) { perror(0); exit(1); }
	//if (signal(SIGINT, sighdlr) == SIG_ERR) { perror(0); exit(1); }

	int pid;
	while ((pid = fork()) != 0) {
		printf("POWERTHIRST: %d\n", pid);
		sleep(1);
	}

	return 0;
}
