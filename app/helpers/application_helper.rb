module ApplicationHelper

  def calendar_months
    %w(January February March April May June July August September October November December)
  end

  def us_states
    {
     :Alabama =>"Alabama",
     :Alaska => "Alaska",
     :Arkansas =>"Arkansas",
     :Arizona =>"Arizona", 
     :California =>"California", 
     :Colorado =>"Colorado", 
     :Connecticut =>"Connecticut", 
     "District of Columbia".to_sym =>"District of Columbia", 
     :Delaware =>"Delaware", 
     :Florida =>"Florida", 
     :Georgia =>"Georgia", 
     :Hawaii =>"Hawaii", 
     :Iowa =>"Iowa", 
     :Idaho =>"Idaho", 
     :Illinois =>"Illinois", 
     :Indiana =>"Indiana", 
     :Kansas =>"Kansas", 
     :Kentucky =>"Kentucky", 
     :Louisiana =>"Louisiana", 
     :Massachusetts =>"Massachusetts", 
     :Maryland =>"Maryland", 
     :Maine =>"Maine", 
     :Michigan =>"Michigan", 
     :Minnesota =>"Minnesota", 
     :Missouri =>"Missouri", 
     :Mississippi =>"Mississippi", 
     :Montana =>"Montana", 
     "North Carolina".to_sym =>"North Carolina", 
     "North Dakota".to_sym =>"North Dakota", 
     :Nebraska =>"Nebraska", 
     "New Hampshire".to_sym =>"New Hampshire", 
     "New Jersey".to_sym =>"New Jersey", 
     "New Mexico".to_sym =>"New Mexico", 
     :Nevada =>"Nevada", 
     "New York".to_sym =>"New York", 
     :Ohio =>"Ohio", 
     :Oklahoma =>"Oklahoma", 
     :Oregon =>"Oregon", 
     :Pennsylvania =>"Pennsylvania", 
     "Rhode Island".to_sym =>"Rhode Island", 
     "South Carolina".to_sym =>"South Carolina", 
     "South Dakota".to_sym =>"South Dakota", 
     :Tennessee =>"Tennessee", 
     :Texas =>"Texas", 
     :Utah =>"Utah", 
     :Virginia =>"Virginia", 
     :Vermont =>"Vermont", 
     :Washington =>"Washington", 
     :Wisconsin =>"Wisconsin", 
     "West Virginia".to_sym =>"West Virginia", 
     :Wyoming =>"Wyoming"
   } 
  end
  
end
