class School
  attr_reader :add_student_name

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    start_time.to_i + hours_in_school_day
      # needs something to_s to get the integer back to a string
  end

  def standard_student_names
    standard_student_names = student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    start_time.to_i + hours_in_school_day

  end
end
