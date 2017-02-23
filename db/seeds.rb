require 'chronic_duration'

PHOTOS = %w(https://www.surfingindia.net/files/surf-files/u9/India_Surf_Tours_-_17__1_.jpg
https://s-media-cache-ak0.pinimg.com/originals/5c/3f/2f/5c3f2f859e3a0aa177e8acabb168c82f.jpg
http://exoticvoyage.com/wp-content/uploads/2015/04/surfing1.jpg
http://surf-wax.co.uk/wp-content/uploads/2014/10/surf-the-wave.jpg
https://i.ytimg.com/vi/b6hoBp7Hk-A/maxresdefault.jpg
http://www.mrwallpaper.com/wallpapers/surfing-big-wave-sunset.jpg
http://www.surfingdubai.com/img/slider/slide-2.jpg
http://cdn.webninjashops.com/boardshop/images/content_images/bodyboarding.jpg
http://www.bodyboard-holidays.com/wp-content/uploads/photo-gallery/Costa%20Rica%20Waves/costa-rica-2960.jpg
https://en.freshsurf.de/wp-content/uploads/2016/02/Salomoon-moore-Bodyboarding.jpg
https://static1.squarespace.com/static/5009bba4e4b016a023bf6030/t/5581ec20e4b0a5db48a55f56/1434577956896/Snowboarding-Wallpaper.jpg?format=1500w
http://snowbrains.com/wp-content/uploads/2014/01/url-2.jpeg
http://www.statisticbrain.com/wp-content/uploads/2015/09/snowboarding-industry-statistics.png
http://www.salzburgersportwelt.com/img/heads/snowboard_klein.jpg
http://www.wantedinrome.com/wp-content/uploads/2015/02/skiing-86491418.jpg
http://www.obertauern.com/fileadmin/_processed_/csm_skifahren_obertauern6_68776dc35c.jpg
http://www.grindtv.com/wp-content/uploads/2015/11/PB-FP-450-1024x540.jpg
https://wrapper2.s3.amazonaws.com/wrapper2Image/4608/1430679086.5926/1362549861base-jumping-at-zakynthos-greece.jpg
http://i2.cdn.cnn.com/cnnnext/dam/assets/160112134102-03-base-jumping-landmarks-super-169.jpg
http://www.theplaidzebra.com/wp-content/uploads/2014/11/2_BASE-Jumper-Explains-The-Importance.jpg
https://i.ytimg.com/vi/YSuo0j2xsj8/maxresdefault.jpg
http://image3.redbull.com/rbcom/010/2015-05-04/1331720977298_3/0012/0/382/0/1713/1999/1500/3/detroit-skateboarding.jpg
https://i.ytimg.com/vi/X9tMocUR-80/maxresdefault.jpg
http://image2.redbull.com/rbcom/010/2017-02-10/1331844245442_2/0012/0/0/0/1498/2999/1500/2/chris-russell-madonna-vielle-st-girons-kevin-metallier.jpg
https://static1.squarespace.com/static/51d6fea9e4b0f798b539e0ca/51d71192e4b05a25fc1d485a/51e43c59e4b097ec7f8c6f29/1373912156353/Skateboarding-22.jpg?format=1000w
https://c1.staticflickr.com/4/3128/2716765679_85a13b662f_b.jpg
http://eskipaper.com/images/xgames-10.jpg
https://i.ytimg.com/vi/VUjF1fRw9sA/maxresdefault.jpg
http://cdn.paper4pc.com/images/motorcycle-racing-sports-motocross-dirt-storm-rain-sky-clouds-sunset-bike-motorbike-wallpaper-1.jpg
http://www.mxlarge.com/mxlarge/wp-content/uploads/2015/12/5567_Motocross-2015-Action_90302.jpg
http://www.cycleworld.com/sites/cycleworld.com/files/styles/large_1x_/public/images/2016/09/i-mjffld3-x2.jpg?itok=hbmZrqhJ&fc=50,50
http://www.jokesoftheday.net/jokes-archive/2016/07/18/Skydiving.jpg
https://i.ytimg.com/vi/apYEQlGlUAY/maxresdefault.jpg
http://www.balmers.com/wp-content/uploads/2015/05/Balmers-Skydive-3.jpg
https://s-media-cache-ak0.pinimg.com/originals/1b/9a/5c/1b9a5cbb7cc446f83f2b719e92e136ba.jpg
https://s-media-cache-ak0.pinimg.com/originals/74/1b/bb/741bbb3903d7d01da32eb80fba054e27.jpg
http://pop.h-cdn.co/assets/15/28/980x490/landscape-1436537168-shark-cage-web.jpg
https://upload.wikimedia.org/wikipedia/commons/d/d9/Sharks_outside_cage.jpg
http://www.uttarakhandincredible.com/wp-content/uploads/2016/07/bungee-jumping-in-rishikesh.jpg
https://farm6.staticflickr.com/5163/5248487731_bc546c1882_b.jpg
http://activeazur.wpengine.netdna-cdn.com/wp-content/uploads/2014/01/tignes-mountain-biking-3.jpg
https://i.ytimg.com/vi/61aM0DXpKkc/maxresdefault.jpg
http://www.pension-gabi.at/fileadmin/_processed_/csm_saalbach-hinterglemm-by-nathan-hughes-01_332c1a9cee.adaptive.jpg
http://holidaysgenius.com/media/uploads/2016/04/aaaaaa.jpg
http://dseghcenter.info/images/paragliding-uhd-widescreen-ultra_119554.jpg
https://i.ytimg.com/vi/ELcvsp8wX4E/maxresdefault.jpg
http://kitemallorca.com/wp-content/uploads/Kitesurfen-schule-auf-Mallorca-edmkpollensa-1038x576.png
http://www.dukite.com/wp-content/uploads/2011/12/crazyfly-action21.jpg)

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
  school.photo_urls = PHOTOS.sample(2)
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
    lesson.duration = ChronicDuration.parse(DURATIONS.sample)
    lesson.group_size = rand (1..9)
    lesson.photo_urls = PHOTOS.sample(2)
    lesson.save!
  end
end

