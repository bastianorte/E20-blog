Post.destroy_all
User.destroy_all

10.times do |i|
  u = User.create(name: "User #{i}", email: "usuario#{i}@hotmail.com", password: 123456)
  p = Post.create(title: "Post #{i}",content: "contenido#{i}", user: u)
  10.times do |j|
    c = p.comments.build(content: "comentario #{j} del usuario #{i}", user: u, post: p)
    c.save!
  end
end
