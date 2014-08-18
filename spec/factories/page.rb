FactoryGirl.define do
  factory :page do
    association :book
    page_number  "10"
    text      "Lorem ipsum dolor sit amet, no usu stet animal sanctus. Veri invenire ne per, omnesque vivendum nec ei, in vel modus scripta. Sea mundi vitae tation ex, graecis sapientem ex mei. Vim no invidunt dissentiunt, nulla altera civibus sea ex. Id ius aliquip volutpat vituperata, habeo quaerendum duo ex."

    image "image example should be JSON"
    sound "sound example no idea mp3?"


  end
end