class ClothingItems {
  List<String> menClothing = [
    "T-shirt",
    "Jeans",
    // "Suit",
    "Shirt",
    "Jacket",
    "Shorts",
    "Trousers",
    "Sweater",
    "Hoodie",
    "Coat",
    "Tie",
    "Socks",
    "Underwear",
    "Pajamas",
    "Vest",
    "Blazer",
    "Polo shirt",
    "Cardigan",
    "Cargo pants",
    "Sweatshirt",
  ];

  final List<String> menSuitCollection = [
    "Classic Two-Piece Suit",
    "Double-Breasted Suit",
    "Slim-Fit Suit",
    "Tuxedo",
    "Linen Suit",
    "Pinstripe Suit",
    "Shawl Collar Suit",
    "Seersucker Suit",
    "Three-Piece Suit",
    "Velvet Suit",
  ];
  List<String> menShoes = [
    "Sneakers",
    "Oxfords",
    "Loafers",
    "Boat Shoes",
    "Derby Shoes",
    "Monk Straps",
    "Chelsea Boots",
    "Chukka Boots",
    "Work Boots",
    "Dress Boots",
    "Slippers",
    "Moccasins",
    "Espadrilles",
    "Wingtip Shoes",
    "Cap Toe Shoes",
    "Penny Loafers",
    "Brogues",
  ];
  List<String> womenClothing = [
    "Dress",
    "Blouse",
    "Bikini",
    "Skirt",
    "Jacket",
    "Coat",
    "Trousers",
    "Jeans",
    "T-shirt",
    "Sweater",
    "Cardigan",
    "Shirt",
    "Blazer",
    "Hoodie",
    "Shorts",
    "Leggings",
    "Swimsuit",
    "Pajamas",
    "Tights",
    "Vest",
    "Tank top",
  ];
  List<String> womenHats = [
    "Fedora",
    "Cloche",
    "Wide-Brim Hat",
    "Bucket Hat",
    "Beret",
    "Sun Hat",
    "Panama Hat",
    "Pillbox Hat",
    "Beanie",
    "Straw Hat",
    "Newsboy Cap",
    "Fascinator",
  ];
  List<String> womensHighHeels = [
    "Stiletto heels",
    "Wedge heels",
    "Platform heels",
    "Kitten heels",
    "Pump heels",
    "Ankle strap heels",
    "Peep-toe heels",
    "Slingback heels",
    "Block heels",
    "Cone heels",
  ];
  List<String> boysClothing = [
    "T-shirt",
    "Jeans",
    "Shorts",
    "Sweater",
    "Hoodie",
    "Jacket",
    "Shirt",
    "Pants",
    "Coat",
    "Suit",
    "Socks",
    "Shoes",
    "Hat",
    "Gloves",
    "Scarf",
    "Boots",
  ];
  List<String> girlClothes = [
    "Dress",
    "Skirt",
    "Blouse",
    "T-shirt",
    "Leggings",
    "Pants",
    "Shorts",
    "Jacket",
    "Coat",
    "Sweater",
    "Cardigan",
    "Hoodie",
    "Jeans",
    "Tights",
    "Bikini",
    "Swimsuit",
    "Pyjamas",
    "Shoes",
    "Sandals",
    "Boots",
    "Hat",
    "Scarf",
    "Gloves",
  ];
  List<String> childrensShoes = [
    "Sneakers",
    "Sandals",
    "Boots",
    "Dress Shoes",
    "Running Shoes",
    "Slippers",
    "Rain Boots",
    "Canvas Shoes",
    "Hiking Boots",
    "Clogs",
  ];
  List<String> necklaces = [
    "Diamond Necklace",
    "Pearl Necklace",
    "Sapphire Necklace",
    "Ruby Necklace",
    "Emerald Necklace",
    "Gold Chain Necklace",
    "Platinum Necklace",
    "Crystal Pendant Necklace",
    "Vintage Necklace",
    "Choker Necklace",
    "Layered Necklace",
    "Heart-Shaped Necklace",
    "Birthstone Necklace",
    "Bar Necklace",
    "Statement Necklace",
    "Pendant Necklace",
    "Collar Necklace",
    "Tennis Necklace",
  ];

  final Map<String, double> prices = {
    "T-shirt": 20.0,
    "Jeans": 50.0,
    "Suit": 200.0,
    "Shirt": 30.0,
    "Jacket": 80.0,
    "Shorts": 25.0,
    "Trousers": 45.0,
    "Sweater": 60.0,
    "Hoodie": 55.0,
    "Coat": 100.0,
    "Tie": 15.0,
    "Socks": 5.0,
    "Underwear": 10.0,
    "Pajamas": 20.0,
    "Vest": 25.0,
    "Blazer": 90.0,
    "Polo shirt": 35.0,
    "Cardigan": 70.0,
    "Cargo pants": 40.0,
    "Sweatshirt": 55.0,
    "Classic Two-Piece Suit": 250.0,
    "Double-Breasted Suit": 280.0,
    "Slim-Fit Suit": 220.0,
    "Tuxedo": 300.0,
    "Linen Suit": 150.0,
    "Pinstripe Suit": 260.0,
    "Shawl Collar Suit": 270.0,
    "Seersucker Suit": 180.0,
    "Three-Piece Suit": 290.0,
    "Velvet Suit": 320.0,
    "Sneakers": 70.0,
    "Oxfords": 90.0,
    "Loafers": 80.0,
    "Boat Shoes": 60.0,
    "Derby Shoes": 85.0,
    "Monk Straps": 95.0,
    "Chelsea Boots": 100.0,
    "Chukka Boots": 80.0,
    "Work Boots": 120.0,
    "Dress Boots": 110.0,
    "Slippers": 25.0,
    "Moccasins": 50.0,
    "Espadrilles": 40.0,
    "Wingtip Shoes": 85.0,
    "Cap Toe Shoes": 75.0,
    "Penny Loafers": 80.0,
    "Brogues": 95.0,
    "Dress": 150.0,
    "Blouse": 50.0,
    "Skirt": 45.0,
    "Leggings": 30.0,
    "Swimsuit": 35.0,
    "Tights": 15.0,
    "Tank top": 20.0,
    "Fedora": 35.0,
    "Cloche": 30.0,
    "Wide-Brim Hat": 40.0,
    "Bucket Hat": 25.0,
    "Beret": 20.0,
    "Sun Hat": 30.0,
    "Panama Hat": 50.0,
    "Pillbox Hat": 40.0,
    "Beanie": 15.0,
    "Straw Hat": 20.0,
    "Newsboy Cap": 25.0,
    "Fascinator": 50.0,
    "Stiletto heels": 90.0,
    "Wedge heels": 70.0,
    "Platform heels": 80.0,
    "Kitten heels": 60.0,
    "Pump heels": 85.0,
    "Ankle strap heels": 75.0,
    "Peep-toe heels": 80.0,
    "Slingback heels": 70.0,
    "Block heels": 70.0,
    "Cone heels": 65.0,
    "Shoes": 60.0,
    "Hat": 20.0,
    "Gloves": 15.0,
    "Scarf": 25.0,
    "Boots": 80.0,
    "Pants": 45.0,
    "Bikini": 40.0,
    "Pyjamas": 30.0,
    "Sandals": 40.0,
    "Dress Shoes": 90.0,
    "Running Shoes": 50.0,
    "Rain Boots": 60.0,
    "Canvas Shoes": 40.0,
    "Hiking Boots": 70.0,
    "Clogs": 35.0,
    "Diamond Necklace": 500.0,
    "Pearl Necklace": 250.0,
    "Sapphire Necklace": 350.0,
    "Ruby Necklace": 300.0,
    "Emerald Necklace": 400.0,
    "Gold Chain Necklace": 200.0,
    "Platinum Necklace": 600.0,
    "Crystal Pendant Necklace": 150.0,
    "Vintage Necklace": 100.0,
    "Choker Necklace": 80.0,
    "Layered Necklace": 75.0,
    "Heart-Shaped Necklace": 90.0,
    "Birthstone Necklace": 120.0,
    "Bar Necklace": 45.0,
    "Statement Necklace": 85.0,
    "Pendant Necklace": 30.0,
    "Collar Necklace": 75.0,
    "Tennis Necklace": 55.0,
  };

  final Map<String, String> urlList = {
    "T-shirt":
        "https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Jeans":
        "https://images.pexels.com/photos/6843231/pexels-photo-6843231.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Suit":
        "https://images.pexels.com/photos/3755706/pexels-photo-3755706.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Shirt":
        "https://images.pexels.com/photos/3764571/pexels-photo-3764571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Jacket":
        "https://images.pexels.com/photos/1816644/pexels-photo-1816644.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Shorts":
        "https://images.pexels.com/photos/3228855/pexels-photo-3228855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Trousers":
        "https://images.pexels.com/photos/1082528/pexels-photo-1082528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Sweater":
        "https://images.pexels.com/photos/189199/pexels-photo-189199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Hoodie":
        "https://images.pexels.com/photos/6443071/pexels-photo-6443071.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Coat":
        "https://images.pexels.com/photos/4427815/pexels-photo-4427815.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Tie":
        "https://images.pexels.com/photos/130855/pexels-photo-130855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Socks":
        "https://images.pexels.com/photos/1679769/pexels-photo-1679769.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Underwear":
        "https://images.pexels.com/photos/4980313/pexels-photo-4980313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Pajamas":
        "https://images.pexels.com/photos/5727916/pexels-photo-5727916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Vest":
        "https://images.pexels.com/photos/3094552/pexels-photo-3094552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Blazer":
        "https://images.pexels.com/photos/7693239/pexels-photo-7693239.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Polo shirt":
        "https://images.pexels.com/photos/3228908/pexels-photo-3228908.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Cardigan":
        "https://images.pexels.com/photos/1076333/pexels-photo-1076333.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Cargo pants":
        "https://images.pexels.com/photos/6723925/pexels-photo-6723925.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Sweatshirt":
        "https://images.pexels.com/photos/10349971/pexels-photo-10349971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Classic Two-Piece Suit":
        "https://images.pexels.com/photos/3755706/pexels-photo-3755706.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Double-Breasted Suit":
        "https://www.suitsexpert.com/wp-content/uploads/2020/02/double-breasted-suits-guide.jpg",
    "Slim-Fit Suit":
        "https://images.pexels.com/photos/18516875/pexels-photo-18516875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Tuxedo":
        "https://images.pexels.com/photos/883362/pexels-photo-883362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Linen Suit":
        "https://images.pexels.com/photos/3760514/pexels-photo-3760514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Pinstripe Suit":
        "https://images.pexels.com/photos/450212/pexels-photo-450212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Shawl Collar Suit":
        "https://www.bondsuits.com/wp-content/uploads/2018/01/Living-Daylights-Shawl-Collar-Dinner-Jacket.jpg",
    "Seersucker Suit":
        "https://d3m7xw68ay40x8.cloudfront.net/assets/2015/07/28200331/seersucker.jpg",
    "Three-Piece Suit":
        "https://media.gq-magazine.co.uk/photos/61fd48f29e6a5729a6108d71/4:3/w_1440,h_1080,c_limit/03022022_3_HP.jpeg",
    "Velvet Suit":
        "https://media.gq-magazine.co.uk/photos/637cb6e9055e63c4106cb0f1/1:1/w_919,h_919,c_limit/VelvetSuit_HP_Heidi.jpg",
    "Sneakers":
        "https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Oxfords":
        "https://images.pexels.com/photos/186037/pexels-photo-186037.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Loafers":
        "https://images.pexels.com/photos/9992899/pexels-photo-9992899.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Boat Shoes":
        "https://www.chatham.co.uk/media/catalog/category/1.10_By_Chatham_G2_1.jpg",
    "Derby Shoes":
        "https://cdn.shopify.com/s/files/1/0521/9693/3824/t/4/assets/084113c845b1--Oxford-Body-01-849b9f_800x.progressive.jpg?v=1661526667",
    "Monk Straps":
        "https://i0.wp.com/shoegazing.com/wp-content/uploads/2016/02/historia-munksko-2.jpg?resize=1024%2C700&ssl=1&is-pending-load=1",
    "Chelsea Boots":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Chelsea_boot%2C_black.jpg/1200px-Chelsea_boot%2C_black.jpg",
    "Chukka Boots":
        "https://huttonboots.com/cdn/shop/articles/hutton-playtime-chukka-boots.jpg?v=1647439447&width=1500",
    "Work Boots": "https://i.ebayimg.com/images/g/gy8AAOSws41kEOga/s-l800.jpg",
    "Dress Boots":
        "https://d2w9m16hs9jc37.cloudfront.net/dimg/blog/2021/02/botin_2.jpg",
    "Slippers":
        "https://cdn.pixabay.com/photo/2015/04/03/06/50/slippers-704705_1280.jpg",
    "Moccasins":
        "https://assets.bigcartel.com/product_images/189335633/Moccs_-_6.jpg?auto=format&fit=max&w=2000",
    "Espadrilles":
        "https://cdn.pixabay.com/photo/2019/08/17/09/30/boots-4411802_1280.jpg",
    "Wingtip Shoes":
        "https://cdn.pixabay.com/photo/2016/09/21/12/18/wingtip-1684696_1280.jpg",
    "Cap Toe Shoes":
        "https://images.pexels.com/photos/1704683/pexels-photo-1704683.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Penny Loafers":
        "https://tgcollection.com.au/cdn/shop/products/Bourke-Brwn_5000x.jpg?v=1651036443",
    "Brogues":
        "https://images.pexels.com/photos/6766308/pexels-photo-6766308.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Dress":
        "https://images.pexels.com/photos/6214193/pexels-photo-6214193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Blouse":
        "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Skirt":
        "https://images.pexels.com/photos/1488507/pexels-photo-1488507.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Leggings":
        "https://images.pexels.com/photos/3822777/pexels-photo-3822777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Swimsuit":
        "https://images.pexels.com/photos/3722178/pexels-photo-3722178.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Tights":
        "https://images.pexels.com/photos/5771801/pexels-photo-5771801.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Tank top":
        "https://images.pexels.com/photos/8764961/pexels-photo-8764961.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Fedora":
        "https://cdn.pixabay.com/photo/2015/07/28/13/15/life-864348_1280.jpg",
    "Cloche":
        "https://images.pexels.com/photos/9984305/pexels-photo-9984305.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Wide-Brim Hat":
        "https://cdn.pixabay.com/photo/2019/09/29/10/37/wide-brimmed-hat-4512874_1280.jpg",
    "Bucket Hat":
        "https://images.pexels.com/photos/2976288/pexels-photo-2976288.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Beret":
        "https://images.pexels.com/photos/10057709/pexels-photo-10057709.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Sun Hat":
        "https://images.pexels.com/photos/33622/fashion-model-beach-hat.jpg?auto=compress&cs=tinysrgb&w=1600",
    "Panama Hat":
        "https://images.pexels.com/photos/6328429/pexels-photo-6328429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Pillbox Hat":
        "data:image/jpeg;base64,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",
    "Beanie":
        "https://images.pexels.com/photos/831468/pexels-photo-831468.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Straw Hat":
        "https://images.pexels.com/photos/1263986/pexels-photo-1263986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Newsboy Cap":
        "https://images.pexels.com/photos/4862272/pexels-photo-4862272.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Fascinator":
        "https://images.pexels.com/photos/11494126/pexels-photo-11494126.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Stiletto heels":
        "https://images.pexels.com/photos/3682292/pexels-photo-3682292.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Wedge heels":
        "https://cdn.antaranews.com/cache/1200x800/2023/09/25/pexels-karen-laark-boshoff-8125844.jpg",
    "Platform heels":
        "https://images.pexels.com/photos/15925388/pexels-photo-15925388/free-photo-of-female-model-wearing-a-pink-dress-and-platform-heels-posing-outdoors.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Kitten heels":
        "https://img.id.my-best.com/content_section/beforehand_tips/4ebcd3b2ddd20fdee4cc2d14aeb6d8eb.jpeg?ixlib=rails-4.3.1&q=70&lossless=0&w=690&fit=max&s=f6f7431e6221f59aefbf22c785d96adb",
    "Pump heels":
        "https://images.pexels.com/photos/18465180/pexels-photo-18465180/free-photo-of-feet-in-black-pumps.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Ankle strap heels":
        "https://images.pexels.com/photos/17591638/pexels-photo-17591638/free-photo-of-model-in-purple-ankle-strap-block-heel-pumps.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Peep-toe heels":
        "https://images.pexels.com/photos/17591634/pexels-photo-17591634/free-photo-of-ankle-high-leather-stiletto-heels-with-lacing-at-the-back.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Slingback heels":
        "https://images.pexels.com/photos/949590/pexels-photo-949590.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Block heels":
        "https://images.pexels.com/photos/1942880/pexels-photo-1942880.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Cone heels":
        "https://images.pexels.com/photos/5772130/pexels-photo-5772130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Shoes":
        "https://images.pexels.com/photos/47220/shoes-pregnancy-child-clothing-47220.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Hat":
        "https://images.pexels.com/photos/18990402/pexels-photo-18990402/free-photo-of-boy-sitting-on-leaves-and-playing-with-toy-truck.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Gloves":
        "https://cdn.pixabay.com/photo/2015/09/15/03/30/children-gloves-940432_1280.jpg",
    "Scarf":
        "https://cdn.pixabay.com/photo/2021/01/23/18/40/child-5943325_1280.jpg",
    "Boots":
        "https://cdn.pixabay.com/photo/2021/03/13/03/35/leather-hiking-boots-6090992_1280.jpg",
    "Pants":
        "https://images.pexels.com/photos/5628759/pexels-photo-5628759.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Bikini":
        "https://images.pexels.com/photos/4552180/pexels-photo-4552180.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Pyjamas":
        "https://images.pexels.com/photos/10566197/pexels-photo-10566197.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Sandals":
        "https://cdn.pixabay.com/photo/2015/04/03/06/50/slippers-704705_1280.jpg",
    "Dress Shoes":
        "https://images.pexels.com/photos/7055305/pexels-photo-7055305.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Running Shoes":
        "https://images.pexels.com/photos/7432/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1600",
    "Rain Boots":
        "https://images.pexels.com/photos/668355/pexels-photo-668355.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Canvas Shoes":
        "https://cdn.pixabay.com/photo/2020/06/14/21/34/shoes-5299481_1280.jpg",
    "Hiking Boots":
        "https://cdn.pixabay.com/photo/2021/03/13/03/35/leather-hiking-boots-6090992_1280.jpg",
    "Clogs":
        "https://cdn.pixabay.com/photo/2012/02/28/15/41/footwear-18399_1280.jpg",
    "Diamond Necklace":
        "https://cdn.pixabay.com/photo/2015/01/18/11/10/lady-602881_1280.jpg",
    "Pearl Necklace":
        "https://cdn.pixabay.com/photo/2015/10/01/15/14/beads-967179_1280.jpg",
    "Sapphire Necklace":
        "https://images.pexels.com/photos/2697616/pexels-photo-2697616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Ruby Necklace":
        "https://images.pexels.com/photos/9030139/pexels-photo-9030139.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Emerald Necklace":
        "https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Gold Chain Necklace":
        "https://images.pexels.com/photos/11655516/pexels-photo-11655516.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Platinum Necklace":
        "https://images.pexels.com/photos/618701/pexels-photo-618701.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Crystal Pendant Necklace":
        "https://images.pexels.com/photos/7134458/pexels-photo-7134458.jpeg?auto=compress&cs=tinysrgb&w=1600",
    "Vintage Necklace":
        "https://images.pexels.com/photos/17555289/pexels-photo-17555289/free-photo-of-pearl-necklace-with-a-dark-gem-stone.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Choker Necklace":
        "https://images.pexels.com/photos/14825259/pexels-photo-14825259.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Layered Necklace":
        "https://images.pexels.com/photos/18897120/pexels-photo-18897120/free-photo-of-portrait-of-a-bride-wearing-a-veil-and-an-ornate-dress.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Heart-Shaped Necklace":
        "https://images.pexels.com/photos/4595722/pexels-photo-4595722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Birthstone Necklace":
        "https://cdn.pixabay.com/photo/2016/06/03/12/25/sapphire-1433293_1280.jpg",
    "Bar Necklace":
        "https://i.pinimg.com/736x/2e/58/58/2e5858fe2e22291aa6e8952b8ffdcd7a.jpg",
    "Statement Necklace":
        "https://i.pinimg.com/736x/bd/ab/7a/bdab7aec6b5f0cfb5752626f7f441823.jpg",
    "Pendant Necklace":
        "https://lh4.googleusercontent.com/aFjsloSZR9RcfRvzTHagbpzY4mIiXHpCnJxEm4Sz-46cPjYY65cyXBBPoi7utcd0lUXMHgivkq8CvBH9ZwS7F39QlAvnIlep5kPYaTn8Ijw-M92ArqVmlssyKmrAicvaD2AKAvdt",
    "Collar Necklace":
        "https://garrard.com/wp-content/uploads/2021/11/Garrard-Albemarle-High-Jewellery-Diamond-Collar-Necklace-In-18ct-White-Gold-2017323-earrings-2017324-on-model-2000x2000.jpg",
    "Tennis Necklace":
        "https://auratenewyork.com/cdn/shop/products/Web_5M3A9698-Edit2_1200x.jpg?v=1699021737",
  };
}
