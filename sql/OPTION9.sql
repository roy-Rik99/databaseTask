SELECT serial_number, MIN(event_date) as Min_event_date, MAX(event_date) as Max_event_date FROM EventsData GROUP by serial_number ORDER by serial_number ASC;