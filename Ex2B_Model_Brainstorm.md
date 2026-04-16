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

&#x20;

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

​   Customer First \& Last Name

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


\* employee

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
  b)  
  
    Dog Information:- dog_id, customer_id,walks appointment, ​dog_name, breed, age, size, notes

    Customer Information:-  customer_id, customer first_name, last_name, phone, email, address, city, state, emergency_contact

    Walk Information: walk_id, pet_id, scheduled_date , scheduled_time, duration_minutes, status, notes

    Payments : payment_id, customer_id, walk_id, amount ,payment_date, payment_method, payment_status
  
   c) Customer information to pets information, one customer may have many pets. pet information to walk information, one pet may have many walks. Payments to customers, one customer may have many payments. 
   d) none at the moment


4) a) the similarties are we have mostly similar tables because we clarified brainstorm ideas before turning them to tables.
   b) the only difference we have is on the charles diyageram the ai tool provide an extra table for payment walks to hundle multiple payments.