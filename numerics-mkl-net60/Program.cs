// See https://aka.ms/new-console-template for more information

using MathNet.Numerics;

// Doing this explicitly would not be needed, but we want to force it here so it fails if there is a problem
Control.UseNativeMKL();

Console.WriteLine(Control.Describe());
