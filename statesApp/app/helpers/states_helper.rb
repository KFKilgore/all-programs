module StatesHelper
    def check_answer(answer)
    statelist = ["Alaska", "Hawaii", "Washington", "Oregon", "California", "Arizona", "Nevada", "Idaho", "Montana", "Utah", "New Mexico", "Colorado", "Wyoming", "North Dakota", "South Dakota", "Nebraska", "Kansas", "Oklahoma", "Texas", "Louisiana", "Arkansas", "Missouri", "Iowa", "Minnesota", "Wisconsin", "Illinois", "Indiana", "Ohio", "Michigan", "Kentucky", "Tennessee", "Mississippi", "Alabama", "Georgia", "Florida", "South Carolina", "North Carolina", "Virginia", "West Virginia", "Maryland", "Delaware", "Pennsylvania", "New Jersey", "New York", "Connecticut", "Rhode Island", "Massachusetts", "New Hampshire", "Vermont", "Maine"]
        
        correct = false
        # s is a placeholder for one of the states in the array
        statelist.each do |s|
            if answer == s
                correct = true
            end
        end
        
        return correct
    end
    
    def check_for_dup(answer, database)
        is_dup = false
        database.each do |d|
            if answer == d.name
                is_dup = true
            end
        end
        return is_dup
    end
end
