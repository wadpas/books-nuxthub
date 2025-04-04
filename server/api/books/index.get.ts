export default eventHandler(async () => {
  const books = await useDrizzle().select().from(tables.books).all()

  return books
})
