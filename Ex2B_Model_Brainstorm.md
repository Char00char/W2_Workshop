\# Requirements and Conceptual Model



Study Group Members

\* Charles Palacios

\* Luis Alicea

\* Hana Merawi

\* Betelehem Teklemariam



\# 1. Project Requirements (Brainstorming)

\* Who is the user? Lana (Business Owner)

\* What does she need to do?

    See which dogs are scheduled for walks on any given day

    Track which customers own which dogs

    Record when walks were completed

    Log payments and know who owes money

    Store contact info for customers

    Know which walker is assigned to each walk (if she hires help later)

\* What data is needed?



\* Pets

    Dog_id

    customer_id

    ​Dog Name

​   Breed (e.g., Golden Retriever, Poodle)

​   Age

    Size

​   Medical/Behavioral Notes (e.g., "Leash aggressive" or "Allergic to nuts")



\*​ Customer Information
    
    Customer_id

<<<<<<< HEAD
​Owner First Name / Last Name
=======
​   Customer First \& Last Name
>>>>>>> f347c9b13839c30d079e5354888c4b52d19844ca

​   Primary Phone Number

​   Email Address

​   Home Address (Pick-up/Drop-off location)

​   Emergency Contact Info



\* ​Walk Details

    walk_id

    pet_id

    scheduled_date

    scheduled_time

    status

    notes

​   

\* Payments

    payment_id

    customer_id

    walk_id

    amount

    payment_date

    payment_method

​    Payment Status (Paid/Unpaid)


\* Business

    walker_id

    first_name
    
    last_name

    email

    phone

    role

    hire_date

# logical model 
  a)  dog information 
      customer information
      walk information 
      payment details  
  b) under dog information:- Dog id customer id ,walks appointment, ​Dog Name, Breed, Age, Size, medical/behavorial notes
     customer information:-  Customer id, Customer First \& Last Name, Primary Phone Number, Email Address, Home Address (Pick-up/Drop-off location), Emergency Contact Info
      under walk appointments:-walk id, pet id ,scheduled date ,scheduled time status, notes, walker_id
      under payment details:-payment id, customer id, walk id, amount ,payment date, payment method, Payment Status
      under business - walker_id, first_name, last_name, email, phone, role, hire_date
   c) Customer information to pets information, one customer may have many pets. pet information to walk information, one pet may have many walks. Payments to customers, one customer may have many payments. 
   d) none at the moment
