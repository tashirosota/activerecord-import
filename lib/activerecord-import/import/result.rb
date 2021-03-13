module ActiveRecord::Import #:nodoc:
  class Result
    def initialize(failed_instances, num_inserts, ids, results)
      @failed_instances = failed_instances
      @num_inserts = num_inserts
      @ids = ids
      @results = results
    end

    def num_inserts
      warn "Warning: ActiveRecord::Import::Result unsupported attribute. adaputer#{adapter}"
      @num_inserts ||= num_inserts
    end

    def failed_instances
      @failed_instances ||= failed_instances
    end

    def ids
      warn "Warning: ActiveRecord::Import::Result unsupported attribute. adaputer#{adapter}"
      @ids ||= ids
    end

    def results
      warn "Warning: ActiveRecord::Import::Result unsupported attribute. adaputer#{adapter}"
      @results ||= results
    end
  end
end
