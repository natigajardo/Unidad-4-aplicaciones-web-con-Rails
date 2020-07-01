class Appointment
    #attr_accessor :location, :purpose, :hour, :min 
    def initialize (location, purpose, hour, min)
    @location = location
    @purpose = purpose
    @hour = hour
    @min = min
    end 

    def location
        @location
    end

    def purpose
        @purpose
    end

    def hour 
        @hour 
    end

    def min
        @min 
    end

end

class MonthlyAppointment < Appointment
    #attr_accessor :day 
    def initialize (location, purpose, hour, min, day)
        super(location, purpose, hour, min)  
        @day = day
    end 

    def day 
        @day 
    end 

    def occurs_on?(day)
        day.to_i == @day ? true : false 
    end 

    def to_s
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}."
    end 
end

#puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15) 
#Reunión diaria en Desafío Latam sobre Educación a la(s) 8:15.

class DailyAppointment < Appointment

    def occurs_on?(hour, min)
        hour == @hour && min == @min ? true : false  
    end 

    def to_s 
         "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}."
    end 
end

#puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019) 
#Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a la(s) 14:30.

class OneTimeAppointment < Appointment
    #attr_accessor :day, :month, :year 
    def initialize (location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)  
        @day = day
        @month = month 
        @year = year 
    end 

    def day 
        @day 
    end 

    def month 
        @month 
    end

    def year
        @year
    end 

    def occurs_on?(day, month, year)
        day.to_i == @day && month.to_i == @month && year.to_i == @year ? true : false  
    end 

    def to_s 
         "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
    end 

end

m = MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
puts m 
puts m.occurs_on?(23)

d = DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
puts d 
puts d.occurs_on?(8,15)

ot = OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts ot
puts ot.occurs_on?(4,6,2019)