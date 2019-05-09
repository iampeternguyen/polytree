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

  def add_child(child)
    child.parent = self
  end

  def remove_child(child)
    if @children.include?(child)
          child.parent = nil
    else
      raise "nodei s not a child"
    end
  end

end