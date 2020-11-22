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

               

As a fist step of the Non collision probability verification, we constructed the graphs using python script.


