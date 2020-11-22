# Final_year_simulation

## Mobility Model

Moves a tractor through a field with a certain amount of rows. Since the tractor also moves around the field,
the tractor travels the number of rows PLUS one rows. Below diagram illustrates the two row tractor mobility scenario.

![Screenshot (539)](https://user-images.githubusercontent.com/37435024/99904141-18cfa780-2cef-11eb-83c7-42368b64b72d.png)

  In our case every vehicles follow that tractor mobility originating random positions throughout the 2000*2000 square metre area.
The purpose of this strategy is to get reasonable relative motion between vehicles while illustrating realistic vehicle motion. 
Below Figure shows how three vehicles behave inside the vehicular network.

![Screenshot (537)](https://user-images.githubusercontent.com/37435024/99904145-1c632e80-2cef-11eb-902f-47fbbe931e39.png)

 ## Non Collision Probability for AC3 using four different contention window sizes.
 
 ### Theoretical derivation
 
 The logic behind the mathematical derivation of non collision probability is, if one node is able to transmit its packet without experiencing any collision then back off slots that they have chosen randomly throughout the backoff process should be higher than the others. According to that logic the mathematical equation is like below,
    
![Screenshot (541)](https://user-images.githubusercontent.com/37435024/99904313-20438080-2cf0-11eb-8469-c1cd444b4895.png)
    
   
As a fist step of the Non collision probability verification, we constructed the graphs using python script.

![Screenshot (542)](https://user-images.githubusercontent.com/37435024/99904402-9b0c9b80-2cf0-11eb-8409-5a9a2ec8ff4b.png)

## Simulation Results

![Screenshot (544)](https://user-images.githubusercontent.com/37435024/99904578-c17f0680-2cf1-11eb-90ba-0359d44177e9.png)

First we got the data points related to 4 different convention window sizes. After gathering these data,
we implemented a python script which is capable of drawing the curve of a 2 degree polynomial equation for each data set(Best Line).
Here discrete data points are the raw data directly gathered from the simulation.The colored lines are the two degree polonomial curves.

## Comparison between our simulation results and the theoritical derivations

![Screenshot (547)](https://user-images.githubusercontent.com/37435024/99904881-d492d600-2cf3-11eb-9e6a-ce81176e0c28.png)



