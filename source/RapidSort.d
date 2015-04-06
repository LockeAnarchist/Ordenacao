module RapidSort;

void rapidSort(int[] vet)
{
	int max = vet.Maior();
	int min = vet.Menor();

	int range = max-min+1;

	int[] c = new int[range];

	for(int i = 0; i <= vet.length -1; i++)
	{
		c[vet[i]-min]++;
	}
	int z = 0;
	for(int i = 0; i < range; i++)
	{
		while(c[i] > 0)
		{
			vet[z] = i+min;
			z++;
			c[i]--;
		}
	}

}
int Maior(int[] vet)
{
	int maior = 0;
	for(int i = 0; i <= vet.length -1; i++)
	{
		if(vet[i] > vet[maior])
			maior = i;
	}
	
	return(vet[maior]);
}
int Menor(int[] vet)
{
	int menor = 0;
	for(int i = 0; i <= vet.length -1; i++)
	{
		if(vet[i] < vet[menor])
			menor = i;
	}
	
	return(vet[menor]);
}
