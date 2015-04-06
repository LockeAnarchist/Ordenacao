module CountingSort;
import std.conv;
void countingSort(int[] vet)
{

	int max = vet.Maior;
	int range = max+1;
	int[] c = new int[range];

	int[] aux = new int[vet.length];
	for(int i = 0; i <= vet.length -1; i++)
		c[vet[i]]++;
	for(int i = 1; i < range; i++)
	{
		c[i]= c[i] + c[i-1];
	}

	for(int i = (to!int(vet.length -1)); i >= 0; i--)
	{
		c[vet[i]] = c[vet[i]] -1;
		aux[c[vet[i]]]= vet[i];
	}	
	for(int i = 0; i <= vet.length -1; i++)
		vet[i] = aux[i];
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
