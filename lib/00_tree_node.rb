class PolyTreeNode
  attr_reader :parent, :children, :value
  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(parent)
    if parent.nil?
      return @parent = nil
    elsif @parent && @parent != parent
      @parent.children.slice!(@parent.children.index(self))
    end
    @parent = parent
    @parent.children.push(self) unless @parent.children.include?(self)
  end

  def add_child

  end
end