

# Run this file in julia by executing the command
# include("phsi365_setup_part1.jl")
# in the julia REPL


@info "Setting up student computer for PHSI 365..."

@info "Adding julia packages ..."

using Pkg

#Essentials
add_list = [:Atom, :Juno, :IJulia, :Interact, :LaTeXStrings, :Plots,
                :QuadGK, :DifferentialEquations,
                :SpecialFunctions, :Distributions,
                :GSL, :FFTW, :JLD2, :WebIO, :SparseArrays,
                :SymPy, :HCubature, :BenchmarkTools,
		:LinearAlgebra,:Dates,:Printf,:NetCDF]

for pkg in add_list
    Pkg.add(String(pkg))
end

@info "============ installing jupyter via julia =============="
@info "Say yes when prompted in install jupyter, then exit once it is complete."

using IJulia;
notebook()

@info "Say yes if prompted to install jupyterlab, then exit once it is complete."
jupyterlab()
