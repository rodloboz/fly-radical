require 'chronic_duration'

DIFFICULTY = ["easy", "beginner", "medium", "experienced", "pro", "daredevil"]

SPORTS = {
  water: ["surfing", "bodyboarding", "stand up paddle surfing", "windsurfing", "kitesurfing", "wakeboarding", "kayaking", "rafting", "jet skiing", "water skiing", "scuba diving", "shark diving"],
  winter: ["snowboarding", "skiing", "ice skating", "sledding"],
  air: ["bungee jumping", "sky diving", "paragliding", "hang gliding", "wing suit", "base jumping"],
  land: ["inline skating", "rock climbing", "trekking", "motocross", "land windsurfing", "skateboarding", "mountaneeiring"]
}

PREFIX_TITLES = ["discovering", "wild", "super", "great", "one-time", "amazing", "the best", "crazy", "unique", "brutal", "insane", "extreme", "", "once in a lifetime", "", "", "", "", "awesome"]

SUFFIX_TITLES = ["experience", "lesson", "tour", "for beginners", "for seasoned pros", "for daredevils", "with a smile", "initiation", "trip", "for desperados", "mission impossible"]

avatars = ["https://randomuser.me/api/portraits/men/19.jpg", "https://randomuser.me/api/portraits/men/59.jpg", "https://randomuser.me/api/portraits/men/59.jpg", "https://randomuser.me/api/portraits/women/87.jpg", "https://randomuser.me/api/portraits/women/15.jpg", "https://randomuser.me/api/portraits/men/51.jpg", "https://randomuser.me/api/portraits/women/47.jpg", "https://randomuser.me/api/portraits/women/33.jpg", "https://randomuser.me/api/portraits/women/16.jpg", "https://randomuser.me/api/portraits/women/17.jpg", "https://randomuser.me/api/portraits/men/40.jpg", "https://randomuser.me/api/portraits/women/0.jpg", "https://randomuser.me/api/portraits/men/64.jpg", "https://randomuser.me/api/portraits/men/18.jpg", "https://randomuser.me/api/portraits/men/96.jpg", "https://randomuser.me/api/portraits/women/13.jpg", "https://randomuser.me/api/portraits/men/10.jpg", "https://randomuser.me/api/portraits/women/31.jpg", "https://randomuser.me/api/portraits/women/55.jpg", "https://randomuser.me/api/portraits/women/87.jpg", "https://randomuser.me/api/portraits/men/50.jpg"]

ADDRESSES = [{address: "R. Silva Lopes 31", postal_code: "8600-623", city: "Lagos", country: "Portugal"}, {address: "R. Pintor Falcão Trigoso", postal_code: "8600-610", city: "Lagos", country: "Portugal"}, {address: "Estrada da Albardeira", postal_code: "8600-302", city: "Lagos", country: "Portugal"}, {address: "Apart.1092", postal_code: "8670-156", city: "Aljezur", country: "Portugal"}, {address: "Praia do Guincho Estalagem Muchaxo", postal_code: "2750-642", city: "Cascais", country: "Portugal"}, {address: "R. São Sebastião da Pedreira 53B", postal_code: "1050-010", city: "Lisboa", country: "Portugal"}, { address: "R. António Ferro", postal_code: "2765-218", city: "São João do Estoril", country: "Portugal" }, { address: "Sample Skate Shop, 21", postal_code: "1200-062", city: "Lisboa", country: "Portugal"}, {address: "Estr. do Rodízio 76", postal_code: "2705-340", city: "Colares", country: "Portugal"}, {address: "R. Prudêncio Franco da Trindade 21A", postal_code: "2655-344", city: "Ericeira", country: "Portugal"}, {address: "Avenida do Mar 97, Ferrel, Fracção C", postal_code: "2520-101", city: "Casais do Baleal", country: "Portugal"}, {address: "Avenida da Praia, urbanização percebal, lt 2lj Consolação", postal_code: "2525-431", city: "Atouguia da Baleia"}, {adress: "R. Casal dos Violas No.6", postal_code: "2520-360", city: "Peniche", country: "Portugal"}, {address: "R. Envolvente do Monte Alto 60", postal_code: "3080-214", city: "Figueira da Foz", country: "Portugal"}, {address: "v. José Estevão, s/ Nº Extremo Sul, Praia da Costa Nova", postal_code: "3830-453", city: "Gafanha da Encarnaçao", country: "Portugal"}, {address: "Av. dos Bombeiros Voluntários do Porto 18", postal_code: "3880-352", city: "Ovar", country: "Portugal"}, {address: "R. Gil Eanes 172", postal_code: "3885-582", city: "Esmoriz", country: "Portugal"}, {address: "Av. Nuno Tristão 241", postal_code: "4405-580", city: "Valadares", country: "Portugal"}, {address: "Estrada da Circunvalação 16002", postal_code: "4450-096", city: "Matosinhos", country: "Portugal"}, {address: "Av. Júlio Graça 380", postal_code: "4480-072", city: "Vila do Conde", country: "Portugal"}, {address: "Caminho Padre Manuel de Sá Pereira", postal_code: "4740", city: "Apúlia", country: "Portugal"}, {address: "R. do Souto 87", postal_code: "4700-329", city: "Braga", country: "Portugal"}, {address: "Av. José Bonifácio de Andrade e Silva 1", postal_code: "3044-520", city:  "Coimbra", country: "Portugal"}, {address: "Praça João do Rio 7", postal_code: "1000-180", city: "Lisboa", country: "Portugal"}, {address: "Rua Rodrigues Faria, 103, Piso 4.4.1", postal_code: "1300-501", city: "Lisboa", country: "Portugal"}, {address: "Av. Marginal 23", postal_code: "2775-604", city: "Carcavelos", country: "Portugal"}, {address: "Av. Eugene Levy", postal_code: "2705-304", city: "Sintra", country: "Portugal"}, {address: "R. Prudêncio Franco da Trindade 21A", postal_code: "2655-344", city: "Ericeira", country: "Portugal"}, {address: "Av. São Sebastião 14I", postal_code: "2655-270", city: "Ericeira", country: "Portugal"}]

school_prefixes = ["sunshine", "sunset", "ocean", "le wagon", "radical", "radikal", "extreme sports", "crazy squirrel", "pink elephant", "monster", "water & rock", "pipeline"]

school_endings = ["school", "camp", "center", "lodge", "hostel", "resort", "base", "base camp", "skilzz", "academy", "foundation"]

DURATIONS = ["2 hours", "3 hours", "4 hours", "5 hours", "6 hours", "one day", "two days", "three days", "five days", "six days", "1 week", "2 weeks", "3 weeks" ]


#Seed Users
20.times do
  user = User.new
  user.email = Faker::Internet.unique.email
  user.password = Faker::Internet.password(8)
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.avatar_url = avatars.shift
  user.save!
end

# Seed Category and Sport
SPORTS.each do |key, array|
  category = Category.create(name: key.to_s)
  array.each do | sport|
    category.sports.create(name: sport)
  end
end

# Seed Schools
users = User.first(5)
users.each do |user|
  school = user.schools.new
  full_name = "#{school_prefixes.sample} #{school_endings.sample}"
  full_name.split.map(&:capitalize).join(' ')
  school.name = full_name
  school.about = Faker::Lorem.paragraphs(rand(1..3))
  address = ADDRESSES.sample
  school.address = address[:address]
  school.postal_code = address[:postal_code]
  school.city = address[:city]
  school.country = address[:country]
  school.website = Faker::Internet.url
  school.email = Faker::Internet.email
  school.phone = Faker::PhoneNumber.phone_number
  school.save!
end

#Seed Lessons
schools = School.all
schools.each do |school|
  rand(2..6).times do
    lesson = school.lessons.new
    lesson.sport_id = rand(1..Sport.count)
    full_name = "#{PREFIX_TITLES.sample} #{lesson.sport.name} #{SUFFIX_TITLES.sample}"
    full_name.split.map(&:capitalize).join(' ')
    lesson.name = full_name
    lesson.description = Faker::ChuckNorris.fact
    lesson.equipment_provided = Faker::Music.instrument
    lesson.equipment_required = Faker::Music.instrument
    lesson.difficulty = DIFFICULTY.sample
    lesson.cancellation_policy = "48h"
    address = ADDRESSES.sample
    lesson.address = address[:address]
    lesson.postal_code = address[:postal_code]
    lesson.city = address[:city]
    lesson.country = address[:country]
    lesson.price = rand(21..399)
    lesson.duration =
    lesson.group_size
    lesson.save!
  end
end

