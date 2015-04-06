module MergeSort;

void mergeSort(int[] vet, int inicio, int fim)
{
	int meio;
	if(inicio < fim)
	{
		meio = (inicio + fim)/2;
		mergeSort(vet, inicio, meio);
		mergeSort(vet, (meio + 1), fim);
		Merge(vet, inicio, meio, fim);
	}
		
}
void Merge(int[] vet, int inicio,int meio,int fim)
{
	int i = inicio, j = meio+1, k = 0;
	int[] aux = new int[fim-inicio];
	while(i <= meio && j <= fim)
	{	
		if(vet[i] <= vet[j])
		{
			aux[k] = vet[i];
			i = i+1;
		}
		else
		{
			aux[k] = vet[j];
			j = j+1;
		}
		k++;
	}
	int soma;
	if(i <= meio)
	{
		for(j = meio; j >= i; j--)		
		{
			
			soma = fim-meio+j;
			vet[soma] = vet[j];
		}
		
	}
	for(i = 0; i <= k-1; i++)
	{
		vet[i+inicio] = aux[i];
	}
}
