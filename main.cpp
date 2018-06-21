#include <iostream>
#include <thread>         // std::this_thread::sleep_for
#include <chrono>         // std::chrono::seconds

#include <fstream>  


int main()
{
	int i = 0; 
	
	std::ofstream outfile ("test.txt");

	while(true)
	{
		std::this_thread::sleep_for (std::chrono::seconds(60));
		i++;
		std::cout<<i<<" th Minute- Hello I am still running. What do you want me to ? "<< std::endl;
		outfile <<i<< " th Minute- Hello I am still running. What do you want me to ? "<< std::endl;
	}

	outfile.close();
	
	return 0;
}