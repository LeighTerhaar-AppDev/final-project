namespace :slurp do
  desc "TODO"
  task transactions: :environment do
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "poses.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Pose.new
      t.name = row["name"]
      t.sanskrit = row["sanskrit"]
      t.position = row["position"]
      t.save
      puts row.to_hash
    end
  end

end
