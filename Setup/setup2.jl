

# Run this file in julia by executing the command
# include("phsi365_setup_part2.jl")
# in the julia REPL


@info "Configuring jupyter, jupyterlab, extensions..."

using Pkg

Pkg.build("IJulia")
Pkg.build("WebIO")

# interact is a bit niggly at the moment, this _should_ work:
@info "Get interaction working ..."
using WebIO
WebIO.install_jupyter_nbextension()

try
 WebIO.install_jupyter_labextension(condajl=true)
catch
 @info "an error occurred... not to worry!"
end

@info "============ finished setup ==============="
@info "Installed packages:"
Pkg.status()

@info "============ getting started =============="
@info "You may want to set up a link to the julia application on your taskbar"
@info "To start jupyter lab from within julia: julia> using IJulia; jupyterlab()"
