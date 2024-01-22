trigger contactupdation on Account (after update) {
//if any updation performed in account the same field should get updated in contact.
     list<contact> lst=new list<contact>();
    set<id> accountids=new set<id>();
    
}