module BubbleSort;

void bubbleSort(int[] vet)
{
	int aux;
	for(int i = 0; i <= vet.length - 1 ; i++)
	{
		for(int j = i+1; j <= vet.length - 1 - i; j++)
		{
			if (vet[j] < vet[i]){
				aux = vet[j];
				vet[j] = vet[i];
				vet[i] = aux;
			}
		}
	}

}
