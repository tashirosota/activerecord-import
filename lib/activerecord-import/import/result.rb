module ActiveRecord::Import #:nodoc:
  class Result
    attr_accessor :failed_instances, :num_inserts, :ids, :results
    def initialize(failed_instances, num_inserts, ids, results)
      @failed_instances = failed_instances
      @num_inserts = num_inserts
      @ids = ids
      @results = results
    end

    def num_inserts
      warn_unsuppored_attribute(__method__) unless adapter_name == :postgresql
      @num_inserts ||= num_inserts
    end

    def failed_instances
      @failed_instances ||= failed_instances
    end

    def ids
      warn_unsuppored_attribute(__method__) unless adapter_name == :postgresql
      @ids ||= ids
    end

    def results
      warn_unsuppored_attribute(__method__) unless adapter_name == :postgresql
      @results ||= results
    end

    private

    def adapter_name
      @adapter_name ||= ActiveRecord::Base.connection.adapter_name.downcase.to_sym
    end

    def warn_unsuppored_attribute(method_name)
      warn "Warning: ActiveRecord::Import::Result unsupported attribute: #{method_name}. adaputer: #{adapter_name}"
    end
  end
end
