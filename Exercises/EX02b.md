### Pair Programming + GitHub + FlipGrid 

###### Apply the normalization process to the Veterinary Office List—Version Two relation shown in Figure 1-35 (see page 63) to develop a set of normalized relations. Show the results of each of the steps in the normalization process.

Link to google doc: [Click Here](https://docs.google.com/document/d/1QvAkQdIaDTCD5W86UE6Mo7nPweO4PWnKwhGcH-lkv6E/edit?usp=sharing)

Normalization is simply the process (or steps for) of breaking a table or relation with more than one theme into a set of tables such that each has only one theme. 

The table starts as PET_LIST(PetName, PetType, PetBreed, PetDOB, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail, Service.Date, Charge)
![Step1](https://github.com/vono360/omis452partners/blob/master/Exercises/Images/Step1.PNG) 

Next we start to break up the table into the relations as shown below. 
![Step2](https://github.com/vono360/omis452partners/blob/master/Exercises/Images/Step2.PNG)


To normalize the table, we find candidate keys of the table. We do not necessarily have candidate keys that would be effective enough to use as Primary keys, so we create new ones where needed. PetID, OwnerID, and TransactionID. 

![Step3](https://github.com/vono360/omis452partners/blob/master/Exercises/Images/Step3.PNG)

Before we get to the primary keys, we identify the functional dependencies in the relation. The functional dependencies are such that a 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PetID will determine the (PetName, PetType, PetBreed, PetDOB, and *Owners*).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OwnerID determines (OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TransactionID determines (Service, ServiceDate, ServiceCharge, *Pets*)

The final normilization for a table like this would look soomething like:

![Step4](https://github.com/vono360/omis452partners/blob/master/Exercises/Images/Step4.PNG)

##### GitHub: Create a Markdown file ( filename.md) showing each step of the normalization process and the final result- *Complete*

##### FlipGrid: Discuss your normalization stages and the final result (add a link to your GitHub file).

##### Blackboard: A link to your file on GitHub (make sure to list your partner)
