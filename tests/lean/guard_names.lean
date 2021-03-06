inductive tree (α : Type)
| leaf : tree
| node (left : tree) (val : α) (right : tree) : tree

constant foo {α : Type} : tree α → tree α

example {α : Type} (a b : tree α) : foo a = a :=
begin
  guard_names { induction a },
  { admit },
  { intros l v r ih_l ih_r, trace_state, admit },
end
