export default eventHandler(async (event) => {
  const { title } = await readBody(event)

  const book = await useDrizzle()
    .insert(tables.books)
    .values({
      title,
    })
    .returning()
    .get()

  return book
})
