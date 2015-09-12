products model: Nova.Product, repo: Nova.Repo do
  default do
    name Faker.Commerce.product_name
    description to_string(Faker.Lorem.paragraphs(2))
    price Decimal.new(Faker.Commerce.price)
    sku Faker.Code.isbn
  end
end

variants model: Nova.Variant, repo: Nova.Repo do
  default do
    price Decimal.new(Faker.Commerce.price)
    sku Faker.Code.isbn
    product products.default
  end
end
