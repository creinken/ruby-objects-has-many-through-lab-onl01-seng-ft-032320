class Appointment

    #### Attributes ####
    attr_accessor :date, :patient, :doctor
    @@all = []
    #### Instance Methods ####
    def initialize(date,patient,doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
