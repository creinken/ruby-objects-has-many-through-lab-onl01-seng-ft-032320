class Doctor

    #### Attributes ####
    attr_accessor :name
    @@all = []

    #### Instance Methods ####
    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date,patient,self)
    end

    def patients
        appointments.collect {|appointment_obj| appointment_obj.patient}
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
