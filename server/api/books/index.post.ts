import slugify from 'slugify'

export default eventHandler(async (event) => {
  const { title, description, year, pages, price, creator } = await readBody(event)

  const slug = slugify(title, { lower: true })

  const book = await useDrizzle()
    .insert(tables.books)
    .values({
      slug,
      title,
      description,
      year,
      pages,
      price,
      creator,
    })
    .returning()
    .get()

  return book
})
