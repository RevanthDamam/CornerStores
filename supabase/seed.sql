-- Seed file for AP cities (5 shops each in Visakhapatnam, Vijayawada, Guntur, Kurnool, Tirupati, Nellore, Kakinada, Rajahmundry, Anantapur)
TRUNCATE TABLE public.shops CASCADE;

INSERT INTO public.shops (
  owner_id, name, category, address, description, image, rating, price_level, is_open, phone, latitude, longitude
) VALUES
  -- 1. VISAKHAPATNAM (Vizag)
  (
    'seed-ap-vizag',
    'Sea Pearl Bakery & Patisserie',
    'Bakery',
    'Beach Road, Pandurangapuram, Visakhapatnam, Andhra Pradesh',
    'Artisanal cakes, fresh sourdough, and sea-view coffee counter.',
    'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=800&q=80',
    4.7, '$$', true, '+91 891 254 3110', 17.7126, 83.3182
  ),
  (
    'seed-ap-vizag',
    'Daspalla Executive Cafe',
    'Cafe',
    'Surya Bagh, Jagadamba Junction, Visakhapatnam, Andhra Pradesh',
    'Signature cold brews, filter kaapi, and coastal tiffin snacks.',
    'https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 891 256 4840', 17.7107, 83.3006
  ),
  (
    'seed-ap-vizag',
    'Waltair Book Stationers',
    'Books & Stationery',
    'Siripuram Main Road, Siripuram, Visakhapatnam, Andhra Pradesh',
    'Academic titles, regional fiction, and fine fountain pens.',
    'https://images.unsplash.com/photo-1526243741027-444d633d7365?auto=format&fit=crop&w=800&q=80',
    4.6, '$', true, '+91 891 270 5192', 17.7241, 83.3155
  ),
  (
    'seed-ap-vizag',
    'Rushikonda Organic Grocers',
    'Grocery',
    'Rushikonda IT Park Road, Visakhapatnam, Andhra Pradesh',
    'Local Araku valley coffee beans, organic millets, and farm fruits.',
    'https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=800&q=80',
    4.4, '$$', true, '+91 891 279 8831', 17.7818, 83.3772
  ),
  (
    'seed-ap-vizag',
    'Bay Breeze Sea Food & Grill',
    'Restaurant',
    'Lawsons Bay Colony, Visakhapatnam, Andhra Pradesh',
    'Fresh local catch, royyala vepudu, and traditional Andhra thalis.',
    'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=80',
    4.8, '$$$', true, '+91 891 253 9021', 17.7335, 83.3374
  ),

  -- 2. VIJAYAWADA
  (
    'seed-ap-vja',
    'Modern Cafe & Tiffin Center',
    'Cafe',
    'Besant Road, Governorpet, Vijayawada, Andhra Pradesh',
    'Iconic Babai hotel style butter idli, crispy pesaratlu, and chicory coffee.',
    'https://images.unsplash.com/photo-1554118811-1e0d58224f24?auto=format&fit=crop&w=800&q=80',
    4.8, '$', true, '+91 866 257 8822', 16.5088, 80.6277
  ),
  (
    'seed-ap-vja',
    'Prakasam Confectionery & Bakes',
    'Bakery',
    'MG Road, Labbipet, Vijayawada, Andhra Pradesh',
    'Rich plum cakes, puff pastries, and butter biscuits baked daily.',
    'https://images.unsplash.com/photo-1517433670267-08bbd4be890f?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 866 247 1190', 16.5012, 80.6480
  ),
  (
    'seed-ap-vja',
    'Krishna Valley Organic Store',
    'Grocery',
    'Benz Circle, Vijayawada, Andhra Pradesh',
    'Fresh daily produce, native spices, pulses, and cold-pressed oils.',
    'https://images.unsplash.com/photo-1578916171728-46686eac8d58?auto=format&fit=crop&w=800&q=80',
    4.6, '$$', true, '+91 866 249 3344', 16.4975, 80.6558
  ),
  (
    'seed-ap-vja',
    'Amaravati Silks & Handlooms',
    'Fashion',
    'Eluru Road, Governorpet, Vijayawada, Andhra Pradesh',
    'Handwoven Mangalagiri sarees, kurtas, and traditional handloom fabrics.',
    'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?auto=format&fit=crop&w=800&q=80',
    4.7, '$$$', true, '+91 866 257 6655', 16.5134, 80.6321
  ),
  (
    'seed-ap-vja',
    'Bhavani Island View Restaurant',
    'Restaurant',
    'Bhavanipuram, Vijayawada, Andhra Pradesh',
    'Riverside dining featuring Andhra fish curry, biryani, and veg meals.',
    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=800&q=80',
    4.3, '$$', true, '+91 866 241 8900', 16.5220, 80.5980
  ),

  -- 3. GUNTUR
  (
    'seed-ap-gtr',
    'Chilli City Kitchen & Biryani House',
    'Restaurant',
    'Lakshmipuram Main Road, Guntur, Andhra Pradesh',
    'Authentic fiery Guntur gongura mutton, natukodi pulusu, and meals.',
    'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=800&q=80',
    4.6, '$$', true, '+91 863 223 4511', 16.2945, 80.4365
  ),
  (
    'seed-ap-gtr',
    'Arundelpet Fresh Bakery',
    'Bakery',
    '7th Lane, Arundelpet, Guntur, Andhra Pradesh',
    'Fresh egg puffs, butter cookies, honey cakes, and sweet buns.',
    'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&w=800&q=80',
    4.4, '$', true, '+91 863 222 7890', 16.3050, 80.4410
  ),
  (
    'seed-ap-gtr',
    'Spices of Palnadu Grocery',
    'Grocery',
    'Kothapet Market, Guntur, Andhra Pradesh',
    'Export grade Guntur chillies, dry spice powders, and pulses.',
    'https://images.unsplash.com/photo-1534723452862-4c874018d66d?auto=format&fit=crop&w=800&q=80',
    4.7, '$', true, '+91 863 234 5678', 16.3120, 80.4550
  ),
  (
    'seed-ap-gtr',
    'Brodipet Coffee Studio',
    'Cafe',
    '4th Lane, Brodipet, Guntur, Andhra Pradesh',
    'Specialty bean blends, cold coffee, milkshakes, and light bites.',
    'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 863 224 8812', 16.3010, 80.4485
  ),
  (
    'seed-ap-gtr',
    'Amaravathi Ayurveda & Pharmacy',
    'Pharmacy',
    'Old Club Road, Guntur, Andhra Pradesh',
    'Prescription pharmaceuticals, herbal wellness remedies, and personal care.',
    'https://images.unsplash.com/photo-1586015555751-63c26d8331e3?auto=format&fit=crop&w=800&q=80',
    4.8, '$', true, '+91 863 225 6789', 16.3080, 80.4390
  ),

  -- 4. KURNOOL
  (
    'seed-ap-knl',
    'Kondareddy Buruju Sweet & Bakery',
    'Bakery',
    'Old Bus Stand Road, Kurnool, Andhra Pradesh',
    'Traditional Rayalaseema palakova, peda, and fresh morning baked puffs.',
    'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&w=800&q=80',
    4.7, '$', true, '+91 8518 221234', 15.8281, 78.0373
  ),
  (
    'seed-ap-knl',
    'Mourya Biryani & Tiffins',
    'Restaurant',
    'Nandyal Check Post, Kurnool, Andhra Pradesh',
    'Authentic Kurnool uggani bajji, ragi mudda, and spicy mutton biryani.',
    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=800&q=80',
    4.6, '$$', true, '+91 8518 245678', 15.8167, 78.0410
  ),
  (
    'seed-ap-knl',
    'Tungabhadra Cafe & Shakes',
    'Cafe',
    'NR Peta, Kurnool, Andhra Pradesh',
    'Strong filter coffee, mocktails, grilled sandwiches, and ice creams.',
    'https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb?auto=format&fit=crop&w=800&q=80',
    4.4, '$', true, '+91 8518 234120', 15.8320, 78.0440
  ),
  (
    'seed-ap-knl',
    'Rayalaseema Provision Stores',
    'Grocery',
    'Park Road, Kurnool, Andhra Pradesh',
    'Fresh local jowar, millets, local groundnuts, and provisions.',
    'https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=800&q=80',
    4.5, '$', true, '+91 8518 227890', 15.8240, 78.0320
  ),
  (
    'seed-ap-knl',
    'Fort View Fashion & Textiles',
    'Fashion',
    'Railway Station Road, Kurnool, Andhra Pradesh',
    'Traditional Gadwal and Dharmavaram sarees, dhotis, and readymades.',
    'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?auto=format&fit=crop&w=800&q=80',
    4.3, '$$', true, '+91 8518 229011', 15.8340, 78.0510
  ),

  -- 5. TIRUPATI
  (
    'seed-ap-tpt',
    'Saptagiri Tiffin & Meals',
    'Restaurant',
    'Alipiri Road, Tirupati, Andhra Pradesh',
    'Pure vegetarian Andhra tiffins, ghee roast dosa, and satvik meals.',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=800&q=80',
    4.8, '$', true, '+91 877 228 9010', 13.6380, 79.4120
  ),
  (
    'seed-ap-tpt',
    'Venkateswara Sweets & Bakes',
    'Bakery',
    'TK Street, Tirupati, Andhra Pradesh',
    'Ghee laddu, badusha, fresh cashew rolls, and savory mixtures.',
    'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=800&q=80',
    4.9, '$$', true, '+91 877 222 4567', 13.6290, 79.4210
  ),
  (
    'seed-ap-tpt',
    'Govinda Cafe & Refreshments',
    'Cafe',
    'Near Railway Station, Tirupati, Andhra Pradesh',
    'Fresh hot degree coffee, badam milk, and quick refreshments.',
    'https://images.unsplash.com/photo-1554118811-1e0d58224f24?auto=format&fit=crop&w=800&q=80',
    4.5, '$', true, '+91 877 225 6712', 13.6265, 79.4230
  ),
  (
    'seed-ap-tpt',
    'Spiritual Heritage Books & Arts',
    'Books & Stationery',
    'Gandhi Road, Tirupati, Andhra Pradesh',
    'Devotional literature, Vedic texts, stationery, and cultural souvenirs.',
    'https://images.unsplash.com/photo-1526243741027-444d633d7365?auto=format&fit=crop&w=800&q=80',
    4.7, '$', true, '+91 877 223 9988', 13.6310, 79.4180
  ),
  (
    'seed-ap-tpt',
    'Bala Mandir Natural Mart',
    'Grocery',
    'Bairagipatteda, Tirupati, Andhra Pradesh',
    'Organic mountain honey, cold-pressed gingelly oil, and organic grains.',
    'https://images.unsplash.com/photo-1578916171728-46686eac8d58?auto=format&fit=crop&w=800&q=80',
    4.6, '$$', true, '+91 877 224 1122', 13.6210, 79.4050
  ),

  -- 6. NELLORE
  (
    'seed-ap-nlr',
    'Nellore Chepala Pulusu Kitchen',
    'Restaurant',
    'GT Road, Nellore, Andhra Pradesh',
    'Famed Nellore spicy fish curry, prawn fry, and steamed rice.',
    'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=80',
    4.8, '$$', true, '+91 861 232 7711', 14.4426, 79.9865
  ),
  (
    'seed-ap-nlr',
    'Simhapuri Bakes & Cakes',
    'Bakery',
    'Trunk Road, Nellore, Andhra Pradesh',
    'Fresh fruit tarts, chocolate cakes, hot puffs, and tea rusks.',
    'https://images.unsplash.com/photo-1517433670267-08bbd4be890f?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 861 230 4455', 14.4480, 79.9890
  ),
  (
    'seed-ap-nlr',
    'Penna River Coffee Lounge',
    'Cafe',
    'Pogathota, Nellore, Andhra Pradesh',
    'Espresso bar, artisanal iced teas, sandwiches, and cheesecakes.',
    'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=800&q=80',
    4.6, '$$', true, '+91 861 233 8890', 14.4390, 79.9840
  ),
  (
    'seed-ap-nlr',
    'Molagolukulu Rice & Provisions',
    'Grocery',
    'Stonehousepet, Nellore, Andhra Pradesh',
    'Authentic Nellore raw rice varieties, pulses, and traditional spice mixes.',
    'https://images.unsplash.com/photo-1534723452862-4c874018d66d?auto=format&fit=crop&w=800&q=80',
    4.7, '$', true, '+91 861 234 1234', 14.4550, 79.9920
  ),
  (
    'seed-ap-nlr',
    'Dargamitta Health & Wellness',
    'Pharmacy',
    'Dargamitta, Nellore, Andhra Pradesh',
    'Emergency medicines, diagnostics, baby care, and general wellness products.',
    'https://images.unsplash.com/photo-1586015555751-63c26d8331e3?auto=format&fit=crop&w=800&q=80',
    4.4, '$', true, '+91 861 231 6677', 14.4320, 79.9750
  ),

  -- 7. KAKINADA
  (
    'seed-ap-kkd',
    'Subbayya Gari Mess & Kitchen',
    'Restaurant',
    'Cinema Road, Kakinada, Andhra Pradesh',
    'Classic Godavari butta bhojanam with podis, papads, and sweets.',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=800&q=80',
    4.9, '$$', true, '+91 884 237 8899', 16.9891, 82.2475
  ),
  (
    'seed-ap-kkd',
    'Kotaiah Gari Sweet Shop & Bakery',
    'Bakery',
    'Main Road, Kakinada, Andhra Pradesh',
    'Home of the famous original Kakinada gottam kaja and milk sweets.',
    'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&w=800&q=80',
    4.9, '$', true, '+91 884 236 1234', 16.9780, 82.2390
  ),
  (
    'seed-ap-kkd',
    'Smart City Coffee Hub',
    'Cafe',
    'Bhanugudi Junction, Kakinada, Andhra Pradesh',
    'Filter brew, iced frappes, loaded nachos, and grilled sandwiches.',
    'https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 884 235 9900', 16.9850, 82.2420
  ),
  (
    'seed-ap-kkd',
    'Port View Marine & Grocers',
    'Grocery',
    'Jagdamba Street, Kakinada, Andhra Pradesh',
    'Local farm produce, fresh sea salts, and household groceries.',
    'https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=800&q=80',
    4.4, '$', true, '+91 884 238 4567', 16.9920, 82.2530
  ),
  (
    'seed-ap-kkd',
    'Godavari Handcrafts & Artisan Mart',
    'Artisan',
    'Suryaraopeta, Kakinada, Andhra Pradesh',
    'Uppada silk stoles, lacquerware, and local handcrafted wood artifacts.',
    'https://images.unsplash.com/photo-1513519245088-0e12902e5a38?auto=format&fit=crop&w=800&q=80',
    4.7, '$$$', true, '+91 884 234 5511', 16.9740, 82.2350
  ),

  -- 8. RAJAHMUNDRY
  (
    'seed-ap-rjy',
    'Godavari Riverfront Restaurant',
    'Restaurant',
    'Pushkar Ghat Road, Rajahmundry, Andhra Pradesh',
    'Authentic pulasa fish curry, royyala iguru, and river-view meals.',
    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=800&q=80',
    4.8, '$$$', true, '+91 883 246 7810', 17.0005, 81.7770
  ),
  (
    'seed-ap-rjy',
    'Rose Milk & Bakery Hub',
    'Bakery',
    'Main Road, Rajahmundry, Andhra Pradesh',
    'Legendary Rajahmundry rose milk, egg puffs, cutlets, and plum cakes.',
    'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=800&q=80',
    4.8, '$', true, '+91 883 247 2200', 16.9950, 81.7820
  ),
  (
    'seed-ap-rjy',
    'Kambala Cheruvu Cafe',
    'Cafe',
    'Kambala Tank Road, Rajahmundry, Andhra Pradesh',
    'Casual brew lounge serving cappuccino, mojitos, and burgers.',
    'https://images.unsplash.com/photo-1554118811-1e0d58224f24?auto=format&fit=crop&w=800&q=80',
    4.4, '$$', true, '+91 883 244 5612', 17.0080, 81.7890
  ),
  (
    'seed-ap-rjy',
    'East Godavari Spice & Grain Mart',
    'Grocery',
    'Aryapuram, Rajahmundry, Andhra Pradesh',
    'Local turmeric, cold-pressed mustard oil, and Godavari grains.',
    'https://images.unsplash.com/photo-1578916171728-46686eac8d58?auto=format&fit=crop&w=800&q=80',
    4.6, '$', true, '+91 883 243 9088', 16.9880, 81.7730
  ),
  (
    'seed-ap-rjy',
    'Heritage Book Depot & Stationery',
    'Books & Stationery',
    'Kotagummam, Rajahmundry, Andhra Pradesh',
    'Telugu literary classics, civil service materials, and arts supplies.',
    'https://images.unsplash.com/photo-1526243741027-444d633d7365?auto=format&fit=crop&w=800&q=80',
    4.5, '$', true, '+91 883 242 1144', 16.9920, 81.7790
  ),

  -- 9. ANANTAPUR
  (
    'seed-ap-atp',
    'Clock Tower Tiffin & Meals',
    'Restaurant',
    'Subash Road, Clock Tower, Anantapur, Andhra Pradesh',
    'Crispy Karam dosa, uggani bajji, and traditional Rayalaseema meals.',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=800&q=80',
    4.6, '$', true, '+91 8554 223 456', 14.6819, 77.6006
  ),
  (
    'seed-ap-atp',
    'Sapthagiri Golden Bakes',
    'Bakery',
    'Court Road, Anantapur, Andhra Pradesh',
    'Fresh honey sponge cake, hot vegetable puffs, and milk biscuits.',
    'https://images.unsplash.com/photo-1517433670267-08bbd4be890f?auto=format&fit=crop&w=800&q=80',
    4.4, '$', true, '+91 8554 221 890', 14.6860, 77.6050
  ),
  (
    'seed-ap-atp',
    'ISKCON Marg Coffee Spot',
    'Cafe',
    'Somnath Nagar, Anantapur, Andhra Pradesh',
    'Freshly ground Chikmagalur coffee, herbal green tea, and baked snacks.',
    'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?auto=format&fit=crop&w=800&q=80',
    4.5, '$$', true, '+91 8554 240 123', 14.6750, 77.5920
  ),
  (
    'seed-ap-atp',
    'Dryland Organic Produce',
    'Grocery',
    'Kamalanagar, Anantapur, Andhra Pradesh',
    'Local groundnut oil, ragi, jowar flours, and natural jaggery.',
    'https://images.unsplash.com/photo-1534723452862-4c874018d66d?auto=format&fit=crop&w=800&q=80',
    4.7, '$', true, '+91 8554 235 678', 14.6890, 77.6100
  ),
  (
    'seed-ap-atp',
    'Dharmavaram Handloom Emporium',
    'Fashion',
    'Ram Nagar, Anantapur, Andhra Pradesh',
    'Exclusive Dharmavaram pattu sarees, wedding brocades, and ethnic wear.',
    'https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?auto=format&fit=crop&w=800&q=80',
    4.6, '$$$', true, '+91 8554 227 899', 14.6790, 77.6030
  );
