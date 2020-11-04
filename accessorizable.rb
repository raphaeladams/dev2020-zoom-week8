# Accessorize
# Raphael Adams

module Accessorizable

  public

  def add_accessory(accessory)
    @accessories ||= []
    @accessories << accessory unless @accessories.include?(accessory)
  end

  def remove_accessory(accessory)
    if @accessories == nil || !@accessories.include?(accessory)
      raise "Unable to remove \"#{ accessory }\""
    else
      @accessories.delete(accessory)
    end
  end

  private

  def accessories_to_s
    unless @accessories == nil || @accessories.empty?
      print " with "
      @accessories.each do |a|
        print ", " unless a == @accessories.first || a == @accessories.last
        print " and " if a == @accessories.last && @accessories.size > 1
        print a
      end
    end
  end
  
end