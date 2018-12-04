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
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "balancing.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Balance.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "armshoulderstrengthening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Armshoulderstrengthening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "armshoulderstretching.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Armshoulderstretching.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "backbending.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Backbending.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "backstrengthening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Backstrengthening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "backstretching.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Backstretching.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "corestrengthening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Corestrengthening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end    

    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "forwardfold.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Forwardfold.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "hipopening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Hipopening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "hipstrengthening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Hipstrengthening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "legstrengthening.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Legstrengthening.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "legstretching.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Legstretching.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "sidebending.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Sidebending.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "twisting.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Twisting.new
      t.pose_id = row["pose_id"]
      t.area = row["area"]
      t.save
      puts row.to_hash
    end
    
  end

end
