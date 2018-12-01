namespace :slurp do
  desc "TODO"
  task transactions: :environment do
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "allposeswbooleandata.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Pose.new
      t.name = row["name"]
      t.sanskrit = row["sanskrit"]
      t.position = row["position"]
      t.balancing = row["balancing"]
      t.forwardfold = row["forwardfold"]
      t.legstrengthening = row["legstrengthening"]
      t.legstretching = row["legstretching"]
      t.corestrengthening = row["corestrengthening"]
      t.hipstrengthening = row["hipstrengthening"]
      t.hipopening = row["hipopening"]
      t.armshoulderstrengthening = row["armshoulderstrengthening"]
      t.armshoulderstretching = row["armshoulderstretching"]
      t.backstrengethening  = row["backstrengthening"]
      t.backstretching = row["backstretching"]
      t.backbending = row["backbending"]
      t.twisting = row["twisting"]
      t.sidebending = row["sidebending"]
      t.save
      puts row.to_hash
    end
  end

end
