module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  class CsvRow
    def initialize( headers, fields )
        @headers = headers
        @fields = fields
    end
    
    def method_missing name, *args
        if @headers.include?(name.to_s) 
            @fields[@headers.index(name.to_s)]
        else
            puts "There is no column #{name}, fool!"
        end
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.gets.chomp.split(',')

      file.each do |row|
        @csv_contents << CsvRow.new(@headers, row.chomp.split(',') )
      end
    end

    attr_accessor :headers, :csv_contents
    def initialize
        read
    end
    
    include Enumerable
    
    def each
        @csv_contents.each  do |value|
            yield value
        end
      end
    end
end

class Ruby
  include ActsAsCsv
  acts_as_csv
end

csv = Ruby.new
#puts csv.headers.inspect
#puts csv.csv_contents.inspect

csv.each {|row| puts "Animal 1: #{row.Animal1} Animal 2: #{row.Animal2}"}