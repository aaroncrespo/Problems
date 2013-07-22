#iterative
def insert(head_node, new_node)
  worker = head_node
  while worker.next
    if worker.val < new_node.val <= worker.next.val
      new_node.next = worker.next
      worker.next = new_node
      return
    end
    worker = worker.next
  end
end

def insert(head_node, new_node)
  if head_node.val < new_node.val <= head_node.next.val
    new_node.next = head_node.next
    head_node.next = new_node
    return
  else
    insert(head_node.next, new_node)
  end
end

