import { sqliteTable, text, integer } from 'drizzle-orm/sqlite-core'

export const books = sqliteTable('books', {
  id: integer('id').primaryKey({ autoIncrement: true }),
  title: text('name').notNull(),
  createdAt: integer('created_at', { mode: 'timestamp' }).default(new Date()),
})
