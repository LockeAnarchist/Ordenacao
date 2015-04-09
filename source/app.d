module main;
import std.stdio;
import std.datetime;
import std.random;
import std.conv;
import std.algorithm;
import SelectionSort, QuickSort, MergeSort, Trocar, InsertionSort,
		BubbleFlag, BubbleSort, ShellSort, CountingSort, RapidSort, HeapSort;
void main(string[] args)
{	

	write("Entre com o tamanho do Array: ");
	int count;
	readf("%s", &count);

	//int[] vet = rndArray(count);
	//int[] vet = [11,20,5,10,9,7,10,8];
	int vet[] = [2,5,3,1];
	//heapSort(vet);
	//writeln(vet);

	//writeln(vet);
	//Chama algoritmo e mede o tempo
	//writeln(vet);
	//vet.MedeTempo("RapidSort");
	vet.MedeTempo("HeapSort");
	//writeln(vet);
	//vet.MedeTempo("CountingSort");
	//vet.MedeTempo("QuickSort");
	//vet.MedeTempo("MergeSort");
	//vet.MedeTempo("ShellSort");
	//vet.MedeTempo("InsertionSort");
	//vet.MedeTempo("SelectionSort");
	//vet.MedeTempo("BubbleSort");
	//vet.MedeTempo("BubbleFlag");
	//writeln(vet);
	
	
}
int[] rndArray(int tamanho)
{
	int[] arr = new int[tamanho];
	
	foreach(ref i; arr)
		i = uniform(5, (tamanho*3));

	return arr;

}

int[] MedeTempo(int[] vet, string alg)
{
	int xsec = 1000000;// número para converter µsegs para segundos.

	StopWatch sw;
	TickDuration time = sw.peek();
	double marca;
	double usecs;
	int i = 0; 
	int n = (to!int(vet.length));
	int[] aux = new int[n];

	while(i < n)
	{
		aux[i] = vet[i];
		i++;
	}

	
	
	switch(alg)
	{
		case "ShellSort":

			sw.start(); //start/resume mesuring.
			shellSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
		
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();

			break;
			
		case "SelectionSort":

			sw.start(); //start/resume mesuring.
			selectionSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
			
		case "InsertionSort":
			
			sw.start(); //start/resume mesuring.
			insertionSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
			
		case "BubbleSort":
			
			sw.start(); //start/resume mesuring.
			bubbleSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
			
		case "BubbleFlag":
			
			sw.start(); //start/resume mesuring.
			bubbleFlag(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
			
		case "MergeSort":
			
			sw.start(); //start/resume mesuring.
			mergeSort(aux, 0, n-1);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
			
		case "QuickSort":

			sw.start(); //start/resume mesuring.
			quickSort(aux, 0, n-1);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
		case "RapidSort":
			
			sw.start(); //start/resume mesuring.
			rapidSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
		case "CountingSort":
			
			sw.start(); //start/resume mesuring.
			countingSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;

		case "HeapSort":
			
			sw.start(); //start/resume mesuring.
			heapSort(aux);
			sw.stop(); //start/resume mesuring.
			time = sw.peek();
			usecs = (to!double(time.usecs));
			marca = (usecs / xsec);
			writefln("%s: %f", alg, marca);
			sw.reset();
			break;
		default:
			writeln("Função inválida: %c ", alg);
	}
	return aux;
}
