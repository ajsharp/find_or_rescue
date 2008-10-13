module FindOrRescue
  def find_or_rescue(id)
    begin
      find(id)
    rescue ActiveRecord::RecordNotFound
      false
    end
  end
end
