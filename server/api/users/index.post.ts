export default eventHandler(async (event) => {
  const { email, password, name, avatar, role } = await readBody(event)

  const slug = email.replace(/[@.]/g, '-').toLowerCase()
  const username = email.split('@')[0]

  const user = await useDrizzle()
    .insert(tables.users)
    .values({
      slug,
      email,
      username,
      password,
      name,
      avatar,
      role,
    })
    .returning()
    .get()

  return user
})
