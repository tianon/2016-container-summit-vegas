#include <stdio.h>

int main() {
	int pid;
	while ((pid = fork()) != 0) {
		printf("POWERTHIRST: %d\n", pid);
		sleep(1);
	}
	return 0;
}
