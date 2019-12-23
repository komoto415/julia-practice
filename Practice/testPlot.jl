using Plots, Distributions, StatsPlots
x = 1:10; y = rand(10, 2);

# plot(x, y, title="Two Lines", label=["My line" "Your line"],lw=2)
# xlabel!("Bob")

# Can explicitly used attribute!(p, value) where p is the variable
# holding the plot anf value the attribute

# plotly()
# p = plot(x,y,title="This is Plotted using Plotly") # This plots into the web browser via Plotly
#
# gr()
# p = plot(x,y,title="This is Plotted using GR") # This plots using GR

# savefig(p,"myplot.pdf") # Saves the plot from p as a .pdf vector graphic

# Scatter Stuff C:
gr()
p = plot(x, y, seriestype =:scatter, title = "My Scatter Plot!")
s = scatter(x,y,title="Direct Scatter Plot!")

# display(p) for scripting

plot(x,y,layout=(2,1)) # Display two subplots together on the same grid

p1 = p
p2 = s
p3 = plot(y,x, lw= 3, title="My other subplot")
p4 = histogram(x,y, title="Some histo")
plot(p1,p2,p3,p4, layout=(2,2), legend = false)

plot(Normal(3,5), lw = 3)

z = rand(100,4) # Four series of 100 points each
violin(["Series 1" "Series 2" "Series 3" "Series 4"],z,leg=false)
boxplot!(["Series 1" "Series 2" "Series 3" "Series 4"],z,leg=false)
