class Patient

    #### Attributes ####
    attr_accessor :name
    @@all = []

    #### Instance Methods ####
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor,date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment_list| appointment_list.patient == self}
    end

    def doctors
        appointments.collect {|appointment_obj| appointment_obj.doctor}
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
