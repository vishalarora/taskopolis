class RemoveDelayedJobs < ActiveRecord::Migration[5.0]
  if table_exists?(:delayed_jobs)
    def change
    	drop_table :delayed_jobs
    end
  end
end
