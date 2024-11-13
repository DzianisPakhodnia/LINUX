# Makefile
all: ConwayGame.exe

ConwayGame.exe: Program.cs Model/Cell.cs Model/Grid.cs Model/Game.cs
	mcs -out:ConwayGame.exe Program.cs Model/*.cs

clean:
	rm -f ConwayGame.exe
