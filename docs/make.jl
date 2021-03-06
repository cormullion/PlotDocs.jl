using Documenter, Plots, PlotDocs

for be in (:gr, :pyplot, :plotlyjs, :pgfplots)
    generate_markdown(be)
end
save_attr_html_files()
create_support_tables()

makedocs(modules=[Plots], doctest=false)


# makedocs(
#     format = :html,
#     sitename = "Plots",
#     authors = "Thomas Breloff",
#     pages = Any[
#         "Home" => "index.md",
#         "Getting Started" => [
#             "Installation" => "install.md",
#             "Basics" => "basics.md",
#             "Tutorial" => "tutorial.md",
#         ],
#         "Manual" => [
#             "Input Data" => "input_data.md",
#             "Output" => "output.md",
#             "Attributes" => "attributes.md",
#             "Layouts" => "layouts.md",
#             "Recipes" => "recipes.md",
#             "Colors" => "colors.md",
#             "Animations" => "animations.md",
#             "Backends" => "backends.md",
#             "Supported Attributes" => "supported.md",
#         ],
#         "Learning" => "learning.md",
#         "Contributing" => "contributing.md",
#         "Ecosystem" => "ecosystem.md",
#         "Advanced Topics" => [
#             "Internals" => "pipeline.md",
#         ],
#         "Examples" => [
#             "GR" => "examples/gr.md",
#             "PyPlot" => "examples/pyplot.md",
#             "PlotlyJS" => "examples/plotlyjs.md",
#             "PGFPlots" => "examples/pgfplots.md",
#             "UnicodePlots" => "examples/unicodeplots.md",
#             "InspectDR" => "examples/inspectdr.md",
#         ],
#     ],
#     )

# deploydocs(
#     repo = "github.com/JuliaPlots/PlotDocs.jl.git",
#     target = "build",
#     deps = nothing,
#     make = nothing,
# )

deploydocs(
    deps = Deps.pip("mkdocs==0.17.5",
        "mkdocs-material==2.9.4" ,"python-markdown-math", "pygments", "pymdown-extensions"),
    repo   = "github.com/JuliaPlots/PlotDocs.jl.git",
    julia  = "1.0",
    osname = "linux"
)
