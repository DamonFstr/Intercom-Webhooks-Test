class CreateWebhookEventRequests < ActiveRecord::Migration
  def change
    create_table :webhook_event_requests do |t|
      t.text :payload

      t.timestamps
    end
  end
end
