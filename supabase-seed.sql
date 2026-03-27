-- ============================================================
-- CURL.FYI — SEED DATA
-- Run this in the Supabase SQL editor after the schema
-- ============================================================

-- ── Topics ──
INSERT INTO topics (name, slug, icon) VALUES
  ('Art', 'art', '🎨'),
  ('Science', 'science', '🔬'),
  ('Technology', 'technology', '💻'),
  ('History', 'history', '📜'),
  ('Entertainment', 'entertainment', '🎬'),
  ('Politics', 'politics', '🏛'),
  ('Philosophy', 'philosophy', '🧠'),
  ('Music', 'music', '🎵'),
  ('Nature', 'nature', '🌿'),
  ('Culture', 'culture', '🌍'),
  ('Design', 'design', '✏️'),
  ('Literature', 'literature', '📚');

-- ── Subtopics ──
-- Art
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'art'), 'Digital Art', 'digital-art'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Photography', 'photography'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Street Art', 'street-art'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Illustration', 'illustration'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Generative Art', 'generative-art'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Art History', 'art-history'),
  ((SELECT id FROM topics WHERE slug = 'art'), 'Drawing', 'drawing');

-- Science
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'science'), 'Space', 'space'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Biology', 'biology'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Physics', 'physics'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Chemistry', 'chemistry'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Earth Science', 'earth-science'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Mathematics', 'mathematics'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Ecology', 'ecology'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Psychology', 'psychology'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Science History', 'science-history'),
  ((SELECT id FROM topics WHERE slug = 'science'), 'Cognitive Science', 'cognitive-science');

-- Technology
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Web Dev', 'web-dev'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'AI & ML', 'ai-ml'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Retro Computing', 'retro-computing'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Open Source', 'open-source'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Cybersecurity', 'cybersecurity'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Computer Science', 'computer-science'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Hardware & Electronics', 'hardware-electronics'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Human Computer Interaction', 'hci'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Game Development', 'game-development'),
  ((SELECT id FROM topics WHERE slug = 'technology'), 'Audio Technology', 'audio-technology');

-- History
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'history'), 'Ancient History', 'ancient-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Medieval', 'medieval'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Modern History', 'modern-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Archaeology', 'archaeology'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Historical Maps', 'historical-maps'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Asian History', 'asian-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'African History', 'african-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'European History', 'european-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'Military History', 'military-history'),
  ((SELECT id FROM topics WHERE slug = 'history'), 'US History', 'us-history');

-- Entertainment
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Film', 'film'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'TV', 'tv'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Games', 'games'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Animation', 'animation'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Comics', 'comics'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Podcasts', 'podcasts'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Sports', 'sports'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Card Games', 'card-games'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Board Games', 'board-games'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Chess', 'chess'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Go', 'go'),
  ((SELECT id FROM topics WHERE slug = 'entertainment'), 'Comedy', 'comedy');

-- Politics
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Geopolitics', 'geopolitics'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Political Theory', 'political-theory'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Activism', 'activism'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Policy', 'policy'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Media Literacy', 'media-literacy'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Political Philosophies', 'political-philosophies'),
  ((SELECT id FROM topics WHERE slug = 'politics'), 'Revolutionary Movements', 'revolutionary-movements');

-- Philosophy
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Ethics', 'ethics'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Existentialism', 'existentialism'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Logic', 'logic'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Eastern Philosophy', 'eastern-philosophy'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Metaphysics', 'metaphysics'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Epistemology', 'epistemology'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Aesthetics', 'aesthetics'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Ancient Philosophy', 'ancient-philosophy'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Stoicism', 'stoicism'),
  ((SELECT id FROM topics WHERE slug = 'philosophy'), 'Philosophers', 'philosophers');

-- Music
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'music'), 'Electronic', 'electronic'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Indie', 'indie'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Classical', 'classical'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Rock', 'rock'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Jazz', 'jazz'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Blues', 'blues'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Hip-Hop', 'hip-hop'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'World Music', 'world-music'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Musical Instruments', 'musical-instruments'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Music Production', 'music-production'),
  ((SELECT id FROM topics WHERE slug = 'music'), 'Music History', 'music-history');

-- Nature
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Wildlife', 'wildlife'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Oceans', 'oceans'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Botany', 'botany'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Weather', 'weather'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Conservation', 'conservation'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Hiking', 'hiking'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Camping', 'camping'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Entomology', 'entomology'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Ornithology', 'ornithology'),
  ((SELECT id FROM topics WHERE slug = 'nature'), 'Survival', 'survival');

-- Culture
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Food & Drink', 'food-drink'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Language', 'language'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Fashion', 'fashion'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Subcultures', 'subcultures'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Travel', 'travel'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Religion & Spirituality', 'religion-spirituality'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Humor & Comedy', 'humor-comedy'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Body & Identity', 'body-identity'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'LGBT+', 'lgbt'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Counterculture', 'counterculture'),
  ((SELECT id FROM topics WHERE slug = 'culture'), 'Drugs & Society', 'drugs-society');

-- Design
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'design'), 'Typography', 'typography'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'UI/UX', 'ui-ux'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Architecture', 'architecture'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Industrial Design', 'industrial-design'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Graphic Design', 'graphic-design'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Motion & Animation', 'motion-animation'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Digital Design', 'digital-design'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Design Software', 'design-software'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Color Theory', 'color-theory'),
  ((SELECT id FROM topics WHERE slug = 'design'), 'Design Systems', 'design-systems');

-- Literature
INSERT INTO subtopics (topic_id, name, slug) VALUES
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Poetry', 'poetry'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Sci-Fi', 'sci-fi'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Essays', 'essays'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Zines', 'zines'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Journalism', 'journalism'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Fiction', 'fiction'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Non-Fiction', 'non-fiction'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Blogs', 'blogs'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Crime', 'crime'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Horror', 'horror'),
  ((SELECT id FROM topics WHERE slug = 'literature'), 'Childrens Literature', 'childrens-literature');

-- ── Niches ──
-- Art > Digital Art
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), 'Pixel Art', 'pixel-art'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), '3D Art', '3d-art'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), 'Touch Designer', 'touch-designer'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), 'Glitch Art', 'glitch-art'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), 'ASCII and Pixel Art', 'ascii-pixel'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-art'), 'Projection Mapping', 'projection-mapping');

-- Art > Photography
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'photography'), 'Film Photography', 'film-photography'),
  ((SELECT id FROM subtopics WHERE slug = 'photography'), 'Urban Photography', 'urban-photography'),
  ((SELECT id FROM subtopics WHERE slug = 'photography'), 'Macro', 'macro');
  ((SELECT id FROM subtopics WHERE slug = 'photography'), 'Tilt Shift Photography', 'tilt-shift-photography');

-- Art > Generative Art
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'generative-art'), 'Creative Coding', 'creative-coding'),
  ((SELECT id FROM subtopics WHERE slug = 'generative-art'), 'Fractals', 'fractals'),
  ((SELECT id FROM subtopics WHERE slug = 'generative-art'), 'AI Art', 'ai-art'),
  ((SELECT id FROM subtopics WHERE slug = 'generative-art'), 'P5 JS', 'p5-js');

-- Science > Space
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'space'), 'Astronomy', 'astronomy'),
  ((SELECT id FROM subtopics WHERE slug = 'space'), 'Space Exploration', 'space-exploration'),
  ((SELECT id FROM subtopics WHERE slug = 'space'), 'Astrophotography', 'astrophotography');

-- Science > Biology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'biology'), 'Microbiology', 'microbiology'),
  ((SELECT id FROM subtopics WHERE slug = 'biology'), 'Marine Biology', 'marine-biology'),
  ((SELECT id FROM subtopics WHERE slug = 'biology'), 'Genetics', 'genetics');

-- Technology > Web Dev
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'web-dev'), 'CSS Art', 'css-art'),
  ((SELECT id FROM subtopics WHERE slug = 'web-dev'), 'WebGL', 'webgl'),
  ((SELECT id FROM subtopics WHERE slug = 'web-dev'), 'Indie Web', 'indie-web');

-- Technology > Retro Computing
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'retro-computing'), 'Demoscene', 'demoscene'),
  ((SELECT id FROM subtopics WHERE slug = 'retro-computing'), 'BBS Culture', 'bbs-culture'),
  ((SELECT id FROM subtopics WHERE slug = 'retro-computing'), 'Old Web', 'old-web');

-- Technology > AI & ML
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ai-ml'), 'Neural Networks', 'neural-networks'),
  ((SELECT id FROM subtopics WHERE slug = 'ai-ml'), 'AI Art Tools', 'ai-art-tools');

-- Entertainment > Games
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'games'), 'Indie Games', 'indie-games'),
  ((SELECT id FROM subtopics WHERE slug = 'games'), 'Retro Games', 'retro-games'),
  ((SELECT id FROM subtopics WHERE slug = 'games'), 'Game Design', 'game-design');

-- Entertainment > Animation
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'animation'), 'Stop Motion', 'stop-motion'),
  ((SELECT id FROM subtopics WHERE slug = 'animation'), 'Anime', 'anime');

-- Music > Electronic
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'electronic'), 'Synthwave', 'synthwave'),
  ((SELECT id FROM subtopics WHERE slug = 'electronic'), 'Ambient', 'ambient'),
  ((SELECT id FROM subtopics WHERE slug = 'electronic'), 'Chiptune', 'chiptune');

-- Music > Music Production
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'music-production'), 'Modular Synths', 'modular-synths'),
  ((SELECT id FROM subtopics WHERE slug = 'music-production'), 'Sound Design', 'sound-design');

-- Nature > Wildlife
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'wildlife'), 'Birds', 'birds'),
  ((SELECT id FROM subtopics WHERE slug = 'wildlife'), 'Insects', 'insects'),
  ((SELECT id FROM subtopics WHERE slug = 'wildlife'), 'Deep Sea', 'deep-sea');

-- Nature > Oceans
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'oceans'), 'Coral Reefs', 'coral-reefs'),
  ((SELECT id FROM subtopics WHERE slug = 'oceans'), 'Surfing Science', 'surfing-science');

-- Culture > Subcultures
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'subcultures'), 'Cyberpunk', 'cyberpunk'),
  ((SELECT id FROM subtopics WHERE slug = 'subcultures'), 'Solarpunk', 'solarpunk'),
  ((SELECT id FROM subtopics WHERE slug = 'subcultures'), 'Vaporwave', 'vaporwave');

-- Culture > Food & Drink
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'food-drink'), 'Fermentation', 'fermentation'),
  ((SELECT id FROM subtopics WHERE slug = 'food-drink'), 'Coffee', 'coffee'),
  ((SELECT id FROM subtopics WHERE slug = 'food-drink'), 'Street Food', 'street-food');

-- Design > Typography
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'typography'), 'Lettering', 'lettering'),
  ((SELECT id FROM subtopics WHERE slug = 'typography'), 'Font Design', 'font-design');

-- Design > Architecture
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'architecture'), 'Brutalism', 'brutalism'),
  ((SELECT id FROM subtopics WHERE slug = 'architecture'), 'Tiny Houses', 'tiny-houses');

-- Literature > Sci-Fi
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'sci-fi'), 'Worldbuilding', 'worldbuilding'),
  ((SELECT id FROM subtopics WHERE slug = 'sci-fi'), 'Speculative Fiction', 'speculative-fiction');

-- Literature > Zines
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'zines'), 'DIY Publishing', 'diy-publishing'),
  ((SELECT id FROM subtopics WHERE slug = 'zines'), 'Risograph', 'risograph');

-- History > Ancient History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ancient-history'), 'Mesopotamia', 'mesopotamia'),
  ((SELECT id FROM subtopics WHERE slug = 'ancient-history'), 'Ancient Egypt', 'ancient-egypt'),
  ((SELECT id FROM subtopics WHERE slug = 'ancient-history'), 'Roman Empire', 'roman-empire');

-- History > Archaeology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'archaeology'), 'Underwater Archaeology', 'underwater-archaeology'),
  ((SELECT id FROM subtopics WHERE slug = 'archaeology'), 'Lost Cities', 'lost-cities');

-- Philosophy > Ethics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ethics'), 'AI Ethics', 'ai-ethics'),
  ((SELECT id FROM subtopics WHERE slug = 'ethics'), 'Bioethics', 'bioethics');

-- ── NEW NICHES (filling in all remaining subtopics) ──

-- Art > Street Art
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'street-art'), 'Graffiti', 'graffiti'),
  ((SELECT id FROM subtopics WHERE slug = 'street-art'), 'Murals', 'murals'),
  ((SELECT id FROM subtopics WHERE slug = 'street-art'), 'Stencil Art', 'stencil-art');

-- Art > Illustration
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'illustration'), 'Editorial Illustration', 'editorial-illustration'),
  ((SELECT id FROM subtopics WHERE slug = 'illustration'), 'Character Design', 'character-design'),
  ((SELECT id FROM subtopics WHERE slug = 'illustration'), 'Concept Art', 'concept-art');

-- Art > Art History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'art-history'), 'Renaissance Art', 'renaissance-art'),
  ((SELECT id FROM subtopics WHERE slug = 'art-history'), 'Impressionism', 'impressionism'),
  ((SELECT id FROM subtopics WHERE slug = 'art-history'), 'Bauhaus', 'bauhaus');

-- Art > Drawing
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'drawing'), 'Figure Drawing', 'figure-drawing'),
  ((SELECT id FROM subtopics WHERE slug = 'drawing'), 'Sketching', 'sketching'),
  ((SELECT id FROM subtopics WHERE slug = 'drawing'), 'Ink Drawing', 'ink-drawing');

-- Science > Physics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'physics'), 'Quantum Mechanics', 'quantum-mechanics'),
  ((SELECT id FROM subtopics WHERE slug = 'physics'), 'Astrophysics', 'astrophysics'),
  ((SELECT id FROM subtopics WHERE slug = 'physics'), 'Particle Physics', 'particle-physics');

-- Science > Chemistry
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'chemistry'), 'Organic Chemistry', 'organic-chemistry'),
  ((SELECT id FROM subtopics WHERE slug = 'chemistry'), 'Material Science', 'material-science'),
  ((SELECT id FROM subtopics WHERE slug = 'chemistry'), 'Biochemistry', 'biochemistry');

-- Science > Earth Science
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'earth-science'), 'Volcanology', 'volcanology'),
  ((SELECT id FROM subtopics WHERE slug = 'earth-science'), 'Paleontology', 'paleontology'),
  ((SELECT id FROM subtopics WHERE slug = 'earth-science'), 'Geology', 'geology');

-- Science > Mathematics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'mathematics'), 'Number Theory', 'number-theory'),
  ((SELECT id FROM subtopics WHERE slug = 'mathematics'), 'Topology', 'topology'),
  ((SELECT id FROM subtopics WHERE slug = 'mathematics'), 'Recreational Math', 'recreational-math');

-- Science > Ecology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ecology'), 'Rewilding', 'rewilding'),
  ((SELECT id FROM subtopics WHERE slug = 'ecology'), 'Urban Ecology', 'urban-ecology'),
  ((SELECT id FROM subtopics WHERE slug = 'ecology'), 'Climate Science', 'climate-science');

-- Science > Psychology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'psychology'), 'Behavioral Psychology', 'behavioral-psychology'),
  ((SELECT id FROM subtopics WHERE slug = 'psychology'), 'Neuropsychology', 'neuropsychology'),
  ((SELECT id FROM subtopics WHERE slug = 'psychology'), 'Social Psychology', 'social-psychology');

-- Science > Science History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'science-history'), 'History of Medicine', 'history-of-medicine'),
  ((SELECT id FROM subtopics WHERE slug = 'science-history'), 'History of Physics', 'history-of-physics'),
  ((SELECT id FROM subtopics WHERE slug = 'science-history'), 'Scientific Revolutions', 'scientific-revolutions');

-- Science > Cognitive Science
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'cognitive-science'), 'Perception', 'perception'),
  ((SELECT id FROM subtopics WHERE slug = 'cognitive-science'), 'Decision Making', 'decision-making'),
  ((SELECT id FROM subtopics WHERE slug = 'cognitive-science'), 'Language & Cognition', 'language-cognition');

-- Technology > Open Source
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'open-source'), 'Linux', 'linux'),
  ((SELECT id FROM subtopics WHERE slug = 'open-source'), 'FOSS Culture', 'foss-culture'),
  ((SELECT id FROM subtopics WHERE slug = 'open-source'), 'Self-Hosting', 'self-hosting');

-- Technology > Cybersecurity
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'cybersecurity'), 'Privacy', 'privacy'),
  ((SELECT id FROM subtopics WHERE slug = 'cybersecurity'), 'Cryptography', 'cryptography'),
  ((SELECT id FROM subtopics WHERE slug = 'cybersecurity'), 'Ethical Hacking', 'ethical-hacking');

-- Technology > Computer Science
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'computer-science'), 'Algorithms', 'algorithms'),
  ((SELECT id FROM subtopics WHERE slug = 'computer-science'), 'Compilers', 'compilers'),
  ((SELECT id FROM subtopics WHERE slug = 'computer-science'), 'Distributed Systems', 'distributed-systems');

-- Technology > Hardware & Electronics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'hardware-electronics'), 'Arduino', 'arduino'),
  ((SELECT id FROM subtopics WHERE slug = 'hardware-electronics'), 'Raspberry Pi', 'raspberry-pi'),
  ((SELECT id FROM subtopics WHERE slug = 'hardware-electronics'), 'Circuit Design', 'circuit-design');

-- Technology > Human Computer Interaction
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'hci'), 'Usability', 'usability'),
  ((SELECT id FROM subtopics WHERE slug = 'hci'), 'Haptics', 'haptics'),
  ((SELECT id FROM subtopics WHERE slug = 'hci'), 'Accessibility Tech', 'accessibility-tech');

-- Technology > Game Development
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'game-development'), 'Unity', 'unity'),
  ((SELECT id FROM subtopics WHERE slug = 'game-development'), 'Godot', 'godot'),
  ((SELECT id FROM subtopics WHERE slug = 'game-development'), 'Procedural Generation', 'procedural-generation');

-- Technology > Audio Technology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'audio-technology'), 'DSP', 'dsp'),
  ((SELECT id FROM subtopics WHERE slug = 'audio-technology'), 'Spatial Audio', 'spatial-audio'),
  ((SELECT id FROM subtopics WHERE slug = 'audio-technology'), 'Audio Plugins', 'audio-plugins');

-- History > Medieval
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'medieval'), 'Crusades', 'crusades'),
  ((SELECT id FROM subtopics WHERE slug = 'medieval'), 'Viking Age', 'viking-age'),
  ((SELECT id FROM subtopics WHERE slug = 'medieval'), 'Feudalism', 'feudalism');

-- History > Modern History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'modern-history'), 'Cold War', 'cold-war'),
  ((SELECT id FROM subtopics WHERE slug = 'modern-history'), 'Industrial Revolution', 'industrial-revolution'),
  ((SELECT id FROM subtopics WHERE slug = 'modern-history'), 'World Wars', 'world-wars');

-- History > Historical Maps
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'historical-maps'), 'Cartography', 'cartography'),
  ((SELECT id FROM subtopics WHERE slug = 'historical-maps'), 'Empire Maps', 'empire-maps'),
  ((SELECT id FROM subtopics WHERE slug = 'historical-maps'), 'Trade Route Maps', 'trade-route-maps');

-- History > Asian History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'asian-history'), 'Imperial China', 'imperial-china'),
  ((SELECT id FROM subtopics WHERE slug = 'asian-history'), 'Feudal Japan', 'feudal-japan'),
  ((SELECT id FROM subtopics WHERE slug = 'asian-history'), 'Mughal Empire', 'mughal-empire');

-- History > African History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'african-history'), 'Ancient Kingdoms', 'ancient-kingdoms'),
  ((SELECT id FROM subtopics WHERE slug = 'african-history'), 'Colonial Era', 'colonial-era'),
  ((SELECT id FROM subtopics WHERE slug = 'african-history'), 'Pan-Africanism', 'pan-africanism');

-- History > European History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'european-history'), 'French Revolution', 'french-revolution'),
  ((SELECT id FROM subtopics WHERE slug = 'european-history'), 'Byzantine Empire', 'byzantine-empire'),
  ((SELECT id FROM subtopics WHERE slug = 'european-history'), 'Age of Exploration', 'age-of-exploration');

-- History > Military History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'military-history'), 'Naval Warfare', 'naval-warfare'),
  ((SELECT id FROM subtopics WHERE slug = 'military-history'), 'Ancient Warfare', 'ancient-warfare'),
  ((SELECT id FROM subtopics WHERE slug = 'military-history'), 'Strategy & Tactics', 'strategy-tactics');

-- History > US History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'us-history'), 'Civil Rights Movement', 'civil-rights-movement'),
  ((SELECT id FROM subtopics WHERE slug = 'us-history'), 'Founding Era', 'founding-era'),
  ((SELECT id FROM subtopics WHERE slug = 'us-history'), 'Westward Expansion', 'westward-expansion');

-- Entertainment > Film
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'film'), 'Arthouse Film', 'arthouse-film'),
  ((SELECT id FROM subtopics WHERE slug = 'film'), 'Cinematography', 'cinematography'),
  ((SELECT id FROM subtopics WHERE slug = 'film'), 'Horror Film', 'horror-film');

-- Entertainment > TV
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'tv'), 'Prestige TV', 'prestige-tv'),
  ((SELECT id FROM subtopics WHERE slug = 'tv'), 'Reality TV', 'reality-tv'),
  ((SELECT id FROM subtopics WHERE slug = 'tv'), 'Docuseries', 'docuseries');

-- Entertainment > Comics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'comics'), 'Graphic Novels', 'graphic-novels'),
  ((SELECT id FROM subtopics WHERE slug = 'comics'), 'Manga', 'manga'),
  ((SELECT id FROM subtopics WHERE slug = 'comics'), 'Webcomics', 'webcomics');

-- Entertainment > Podcasts
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'podcasts'), 'True Crime Podcasts', 'true-crime-podcasts'),
  ((SELECT id FROM subtopics WHERE slug = 'podcasts'), 'Interview Shows', 'interview-shows'),
  ((SELECT id FROM subtopics WHERE slug = 'podcasts'), 'Audio Drama', 'audio-drama');

-- Entertainment > Sports
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'sports'), 'Basketball', 'basketball'),
  ((SELECT id FROM subtopics WHERE slug = 'sports'), 'Football', 'football'),
  ((SELECT id FROM subtopics WHERE slug = 'sports'), 'Combat Sports', 'combat-sports');

-- Entertainment > Card Games
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'card-games'), 'Poker', 'poker'),
  ((SELECT id FROM subtopics WHERE slug = 'card-games'), 'Trading Card Games', 'trading-card-games'),
  ((SELECT id FROM subtopics WHERE slug = 'card-games'), 'Bridge', 'bridge');

-- Entertainment > Board Games
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'board-games'), 'Euro Games', 'euro-games'),
  ((SELECT id FROM subtopics WHERE slug = 'board-games'), 'Cooperative Games', 'cooperative-games'),
  ((SELECT id FROM subtopics WHERE slug = 'board-games'), 'Wargames', 'wargames');

-- Entertainment > Chess
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'chess'), 'Chess Openings', 'chess-openings'),
  ((SELECT id FROM subtopics WHERE slug = 'chess'), 'Chess History', 'chess-history'),
  ((SELECT id FROM subtopics WHERE slug = 'chess'), 'Chess Puzzles', 'chess-puzzles');

-- Entertainment > Go
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'go'), 'Go Strategy', 'go-strategy'),
  ((SELECT id FROM subtopics WHERE slug = 'go'), 'Go Problems', 'go-problems'),
  ((SELECT id FROM subtopics WHERE slug = 'go'), 'Go History', 'go-history');

-- Entertainment > Comedy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'comedy'), 'Stand-Up', 'stand-up'),
  ((SELECT id FROM subtopics WHERE slug = 'comedy'), 'Sketch Comedy', 'sketch-comedy'),
  ((SELECT id FROM subtopics WHERE slug = 'comedy'), 'Improv', 'improv');

-- Politics > Geopolitics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'geopolitics'), 'International Relations', 'international-relations'),
  ((SELECT id FROM subtopics WHERE slug = 'geopolitics'), 'Trade Wars', 'trade-wars'),
  ((SELECT id FROM subtopics WHERE slug = 'geopolitics'), 'Territorial Disputes', 'territorial-disputes');

-- Politics > Political Theory
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'political-theory'), 'Social Contract', 'social-contract'),
  ((SELECT id FROM subtopics WHERE slug = 'political-theory'), 'Anarchism', 'anarchism'),
  ((SELECT id FROM subtopics WHERE slug = 'political-theory'), 'Democratic Theory', 'democratic-theory');

-- Politics > Activism
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'activism'), 'Environmental Activism', 'environmental-activism'),
  ((SELECT id FROM subtopics WHERE slug = 'activism'), 'Digital Activism', 'digital-activism'),
  ((SELECT id FROM subtopics WHERE slug = 'activism'), 'Labor Movements', 'labor-movements');

-- Politics > Policy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'policy'), 'Housing Policy', 'housing-policy'),
  ((SELECT id FROM subtopics WHERE slug = 'policy'), 'Tech Policy', 'tech-policy'),
  ((SELECT id FROM subtopics WHERE slug = 'policy'), 'Healthcare Policy', 'healthcare-policy');

-- Politics > Media Literacy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'media-literacy'), 'Propaganda Studies', 'propaganda-studies'),
  ((SELECT id FROM subtopics WHERE slug = 'media-literacy'), 'Fact Checking', 'fact-checking'),
  ((SELECT id FROM subtopics WHERE slug = 'media-literacy'), 'Media Bias', 'media-bias');

-- Politics > Political Philosophies
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'political-philosophies'), 'Libertarianism', 'libertarianism'),
  ((SELECT id FROM subtopics WHERE slug = 'political-philosophies'), 'Socialism', 'socialism'),
  ((SELECT id FROM subtopics WHERE slug = 'political-philosophies'), 'Conservatism', 'conservatism');

-- Politics > Revolutionary Movements
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'revolutionary-movements'), 'French Revolution Movement', 'french-revolution-movement'),
  ((SELECT id FROM subtopics WHERE slug = 'revolutionary-movements'), 'Anti-Colonial Movements', 'anti-colonial-movements'),
  ((SELECT id FROM subtopics WHERE slug = 'revolutionary-movements'), 'Student Movements', 'student-movements');

-- Philosophy > Existentialism
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'existentialism'), 'Absurdism', 'absurdism'),
  ((SELECT id FROM subtopics WHERE slug = 'existentialism'), 'Phenomenology', 'phenomenology'),
  ((SELECT id FROM subtopics WHERE slug = 'existentialism'), 'Nihilism', 'nihilism');

-- Philosophy > Logic
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'logic'), 'Formal Logic', 'formal-logic'),
  ((SELECT id FROM subtopics WHERE slug = 'logic'), 'Paradoxes', 'paradoxes'),
  ((SELECT id FROM subtopics WHERE slug = 'logic'), 'Modal Logic', 'modal-logic');

-- Philosophy > Eastern Philosophy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'eastern-philosophy'), 'Buddhism', 'buddhism'),
  ((SELECT id FROM subtopics WHERE slug = 'eastern-philosophy'), 'Taoism', 'taoism'),
  ((SELECT id FROM subtopics WHERE slug = 'eastern-philosophy'), 'Zen', 'zen');

-- Philosophy > Metaphysics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'metaphysics'), 'Free Will', 'free-will'),
  ((SELECT id FROM subtopics WHERE slug = 'metaphysics'), 'Philosophy of Mind', 'philosophy-of-mind'),
  ((SELECT id FROM subtopics WHERE slug = 'metaphysics'), 'Ontology', 'ontology');

-- Philosophy > Epistemology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'epistemology'), 'Skepticism', 'skepticism'),
  ((SELECT id FROM subtopics WHERE slug = 'epistemology'), 'Rationalism', 'rationalism'),
  ((SELECT id FROM subtopics WHERE slug = 'epistemology'), 'Empiricism', 'empiricism');

-- Philosophy > Aesthetics
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'aesthetics'), 'Philosophy of Beauty', 'philosophy-of-beauty'),
  ((SELECT id FROM subtopics WHERE slug = 'aesthetics'), 'Philosophy of Art', 'philosophy-of-art'),
  ((SELECT id FROM subtopics WHERE slug = 'aesthetics'), 'Sublime', 'sublime');

-- Philosophy > Ancient Philosophy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ancient-philosophy'), 'Platonism', 'platonism'),
  ((SELECT id FROM subtopics WHERE slug = 'ancient-philosophy'), 'Aristotelianism', 'aristotelianism'),
  ((SELECT id FROM subtopics WHERE slug = 'ancient-philosophy'), 'Pre-Socratics', 'pre-socratics');

-- Philosophy > Stoicism
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'stoicism'), 'Marcus Aurelius', 'marcus-aurelius'),
  ((SELECT id FROM subtopics WHERE slug = 'stoicism'), 'Epictetus', 'epictetus'),
  ((SELECT id FROM subtopics WHERE slug = 'stoicism'), 'Modern Stoicism', 'modern-stoicism');

-- Philosophy > Philosophers
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'philosophers'), 'Nietzsche', 'nietzsche'),
  ((SELECT id FROM subtopics WHERE slug = 'philosophers'), 'Wittgenstein', 'wittgenstein'),
  ((SELECT id FROM subtopics WHERE slug = 'philosophers'), 'Simone de Beauvoir', 'simone-de-beauvoir');

-- Music > Indie
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'indie'), 'Indie Rock', 'indie-rock'),
  ((SELECT id FROM subtopics WHERE slug = 'indie'), 'Indie Folk', 'indie-folk'),
  ((SELECT id FROM subtopics WHERE slug = 'indie'), 'Shoegaze', 'shoegaze');

-- Music > Classical
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'classical'), 'Baroque', 'baroque'),
  ((SELECT id FROM subtopics WHERE slug = 'classical'), 'Romantic Era', 'romantic-era'),
  ((SELECT id FROM subtopics WHERE slug = 'classical'), 'Contemporary Classical', 'contemporary-classical');

-- Music > Rock
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'rock'), 'Punk', 'punk'),
  ((SELECT id FROM subtopics WHERE slug = 'rock'), 'Post-Rock', 'post-rock'),
  ((SELECT id FROM subtopics WHERE slug = 'rock'), 'Psychedelic Rock', 'psychedelic-rock');

-- Music > Jazz
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'jazz'), 'Bebop', 'bebop'),
  ((SELECT id FROM subtopics WHERE slug = 'jazz'), 'Free Jazz', 'free-jazz'),
  ((SELECT id FROM subtopics WHERE slug = 'jazz'), 'Fusion', 'fusion');

-- Music > Blues
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'blues'), 'Delta Blues', 'delta-blues'),
  ((SELECT id FROM subtopics WHERE slug = 'blues'), 'Chicago Blues', 'chicago-blues'),
  ((SELECT id FROM subtopics WHERE slug = 'blues'), 'Electric Blues', 'electric-blues');

-- Music > Hip-Hop
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'hip-hop'), 'Boom Bap', 'boom-bap'),
  ((SELECT id FROM subtopics WHERE slug = 'hip-hop'), 'Lo-Fi Hip-Hop', 'lo-fi-hip-hop'),
  ((SELECT id FROM subtopics WHERE slug = 'hip-hop'), 'Underground Hip-Hop', 'underground-hip-hop');

-- Music > World Music
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'world-music'), 'Afrobeat', 'afrobeat'),
  ((SELECT id FROM subtopics WHERE slug = 'world-music'), 'Bossa Nova', 'bossa-nova'),
  ((SELECT id FROM subtopics WHERE slug = 'world-music'), 'Gamelan', 'gamelan');

-- Music > Musical Instruments
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'musical-instruments'), 'Guitar', 'guitar'),
  ((SELECT id FROM subtopics WHERE slug = 'musical-instruments'), 'Synthesizers', 'synthesizers'),
  ((SELECT id FROM subtopics WHERE slug = 'musical-instruments'), 'Piano', 'piano');

-- Music > Music History
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'music-history'), 'History of Recording', 'history-of-recording'),
  ((SELECT id FROM subtopics WHERE slug = 'music-history'), 'Vinyl Culture', 'vinyl-culture'),
  ((SELECT id FROM subtopics WHERE slug = 'music-history'), 'Music Movements', 'music-movements');

-- Nature > Botany
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'botany'), 'Mycology', 'mycology'),
  ((SELECT id FROM subtopics WHERE slug = 'botany'), 'Houseplants', 'houseplants'),
  ((SELECT id FROM subtopics WHERE slug = 'botany'), 'Ethnobotany', 'ethnobotany');

-- Nature > Weather
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'weather'), 'Storm Chasing', 'storm-chasing'),
  ((SELECT id FROM subtopics WHERE slug = 'weather'), 'Meteorology', 'meteorology'),
  ((SELECT id FROM subtopics WHERE slug = 'weather'), 'Cloud Spotting', 'cloud-spotting');

-- Nature > Conservation
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'conservation'), 'Endangered Species', 'endangered-species'),
  ((SELECT id FROM subtopics WHERE slug = 'conservation'), 'National Parks', 'national-parks'),
  ((SELECT id FROM subtopics WHERE slug = 'conservation'), 'Restoration Ecology', 'restoration-ecology');

-- Nature > Hiking
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'hiking'), 'Thru-Hiking', 'thru-hiking'),
  ((SELECT id FROM subtopics WHERE slug = 'hiking'), 'Trail Running', 'trail-running'),
  ((SELECT id FROM subtopics WHERE slug = 'hiking'), 'Ultralight Backpacking', 'ultralight-backpacking');

-- Nature > Camping
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'camping'), 'Bushcraft', 'bushcraft'),
  ((SELECT id FROM subtopics WHERE slug = 'camping'), 'Car Camping', 'car-camping'),
  ((SELECT id FROM subtopics WHERE slug = 'camping'), 'Hammock Camping', 'hammock-camping');

-- Nature > Entomology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'entomology'), 'Butterflies & Moths', 'butterflies-moths'),
  ((SELECT id FROM subtopics WHERE slug = 'entomology'), 'Beetles', 'beetles'),
  ((SELECT id FROM subtopics WHERE slug = 'entomology'), 'Beekeeping', 'beekeeping');

-- Nature > Ornithology
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ornithology'), 'Birding', 'birding'),
  ((SELECT id FROM subtopics WHERE slug = 'ornithology'), 'Raptors', 'raptors'),
  ((SELECT id FROM subtopics WHERE slug = 'ornithology'), 'Bird Migration', 'bird-migration');

-- Nature > Survival
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'survival'), 'Wilderness Survival', 'wilderness-survival'),
  ((SELECT id FROM subtopics WHERE slug = 'survival'), 'Foraging', 'foraging'),
  ((SELECT id FROM subtopics WHERE slug = 'survival'), 'Knot Tying', 'knot-tying');

-- Culture > Language
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'language'), 'Linguistics', 'linguistics'),
  ((SELECT id FROM subtopics WHERE slug = 'language'), 'Conlangs', 'conlangs'),
  ((SELECT id FROM subtopics WHERE slug = 'language'), 'Etymology', 'etymology');

-- Culture > Fashion
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'fashion'), 'Streetwear', 'streetwear'),
  ((SELECT id FROM subtopics WHERE slug = 'fashion'), 'Vintage Fashion', 'vintage-fashion'),
  ((SELECT id FROM subtopics WHERE slug = 'fashion'), 'Techwear', 'techwear');

-- Culture > Travel
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'travel'), 'Budget Travel', 'budget-travel'),
  ((SELECT id FROM subtopics WHERE slug = 'travel'), 'Solo Travel', 'solo-travel'),
  ((SELECT id FROM subtopics WHERE slug = 'travel'), 'Slow Travel', 'slow-travel');

-- Culture > Religion & Spirituality
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'religion-spirituality'), 'Mythology', 'mythology'),
  ((SELECT id FROM subtopics WHERE slug = 'religion-spirituality'), 'Mysticism', 'mysticism'),
  ((SELECT id FROM subtopics WHERE slug = 'religion-spirituality'), 'Comparative Religion', 'comparative-religion');

-- Culture > Humor & Comedy
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'humor-comedy'), 'Satire', 'satire'),
  ((SELECT id FROM subtopics WHERE slug = 'humor-comedy'), 'Dark Humor', 'dark-humor'),
  ((SELECT id FROM subtopics WHERE slug = 'humor-comedy'), 'Meme Culture', 'meme-culture');

-- Culture > Body & Identity
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'body-identity'), 'Tattoo Culture', 'tattoo-culture'),
  ((SELECT id FROM subtopics WHERE slug = 'body-identity'), 'Body Modification', 'body-modification'),
  ((SELECT id FROM subtopics WHERE slug = 'body-identity'), 'Gender Studies', 'gender-studies');

-- Culture > LGBT+
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'lgbt'), 'Queer History', 'queer-history'),
  ((SELECT id FROM subtopics WHERE slug = 'lgbt'), 'Queer Art', 'queer-art'),
  ((SELECT id FROM subtopics WHERE slug = 'lgbt'), 'Drag Culture', 'drag-culture');

-- Culture > Counterculture
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'counterculture'), 'Beat Generation', 'beat-generation'),
  ((SELECT id FROM subtopics WHERE slug = 'counterculture'), '60s Counterculture', '60s-counterculture'),
  ((SELECT id FROM subtopics WHERE slug = 'counterculture'), 'Punk Movement', 'punk-movement');

-- Culture > Drugs & Society
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'drugs-society'), 'Psychedelic Research', 'psychedelic-research'),
  ((SELECT id FROM subtopics WHERE slug = 'drugs-society'), 'Drug Policy', 'drug-policy'),
  ((SELECT id FROM subtopics WHERE slug = 'drugs-society'), 'Harm Reduction', 'harm-reduction');

-- Design > UI/UX
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'ui-ux'), 'Interaction Design', 'interaction-design'),
  ((SELECT id FROM subtopics WHERE slug = 'ui-ux'), 'UX Research', 'ux-research'),
  ((SELECT id FROM subtopics WHERE slug = 'ui-ux'), 'Information Architecture', 'information-architecture');

-- Design > Industrial Design
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'industrial-design'), 'Product Design', 'product-design'),
  ((SELECT id FROM subtopics WHERE slug = 'industrial-design'), 'Furniture Design', 'furniture-design'),
  ((SELECT id FROM subtopics WHERE slug = 'industrial-design'), 'Dieter Rams', 'dieter-rams');

-- Design > Graphic Design
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'graphic-design'), 'Poster Design', 'poster-design'),
  ((SELECT id FROM subtopics WHERE slug = 'graphic-design'), 'Brand Identity', 'brand-identity'),
  ((SELECT id FROM subtopics WHERE slug = 'graphic-design'), 'Layout Design', 'layout-design');

-- Design > Motion & Animation
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'motion-animation'), 'Motion Graphics', 'motion-graphics'),
  ((SELECT id FROM subtopics WHERE slug = 'motion-animation'), 'UI Animation', 'ui-animation'),
  ((SELECT id FROM subtopics WHERE slug = 'motion-animation'), 'Kinetic Typography', 'kinetic-typography');

-- Design > Digital Design
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'digital-design'), 'Web Design', 'web-design'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-design'), 'App Design', 'app-design'),
  ((SELECT id FROM subtopics WHERE slug = 'digital-design'), 'Design Tokens', 'design-tokens');

-- Design > Design Software
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'design-software'), 'Figma', 'figma'),
  ((SELECT id FROM subtopics WHERE slug = 'design-software'), 'Blender', 'blender'),
  ((SELECT id FROM subtopics WHERE slug = 'design-software'), 'After Effects', 'after-effects');

-- Design > Color Theory
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'color-theory'), 'Color Psychology', 'color-psychology'),
  ((SELECT id FROM subtopics WHERE slug = 'color-theory'), 'Palettes', 'palettes'),
  ((SELECT id FROM subtopics WHERE slug = 'color-theory'), 'Color Systems', 'color-systems');

-- Design > Design Systems
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'design-systems'), 'Component Libraries', 'component-libraries'),
  ((SELECT id FROM subtopics WHERE slug = 'design-systems'), 'Atomic Design', 'atomic-design'),
  ((SELECT id FROM subtopics WHERE slug = 'design-systems'), 'Design Ops', 'design-ops');

-- Literature > Poetry
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'poetry'), 'Haiku', 'haiku'),
  ((SELECT id FROM subtopics WHERE slug = 'poetry'), 'Spoken Word', 'spoken-word'),
  ((SELECT id FROM subtopics WHERE slug = 'poetry'), 'Confessional Poetry', 'confessional-poetry');

-- Literature > Essays
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'essays'), 'Personal Essays', 'personal-essays'),
  ((SELECT id FROM subtopics WHERE slug = 'essays'), 'Cultural Criticism', 'cultural-criticism'),
  ((SELECT id FROM subtopics WHERE slug = 'essays'), 'Longform', 'longform');

-- Literature > Journalism
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'journalism'), 'Investigative Journalism', 'investigative-journalism'),
  ((SELECT id FROM subtopics WHERE slug = 'journalism'), 'Gonzo Journalism', 'gonzo-journalism'),
  ((SELECT id FROM subtopics WHERE slug = 'journalism'), 'Photojournalism', 'photojournalism');

-- Literature > Fiction
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'fiction'), 'Literary Fiction', 'literary-fiction'),
  ((SELECT id FROM subtopics WHERE slug = 'fiction'), 'Historical Fiction', 'historical-fiction'),
  ((SELECT id FROM subtopics WHERE slug = 'fiction'), 'Short Stories', 'short-stories');

-- Literature > Non-Fiction
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'non-fiction'), 'Memoir', 'memoir'),
  ((SELECT id FROM subtopics WHERE slug = 'non-fiction'), 'Popular Science', 'popular-science'),
  ((SELECT id FROM subtopics WHERE slug = 'non-fiction'), 'True Crime', 'true-crime');

-- Literature > Blogs
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'blogs'), 'Tech Blogs', 'tech-blogs'),
  ((SELECT id FROM subtopics WHERE slug = 'blogs'), 'Personal Blogs', 'personal-blogs'),
  ((SELECT id FROM subtopics WHERE slug = 'blogs'), 'Newsletters', 'newsletters');

-- Literature > Crime
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'crime'), 'Noir', 'noir'),
  ((SELECT id FROM subtopics WHERE slug = 'crime'), 'Detective Fiction', 'detective-fiction'),
  ((SELECT id FROM subtopics WHERE slug = 'crime'), 'Thrillers', 'thrillers');

-- Literature > Horror
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'horror'), 'Cosmic Horror', 'cosmic-horror'),
  ((SELECT id FROM subtopics WHERE slug = 'horror'), 'Gothic Horror', 'gothic-horror'),
  ((SELECT id FROM subtopics WHERE slug = 'horror'), 'Folk Horror', 'folk-horror');

-- Literature > Childrens Literature
INSERT INTO niches (subtopic_id, name, slug) VALUES
  ((SELECT id FROM subtopics WHERE slug = 'childrens-literature'), 'Picture Books', 'picture-books'),
  ((SELECT id FROM subtopics WHERE slug = 'childrens-literature'), 'Middle Grade', 'middle-grade'),
  ((SELECT id FROM subtopics WHERE slug = 'childrens-literature'), 'Young Adult', 'young-adult');