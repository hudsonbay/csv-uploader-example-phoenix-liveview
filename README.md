# CSV uploader example

This is a Phoenix LiveView that demonstrates how handle file uploads.

But instead of an image file, we’ll use LiveView uploads in our app to allow users to upload a CSV file. We’ll take the CSV data, save it, and then display it in our app

| Library             | Version |
| ------------------- | ------- |
| `phoenix`           | 1.6.0   |
| `phoenix_live_view` | 0.16.0  |

This projects models the scenario of a **product import via file upload**.

As an user, you should be able to upload a csv to import products into the database (_postgres_). This data will then be shown in a list.

The upload will work multiple times and always update the corresponding products.

Lines in the CSV represent steel products.

An example CSV is in the repo.

Here is some help to understand the CSV structure:
**PART_NUMBER** = identifier for a product
**BRANCH_ID** = which branch produces the product (TUC = tucson, CIN = cincinnati)
**PART_PRICE** = price in USD
**SHORT_DESC** = short description text about the product

## Concepts:
- Live components
- Live uploads

---

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
