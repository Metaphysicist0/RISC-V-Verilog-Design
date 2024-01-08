int main() {
	int arr[] ={9, 8, 7, 4, 5, 6, 1, 2, 3, 0};
	int i, j;
	for(i=0; i<9; i++) {
		for(j=0; j<9-i; j++) {
			if(arr[j] > arr[j+1]) {
				int tmp = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = tmp;
			}
		}
	}

	return 0;
}