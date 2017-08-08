# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative

# require_relative is a file path that connects a file to a related seperate file so that they can interact. Used in rspec tests with Ruby files to test their functionality.
#
#require is also a way to access files but is different in what can be accessed and how the files are called
#


# iterate through state data
# call both methods to each state in turn
#


require_relative 'state_data'

class VirusPredictor

attr_accessor :population_density, :population, :state

### assigns attributes to the class instance and activates the instance variables

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#### synthesises other two methods to print out one collective statements about a speed_of_spread and predicted_deaths


  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

### looks at population by state and estimates how many people will die, assigning a rate according to population density

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people"

  end

  #### looks at how many people will be infected and how fast

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end



# This code is saying as the population density goes down to under 200 (per sq mile) the speed of spread goes up. For every 50 people the density decreases by, the speed of spread goes down by .5 (of a month). Sort of like if density += 50, speed +=.5.

#Could we do something like (this code as written wont run but this is the logic):
 # if @population_density -= 50
    #   speed += 0.5
    # end

    puts " and will spread in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 p STATE_DATA

STATE_DATA.keys.each do |state|

report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
report.virus_effects

end



#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#alabama.population_density

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

#Private - closes off the scope of whatever methods come after it to only be able to be called from within the method itself: private methods are methods that aren’t supposed to be called from outside of the object. Only the object itself is supposed to use them internally, from other methods.

# What are the differences between the two different hash syntaxes shown in the state_data file?
# State data is organized as a nested hash, the top level hash has the state name as a key, and a second hash as the value. This level uses a hash rocket to notate the value attached to the key. The second level hash has two elements, the first with the title population density as key and the density number as the value, the second with the title population and the population number as value. The second level uses a key to signify the value in each pair.

# What does require_relative do? How is it different from require?
# Require enables us to access code located in files that are separate from the file we are currently operating in, as though we had copied and pasted the code of that file into the top of the active file we are working in. We do this by typing keyword require and stating the full file path of the file we want to access from the root to the file itself.
# Require relative only requires the file name itself in order to access the outside file.

# What are some ways to iterate through a hash?
# We can convert some of the data in a hash to an array using hash built in method like #keys and then iterate through that array using #each.


# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables used did not introduce any new data that was not already available on initialization as an instance variable. Therefore the method already had access to the information it needed just by being run on any class instance, even without these parameters.

# What concept did you most solidify in this challenge?
# I got more solid on the purpose of parameters and the utility of the scope rules of instance variables. Specifically that instance variables can not only be accessed between different instance methods (unlike with regular methods defined outside of a class), but also that if the instance variable data exists on initialization, it does not have to be passed in again if you call and instance variable that relies on that data.


