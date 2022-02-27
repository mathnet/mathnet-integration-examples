using System;
using MathNet.Numerics;

namespace numerics_mkl_net48
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Doing this explicitly would not be needed, but we want to force it here so it fails if there is a problem
            Control.UseNativeMKL();

            Console.WriteLine(Control.Describe());
            Console.ReadKey();
        }
    }
}
