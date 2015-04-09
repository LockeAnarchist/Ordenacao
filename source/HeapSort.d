module HeapSort;
import std.stdio;
import std.conv;

void buildheap(int[] vet, int inicio, int fim)
{
	//inicio = 1 / fim = 3
	int aux = vet[inicio];
	int j = inicio * 2 + 1;

	while(j <= fim)
	{
		if(j < fim)
		{
			if(vet[j] < vet[j+1])
			{
				j = j +1;
			}
		}
		writeln(j);
		if(aux < vet[j])
		{
			vet[inicio] = vet[j];
			inicio = j;
			j = 2*inicio+1;
		}
		else
		{
			j=fim+1;
		}
	}
	vet[inicio] = aux;
}

void heapSort(int[] vet)
{
	//divide o vetor duas partes em uma divisão inteira e constroi o heap nessa metade
	for(int i = (to!int(vet.length)-1)/2; i>= 0; i--)
	{
		int count = (to!int(vet.length) -1); //count =3
		buildheap(vet, i, count); // i = 1 / i = 0
	}

	for(int i = (to!int(vet.length)-1); i>= 1; i--)
	{
		int aux = vet[0];
		vet[0] = vet[i];
		vet[i] = aux;
		buildheap(vet, 0, i-1);
	}
}