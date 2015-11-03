class Tree
  attr_accessor :children, :node_name

  def initialize(treeHash)
    @node_name = treeHash.keys.first
    @children = Array.new
    
    treeHash[@node_name].each_pair do |key, value|
        @children.push Tree.new(key => value)
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new(
    {'grandpa' => 
        {'dad' => 
            {'child1' => {}, 
             'child2' => {}},
         'uncle' => 
            {'child3' => {}, 
             'child4' => {}}}})
             
puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name}

puts 'visiting entire tree'
ruby_tree.visit_all {|node| puts node.node_name}

