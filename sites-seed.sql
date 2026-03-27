-- ============================================================
-- CURL.FYI — SITES SEED DATA
-- Run this AFTER the schema + taxonomy seed
-- ============================================================


-- ── ART ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://artvee.com', 'Artvee', 'Browse and download high-resolution public domain artworks from museums around the world.', 'museum archive, art history deep dives, free classic art', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://artvee.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://artvee.com'), (SELECT id FROM subtopics WHERE slug = 'art-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://artvee.com'), (SELECT id FROM niches WHERE slug = 'renaissance-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://artvee.com'), (SELECT id FROM niches WHERE slug = 'impressionism'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://openprocessing.org', 'OpenProcessing', 'Community platform for sharing and exploring creative coding sketches made with Processing and p5.js.', 'creative coding playground, generative art community, algorithmic beauty', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://openprocessing.org'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://openprocessing.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://openprocessing.org'), (SELECT id FROM subtopics WHERE slug = 'generative-art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://openprocessing.org'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://openprocessing.org'), (SELECT id FROM niches WHERE slug = 'creative-coding'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://streetartcities.com', 'Street Art Cities', 'Interactive map of street art and murals from cities around the world, community curated.', 'urban exploration, street art hunting, global mural map', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM subtopics WHERE slug = 'street-art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM subtopics WHERE slug = 'travel'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM niches WHERE slug = 'murals'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://streetartcities.com'), (SELECT id FROM niches WHERE slug = 'graffiti'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://lospec.com', 'Lospec', 'Free tools and resources for pixel artists including palette database, tutorials, and a pixel editor.', 'pixel art community, retro aesthetic, color palettes', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lospec.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lospec.com'), (SELECT id FROM subtopics WHERE slug = 'digital-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lospec.com'), (SELECT id FROM niches WHERE slug = 'pixel-art'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.behance.net/galleries/illustration', 'Behance Illustration Gallery', 'Curated showcase of the best illustration work from creatives around the world.', 'portfolio inspiration, professional illustration, visual storytelling', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.behance.net/galleries/illustration'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.behance.net/galleries/illustration'), (SELECT id FROM subtopics WHERE slug = 'illustration'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.behance.net/galleries/illustration'), (SELECT id FROM niches WHERE slug = 'editorial-illustration'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.behance.net/galleries/illustration'), (SELECT id FROM niches WHERE slug = 'character-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://drawingprompts.com', 'Drawing Prompts', 'Random drawing prompt generator to spark creativity and beat artist''s block.', 'creative sparks, drawing practice, artist warmups', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://drawingprompts.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://drawingprompts.com'), (SELECT id FROM subtopics WHERE slug = 'drawing'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://drawingprompts.com'), (SELECT id FROM niches WHERE slug = 'sketching'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.photo-museum.org', 'Photo Museum', 'Virtual museum dedicated to fine art photography with curated exhibitions and artist profiles.', 'photography gallery, fine art photography, visual storytelling', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.photo-museum.org'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.photo-museum.org'), (SELECT id FROM subtopics WHERE slug = 'photography'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.photo-museum.org'), (SELECT id FROM niches WHERE slug = 'film-photography'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://twistedbrush.com/pixelart', 'TwistedBrush Pixel Studio', 'Free browser-based pixel art creation tool with layers and animation support.', 'pixel art tool, retro game art, creative sandbox', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://twistedbrush.com/pixelart'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://twistedbrush.com/pixelart'), (SELECT id FROM subtopics WHERE slug = 'digital-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://twistedbrush.com/pixelart'), (SELECT id FROM niches WHERE slug = 'pixel-art'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.artsy.net/categories', 'Artsy Categories', 'Browse contemporary art across movements, mediums, and periods from galleries worldwide.', 'gallery hopping online, art discovery, contemporary art world', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.artsy.net/categories'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.artsy.net/categories'), (SELECT id FROM subtopics WHERE slug = 'art-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.artsy.net/categories'), (SELECT id FROM niches WHERE slug = 'bauhaus'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.fxhash.xyz', 'fx(hash)', 'Platform for generative art on the Tezos blockchain where artists publish algorithmic artworks.', 'generative art marketplace, algorithmic creativity, on-chain art', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.fxhash.xyz'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.fxhash.xyz'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.fxhash.xyz'), (SELECT id FROM subtopics WHERE slug = 'generative-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.fxhash.xyz'), (SELECT id FROM niches WHERE slug = 'creative-coding'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.fxhash.xyz'), (SELECT id FROM niches WHERE slug = 'fractals'));

-- ── SCIENCE ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://apod.nasa.gov', 'Astronomy Picture of the Day', 'NASA serves up a different image or photograph of the universe every day with a professional astronomer''s explanation.', 'daily cosmic wonder, space photography, astronomical beauty', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://apod.nasa.gov'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://apod.nasa.gov'), (SELECT id FROM subtopics WHERE slug = 'space'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://apod.nasa.gov'), (SELECT id FROM niches WHERE slug = 'astronomy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://apod.nasa.gov'), (SELECT id FROM niches WHERE slug = 'astrophotography'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.cellimages.org', 'Cell Image Library', 'Public repository of reviewed and annotated images, videos, and animations of cells.', 'microscopic worlds, cellular beauty, scientific visualization', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.cellimages.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.cellimages.org'), (SELECT id FROM subtopics WHERE slug = 'biology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.cellimages.org'), (SELECT id FROM niches WHERE slug = 'microbiology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://particlezoo.net', 'The Particle Zoo', 'Handmade plush toys representing subatomic particles, making particle physics tangible and fun.', 'physics made adorable, subatomic plushies, science gifts', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://particlezoo.net'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://particlezoo.net'), (SELECT id FROM subtopics WHERE slug = 'physics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://particlezoo.net'), (SELECT id FROM niches WHERE slug = 'particle-physics'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.marine-geo.org', 'Marine Geoscience Data System', 'Explore bathymetric maps and ocean floor data from research expeditions around the world.', 'ocean floor mapping, deep sea data, marine geology', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.marine-geo.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.marine-geo.org'), (SELECT id FROM subtopics WHERE slug = 'earth-science'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.marine-geo.org'), (SELECT id FROM niches WHERE slug = 'geology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://mathworld.wolfram.com', 'Wolfram MathWorld', 'The web''s most extensive mathematical resource with detailed entries on every topic in mathematics.', 'math encyclopedia, deep math rabbit holes, proof and beauty', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://mathworld.wolfram.com'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://mathworld.wolfram.com'), (SELECT id FROM subtopics WHERE slug = 'mathematics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://mathworld.wolfram.com'), (SELECT id FROM niches WHERE slug = 'number-theory'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://mathworld.wolfram.com'), (SELECT id FROM niches WHERE slug = 'topology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.chemistryworld.com', 'Chemistry World', 'News, analysis, and features about the chemical sciences from the Royal Society of Chemistry.', 'chemistry news, molecular discoveries, periodic table deep dives', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.chemistryworld.com'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.chemistryworld.com'), (SELECT id FROM subtopics WHERE slug = 'chemistry'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.chemistryworld.com'), (SELECT id FROM niches WHERE slug = 'organic-chemistry'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.chemistryworld.com'), (SELECT id FROM niches WHERE slug = 'biochemistry'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://cosmicview.info', 'Cosmic View', 'Interactive visualization of the scale of the universe from quantum to cosmic.', 'powers of ten, scale of existence, cosmic perspective', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cosmicview.info'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cosmicview.info'), (SELECT id FROM subtopics WHERE slug = 'space'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cosmicview.info'), (SELECT id FROM subtopics WHERE slug = 'physics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cosmicview.info'), (SELECT id FROM niches WHERE slug = 'astronomy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cosmicview.info'), (SELECT id FROM niches WHERE slug = 'quantum-mechanics'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.rewild.org', 'Rewilding Institute', 'Research and advocacy for continental-scale conservation and ecological restoration.', 'rewilding the planet, conservation science, ecological restoration', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM subtopics WHERE slug = 'ecology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM subtopics WHERE slug = 'conservation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM niches WHERE slug = 'rewilding'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.rewild.org'), (SELECT id FROM niches WHERE slug = 'restoration-ecology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://thebrain.mcgill.ca', 'The Brain from Top to Bottom', 'Interactive neuroscience education site exploring the brain at beginner, intermediate, and advanced levels.', 'brain deep dive, neuroscience education, cognitive mysteries', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thebrain.mcgill.ca'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thebrain.mcgill.ca'), (SELECT id FROM subtopics WHERE slug = 'cognitive-science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thebrain.mcgill.ca'), (SELECT id FROM subtopics WHERE slug = 'psychology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thebrain.mcgill.ca'), (SELECT id FROM niches WHERE slug = 'perception'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thebrain.mcgill.ca'), (SELECT id FROM niches WHERE slug = 'decision-making'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.sciencehistory.org', 'Science History Institute', 'Museum and library exploring how science has shaped the world through stories of discovery and invention.', 'history of discovery, scientific breakthroughs, invention stories', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sciencehistory.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sciencehistory.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sciencehistory.org'), (SELECT id FROM subtopics WHERE slug = 'science-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sciencehistory.org'), (SELECT id FROM niches WHERE slug = 'history-of-medicine'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sciencehistory.org'), (SELECT id FROM niches WHERE slug = 'scientific-revolutions'));

-- ── TECHNOLOGY ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://neocities.org', 'Neocities', 'Free web hosting in the spirit of GeoCities — build your own personal website and explore others.', 'indie web revival, personal websites, web nostalgia', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neocities.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neocities.org'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neocities.org'), (SELECT id FROM niches WHERE slug = 'indie-web'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.dwitter.net', 'Dwitter', 'Social network for tiny JavaScript demos in 140 characters. Creative coding at its most constrained.', 'code golf, creative constraints, tiny visual experiments', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM subtopics WHERE slug = 'generative-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM niches WHERE slug = 'css-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.dwitter.net'), (SELECT id FROM niches WHERE slug = 'creative-coding'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://oldweb.today', 'oldweb.today', 'Browse archived websites in vintage browsers like Netscape and Mosaic, rendered in real time.', 'web time machine, browser nostalgia, early internet archaeology', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://oldweb.today'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://oldweb.today'), (SELECT id FROM subtopics WHERE slug = 'retro-computing'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://oldweb.today'), (SELECT id FROM niches WHERE slug = 'old-web'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://oldweb.today'), (SELECT id FROM niches WHERE slug = 'bbs-culture'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://explorabl.es', 'Explorable Explanations', 'Hub of interactive articles and tools that let you learn by playing with the concepts.', 'interactive learning, play to understand, explorable ideas', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://explorabl.es'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://explorabl.es'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://explorabl.es'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://explorabl.es'), (SELECT id FROM subtopics WHERE slug = 'computer-science'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://explorabl.es'), (SELECT id FROM niches WHERE slug = 'indie-web'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://hackaday.com', 'Hackaday', 'Daily hardware hacking projects and electronics news from the maker community.', 'hardware hacking, maker culture, DIY electronics', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://hackaday.com'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://hackaday.com'), (SELECT id FROM subtopics WHERE slug = 'hardware-electronics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://hackaday.com'), (SELECT id FROM niches WHERE slug = 'arduino'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://hackaday.com'), (SELECT id FROM niches WHERE slug = 'circuit-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.shadertoy.com', 'Shadertoy', 'Build and share real-time GPU shaders in the browser. A playground for visual math.', 'GPU art, shader programming, mathematical visualization', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM subtopics WHERE slug = 'generative-art'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM niches WHERE slug = 'webgl'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.shadertoy.com'), (SELECT id FROM niches WHERE slug = 'creative-coding'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://archive.org', 'Internet Archive', 'Digital library offering free access to books, movies, music, software, and the Wayback Machine.', 'digital preservation, web history, free knowledge', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM subtopics WHERE slug = 'retro-computing'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM subtopics WHERE slug = 'open-source'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM niches WHERE slug = 'old-web'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://archive.org'), (SELECT id FROM niches WHERE slug = 'foss-culture'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://uxdesign.cc', 'UX Collective', 'Curated stories on user experience, visual design, and product design on Medium.', 'design thinking, UX insights, product design community', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM subtopics WHERE slug = 'hci'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM subtopics WHERE slug = 'ui-ux'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM niches WHERE slug = 'usability'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://uxdesign.cc'), (SELECT id FROM niches WHERE slug = 'interaction-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.pouet.net', 'Pouet.net', 'The demoscene community portal — browse demos, intros, and real-time audio-visual art.', 'demoscene archive, real-time graphics, digital underground art', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.pouet.net'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.pouet.net'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.pouet.net'), (SELECT id FROM subtopics WHERE slug = 'retro-computing'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.pouet.net'), (SELECT id FROM niches WHERE slug = 'demoscene'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://neal.fun', 'Neal.fun', 'Collection of interactive web toys: spend Bill Gates'' money, draw a perfect circle, explore deep sea.', 'web toys, interactive curiosities, fun data viz', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neal.fun'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neal.fun'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neal.fun'), (SELECT id FROM subtopics WHERE slug = 'web-dev'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://neal.fun'), (SELECT id FROM niches WHERE slug = 'indie-web'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://godotengine.org', 'Godot Engine', 'Free and open source game engine with a friendly node-based architecture and GDScript.', 'open source gamedev, indie game tools, community-driven engine', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://godotengine.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://godotengine.org'), (SELECT id FROM subtopics WHERE slug = 'game-development'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://godotengine.org'), (SELECT id FROM subtopics WHERE slug = 'open-source'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://godotengine.org'), (SELECT id FROM niches WHERE slug = 'godot'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://godotengine.org'), (SELECT id FROM niches WHERE slug = 'foss-culture'));

-- ── HISTORY ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.ancient.eu', 'World History Encyclopedia', 'Free online encyclopedia covering ancient civilizations, people, places, and events.', 'ancient world rabbit holes, civilization deep dives, history encyclopedia', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.ancient.eu'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.ancient.eu'), (SELECT id FROM subtopics WHERE slug = 'ancient-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.ancient.eu'), (SELECT id FROM niches WHERE slug = 'mesopotamia'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.ancient.eu'), (SELECT id FROM niches WHERE slug = 'ancient-egypt'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.ancient.eu'), (SELECT id FROM niches WHERE slug = 'roman-empire'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.oldmapsonline.org', 'Old Maps Online', 'Search engine for historical maps from libraries and archives around the world.', 'historical cartography, map treasure hunting, geographic time travel', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.oldmapsonline.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.oldmapsonline.org'), (SELECT id FROM subtopics WHERE slug = 'historical-maps'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.oldmapsonline.org'), (SELECT id FROM niches WHERE slug = 'cartography'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.oldmapsonline.org'), (SELECT id FROM niches WHERE slug = 'empire-maps'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.medievalists.net', 'Medievalists.net', 'News, articles, and research about the medieval world from academic and popular sources.', 'medieval deep dives, castle and sword era, dark ages illuminated', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.medievalists.net'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.medievalists.net'), (SELECT id FROM subtopics WHERE slug = 'medieval'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.medievalists.net'), (SELECT id FROM subtopics WHERE slug = 'european-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.medievalists.net'), (SELECT id FROM niches WHERE slug = 'viking-age'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.medievalists.net'), (SELECT id FROM niches WHERE slug = 'feudalism'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://digitalcollections.nypl.org', 'NYPL Digital Collections', 'Over 900,000 digitized items from the New York Public Library including maps, photos, and manuscripts.', 'digital archive treasure trove, primary sources, visual history', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://digitalcollections.nypl.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://digitalcollections.nypl.org'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://digitalcollections.nypl.org'), (SELECT id FROM subtopics WHERE slug = 'modern-history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://digitalcollections.nypl.org'), (SELECT id FROM subtopics WHERE slug = 'us-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://digitalcollections.nypl.org'), (SELECT id FROM niches WHERE slug = 'civil-rights-movement'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.livius.org', 'Livius', 'Articles on ancient history and Mediterranean civilizations with detailed archaeological context.', 'ancient world deep dives, Mediterranean history, classical archaeology', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.livius.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.livius.org'), (SELECT id FROM subtopics WHERE slug = 'ancient-history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.livius.org'), (SELECT id FROM subtopics WHERE slug = 'archaeology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.livius.org'), (SELECT id FROM niches WHERE slug = 'roman-empire'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.livius.org'), (SELECT id FROM niches WHERE slug = 'lost-cities'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.coldwar.org', 'Cold War Museum', 'Virtual museum preserving Cold War history through stories, artifacts, and educational resources.', 'Cold War tensions, nuclear era, superpower standoff', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coldwar.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coldwar.org'), (SELECT id FROM subtopics WHERE slug = 'modern-history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coldwar.org'), (SELECT id FROM subtopics WHERE slug = 'military-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coldwar.org'), (SELECT id FROM niches WHERE slug = 'cold-war'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.thehistoryofafrica.com', 'The History of Africa Podcast', 'Comprehensive podcast and companion site covering African history from the earliest times.', 'African civilizations, untold histories, continental story', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thehistoryofafrica.com'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thehistoryofafrica.com'), (SELECT id FROM subtopics WHERE slug = 'african-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thehistoryofafrica.com'), (SELECT id FROM niches WHERE slug = 'ancient-kingdoms'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.japan-guide.com/e/e2055.html', 'japan-guide: Japanese History', 'Comprehensive overview of Japanese historical periods from Jomon to modern era.', 'Japanese history timeline, samurai to modern, cultural evolution', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.japan-guide.com/e/e2055.html'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.japan-guide.com/e/e2055.html'), (SELECT id FROM subtopics WHERE slug = 'asian-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.japan-guide.com/e/e2055.html'), (SELECT id FROM niches WHERE slug = 'feudal-japan'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.nauticalarchaeology.org', 'Institute of Nautical Archaeology', 'Research on shipwrecks and underwater archaeological sites around the world.', 'sunken ships, underwater discoveries, maritime mysteries', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nauticalarchaeology.org'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nauticalarchaeology.org'), (SELECT id FROM subtopics WHERE slug = 'archaeology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nauticalarchaeology.org'), (SELECT id FROM niches WHERE slug = 'underwater-archaeology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://thehistoryvault.co.uk', 'The History Vault', 'Long-form articles on British and European history with engaging narrative style.', 'European history stories, well-told past, narrative history', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thehistoryvault.co.uk'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thehistoryvault.co.uk'), (SELECT id FROM subtopics WHERE slug = 'european-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://thehistoryvault.co.uk'), (SELECT id FROM niches WHERE slug = 'age-of-exploration'));

-- ── ENTERTAINMENT ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://itch.io', 'itch.io', 'Indie game marketplace where creators publish experimental, weird, and wonderful games.', 'indie games treasure chest, experimental play, creative game devs', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM subtopics WHERE slug = 'games'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM subtopics WHERE slug = 'game-development'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM niches WHERE slug = 'indie-games'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://itch.io'), (SELECT id FROM niches WHERE slug = 'game-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.retroarch.com', 'RetroArch', 'Open source frontend for emulators and game engines, play retro games on any modern device.', 'retro gaming hub, emulation paradise, classic game preservation', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.retroarch.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.retroarch.com'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.retroarch.com'), (SELECT id FROM subtopics WHERE slug = 'games'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.retroarch.com'), (SELECT id FROM niches WHERE slug = 'retro-games'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://letterboxd.com', 'Letterboxd', 'Social platform for film lovers to log, rate, and discover movies with curated lists.', 'cinephile social network, film diary, movie recommendations', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://letterboxd.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://letterboxd.com'), (SELECT id FROM subtopics WHERE slug = 'film'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://letterboxd.com'), (SELECT id FROM niches WHERE slug = 'arthouse-film'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://letterboxd.com'), (SELECT id FROM niches WHERE slug = 'cinematography'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.sakugabooru.com', 'Sakugabooru', 'Curated database of exceptional animation clips organized by animator, show, and studio.', 'animation appreciation, sakuga cuts, motion art', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sakugabooru.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sakugabooru.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sakugabooru.com'), (SELECT id FROM subtopics WHERE slug = 'animation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sakugabooru.com'), (SELECT id FROM niches WHERE slug = 'anime'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.comics.org', 'Grand Comics Database', 'Volunteer-maintained database of comic book information spanning every era and publisher.', 'comic book archaeology, issue tracking, print history', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.comics.org'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.comics.org'), (SELECT id FROM subtopics WHERE slug = 'comics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.comics.org'), (SELECT id FROM niches WHERE slug = 'graphic-novels'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://lichess.org', 'Lichess', 'Free, open source chess server with puzzles, tournaments, and analysis tools.', 'chess for everyone, open source gaming, competitive puzzles', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lichess.org'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lichess.org'), (SELECT id FROM subtopics WHERE slug = 'chess'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lichess.org'), (SELECT id FROM niches WHERE slug = 'chess-puzzles'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lichess.org'), (SELECT id FROM niches WHERE slug = 'chess-openings'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://online-go.com', 'OGS - Online Go Server', 'Play Go online against humans and AI with a clean, modern interface.', 'ancient strategy, Go community, deep game', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://online-go.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://online-go.com'), (SELECT id FROM subtopics WHERE slug = 'go'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://online-go.com'), (SELECT id FROM niches WHERE slug = 'go-strategy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://online-go.com'), (SELECT id FROM niches WHERE slug = 'go-problems'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://boardgamegeek.com', 'BoardGameGeek', 'The definitive board game database with reviews, rankings, and a massive community.', 'board game deep cuts, tabletop culture, game night planning', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://boardgamegeek.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://boardgamegeek.com'), (SELECT id FROM subtopics WHERE slug = 'board-games'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://boardgamegeek.com'), (SELECT id FROM niches WHERE slug = 'euro-games'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://boardgamegeek.com'), (SELECT id FROM niches WHERE slug = 'cooperative-games'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.podchaser.com', 'Podchaser', 'Discover and rate podcasts, browse curated lists, and explore creator credits.', 'podcast discovery, audio rabbit holes, show recommendations', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.podchaser.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.podchaser.com'), (SELECT id FROM subtopics WHERE slug = 'podcasts'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.podchaser.com'), (SELECT id FROM niches WHERE slug = 'true-crime-podcasts'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.podchaser.com'), (SELECT id FROM niches WHERE slug = 'interview-shows'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.setlist.fm', 'Setlist.fm', 'Community-driven database of concert setlists from shows around the world.', 'concert memories, live music data, setlist deep dives', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.setlist.fm'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.setlist.fm'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.setlist.fm'), (SELECT id FROM subtopics WHERE slug = 'sports'));

-- ── POLITICS ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.politico.eu', 'Politico Europe', 'European politics and policy news covering EU institutions, elections, and geopolitics.', 'European politics, policy analysis, Brussels bubble', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.politico.eu'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.politico.eu'), (SELECT id FROM subtopics WHERE slug = 'geopolitics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.politico.eu'), (SELECT id FROM subtopics WHERE slug = 'policy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.politico.eu'), (SELECT id FROM niches WHERE slug = 'international-relations'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.allsides.com', 'AllSides', 'News from left, center, and right perspectives side by side with media bias ratings.', 'balanced news, media bias awareness, perspective check', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allsides.com'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allsides.com'), (SELECT id FROM subtopics WHERE slug = 'media-literacy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allsides.com'), (SELECT id FROM niches WHERE slug = 'media-bias'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allsides.com'), (SELECT id FROM niches WHERE slug = 'fact-checking'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://plato.stanford.edu/entries/political-obligation', 'Stanford Encyclopedia of Philosophy: Political Obligation', 'In-depth philosophical analysis of the foundations and limits of political obligation.', 'political philosophy deep dive, academic rigor, foundational questions', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu/entries/political-obligation'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu/entries/political-obligation'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu/entries/political-obligation'), (SELECT id FROM subtopics WHERE slug = 'political-theory'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu/entries/political-obligation'), (SELECT id FROM niches WHERE slug = 'social-contract'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu/entries/political-obligation'), (SELECT id FROM niches WHERE slug = 'democratic-theory'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.eff.org', 'Electronic Frontier Foundation', 'Leading nonprofit defending digital privacy, free speech, and innovation.', 'digital rights, internet freedom, tech policy activism', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM subtopics WHERE slug = 'activism'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM subtopics WHERE slug = 'policy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM niches WHERE slug = 'digital-activism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.eff.org'), (SELECT id FROM niches WHERE slug = 'tech-policy'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.opendemocracy.net', 'openDemocracy', 'Independent global media platform covering social justice, human rights, and democratic reform.', 'global democracy, human rights reporting, social justice', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.opendemocracy.net'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.opendemocracy.net'), (SELECT id FROM subtopics WHERE slug = 'activism'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.opendemocracy.net'), (SELECT id FROM subtopics WHERE slug = 'political-theory'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.opendemocracy.net'), (SELECT id FROM niches WHERE slug = 'democratic-theory'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.thepoliticalcompass.org', 'The Political Compass', 'Map your political position on a two-axis grid beyond the traditional left-right spectrum.', 'political self-assessment, ideology mapping, beyond left and right', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thepoliticalcompass.org'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thepoliticalcompass.org'), (SELECT id FROM subtopics WHERE slug = 'political-philosophies'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thepoliticalcompass.org'), (SELECT id FROM niches WHERE slug = 'libertarianism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thepoliticalcompass.org'), (SELECT id FROM niches WHERE slug = 'socialism'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://adbusters.org', 'Adbusters', 'Culture jamming magazine challenging consumerism and corporate influence on culture.', 'anti-consumerism, culture jamming, radical media critique', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://adbusters.org'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://adbusters.org'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://adbusters.org'), (SELECT id FROM subtopics WHERE slug = 'media-literacy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://adbusters.org'), (SELECT id FROM subtopics WHERE slug = 'activism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://adbusters.org'), (SELECT id FROM niches WHERE slug = 'propaganda-studies'));

-- ── PHILOSOPHY ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://plato.stanford.edu', 'Stanford Encyclopedia of Philosophy', 'The gold standard for academic philosophy reference, covering every major topic and thinker.', 'philosophy deep dives, authoritative reference, academic rigor', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM subtopics WHERE slug = 'ethics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM subtopics WHERE slug = 'metaphysics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM subtopics WHERE slug = 'epistemology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM niches WHERE slug = 'ai-ethics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM niches WHERE slug = 'free-will'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://plato.stanford.edu'), (SELECT id FROM niches WHERE slug = 'skepticism'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://existentialcomics.com', 'Existential Comics', 'Webcomic about philosophy featuring history''s great thinkers in hilarious situations.', 'philosophy humor, existential laughs, thinker memes', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM topics WHERE slug = 'entertainment'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM subtopics WHERE slug = 'existentialism'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM subtopics WHERE slug = 'philosophers'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM niches WHERE slug = 'absurdism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://existentialcomics.com'), (SELECT id FROM niches WHERE slug = 'nietzsche'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://dailystoic.com', 'Daily Stoic', 'Daily meditations and articles on Stoic philosophy for modern life.', 'practical Stoicism, daily wisdom, ancient philosophy for today', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://dailystoic.com'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://dailystoic.com'), (SELECT id FROM subtopics WHERE slug = 'stoicism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://dailystoic.com'), (SELECT id FROM niches WHERE slug = 'marcus-aurelius'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://dailystoic.com'), (SELECT id FROM niches WHERE slug = 'epictetus'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://dailystoic.com'), (SELECT id FROM niches WHERE slug = 'modern-stoicism'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.philosophyexperiments.com', 'Philosophy Experiments', 'Interactive thought experiments and moral dilemmas that test your philosophical intuitions.', 'thought experiments, moral puzzles, test your intuitions', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.philosophyexperiments.com'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.philosophyexperiments.com'), (SELECT id FROM subtopics WHERE slug = 'ethics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.philosophyexperiments.com'), (SELECT id FROM subtopics WHERE slug = 'logic'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.philosophyexperiments.com'), (SELECT id FROM niches WHERE slug = 'bioethics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.philosophyexperiments.com'), (SELECT id FROM niches WHERE slug = 'paradoxes'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.accesstoinsight.org', 'Access to Insight', 'Library of Theravada Buddhist texts translated from the Pali Canon with study guides.', 'Buddhist texts, meditation teachings, Pali Canon library', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.accesstoinsight.org'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.accesstoinsight.org'), (SELECT id FROM subtopics WHERE slug = 'eastern-philosophy'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.accesstoinsight.org'), (SELECT id FROM niches WHERE slug = 'buddhism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.accesstoinsight.org'), (SELECT id FROM niches WHERE slug = 'zen'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://iep.utm.edu', 'Internet Encyclopedia of Philosophy', 'Peer-reviewed academic philosophy resource covering historical and contemporary topics.', 'philosophy encyclopedia, deep analysis, thinker profiles', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM subtopics WHERE slug = 'ancient-philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM subtopics WHERE slug = 'aesthetics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM niches WHERE slug = 'platonism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM niches WHERE slug = 'aristotelianism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://iep.utm.edu'), (SELECT id FROM niches WHERE slug = 'philosophy-of-art'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.brainpickings.org', 'The Marginalian', 'Maria Popova''s long-running site exploring literature, science, art, and philosophy.', 'cross-disciplinary wonder, intellectual exploration, beautiful writing', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM subtopics WHERE slug = 'philosophers'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM subtopics WHERE slug = 'essays'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM niches WHERE slug = 'simone-de-beauvoir'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brainpickings.org'), (SELECT id FROM niches WHERE slug = 'cultural-criticism'));

-- ── MUSIC ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://everynoise.com', 'Every Noise at Once', 'Algorithmically generated scatter-plot of 6,000+ music genres with listenable samples.', 'genre exploration, music discovery engine, sonic cartography', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM subtopics WHERE slug = 'electronic'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM subtopics WHERE slug = 'indie'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM subtopics WHERE slug = 'hip-hop'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM niches WHERE slug = 'synthwave'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM niches WHERE slug = 'shoegaze'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://everynoise.com'), (SELECT id FROM niches WHERE slug = 'boom-bap'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://musicmap.info', 'Musicmap', 'Interactive genealogy of popular music genres showing how styles evolved and influenced each other.', 'music history visualized, genre family tree, sonic evolution', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://musicmap.info'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://musicmap.info'), (SELECT id FROM subtopics WHERE slug = 'music-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://musicmap.info'), (SELECT id FROM niches WHERE slug = 'music-movements'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://radio.garden', 'Radio Garden', 'Spin a 3D globe and tune into live radio stations from cities around the world.', 'global radio surfing, world sounds, live discovery', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://radio.garden'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://radio.garden'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://radio.garden'), (SELECT id FROM subtopics WHERE slug = 'world-music'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://radio.garden'), (SELECT id FROM niches WHERE slug = 'afrobeat'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://radio.garden'), (SELECT id FROM niches WHERE slug = 'bossa-nova'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.modulargrid.net', 'ModularGrid', 'Plan and share modular synthesizer setups with a massive database of Eurorack modules.', 'synth nerd paradise, modular planning, electronic instrument design', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.modulargrid.net'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.modulargrid.net'), (SELECT id FROM subtopics WHERE slug = 'music-production'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.modulargrid.net'), (SELECT id FROM subtopics WHERE slug = 'musical-instruments'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.modulargrid.net'), (SELECT id FROM niches WHERE slug = 'modular-synths'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.modulargrid.net'), (SELECT id FROM niches WHERE slug = 'synthesizers'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.jazz-on-line.com', 'Jazz on Line', 'Archive of early jazz recordings from the 1920s through 1940s, freely streamable.', 'vintage jazz, early recordings, golden era swing', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.jazz-on-line.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.jazz-on-line.com'), (SELECT id FROM subtopics WHERE slug = 'jazz'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.jazz-on-line.com'), (SELECT id FROM subtopics WHERE slug = 'music-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.jazz-on-line.com'), (SELECT id FROM niches WHERE slug = 'bebop'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.jazz-on-line.com'), (SELECT id FROM niches WHERE slug = 'history-of-recording'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://freesound.org', 'Freesound', 'Collaborative database of Creative Commons licensed sounds for any project.', 'sound library, audio treasure chest, field recordings', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM subtopics WHERE slug = 'music-production'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM subtopics WHERE slug = 'audio-technology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM niches WHERE slug = 'sound-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://freesound.org'), (SELECT id FROM niches WHERE slug = 'dsp'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.whosampled.com', 'WhoSampled', 'Explore the DNA of music — discover samples, covers, and remixes across genres.', 'sample detective, music connections, beat archaeology', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.whosampled.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.whosampled.com'), (SELECT id FROM subtopics WHERE slug = 'hip-hop'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.whosampled.com'), (SELECT id FROM subtopics WHERE slug = 'electronic'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.whosampled.com'), (SELECT id FROM niches WHERE slug = 'boom-bap'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.whosampled.com'), (SELECT id FROM niches WHERE slug = 'lo-fi-hip-hop'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.classicfm.com/discover-music', 'Classic FM Discover', 'Accessible guides to classical music composers, periods, and instruments.', 'classical music gateway, composer stories, orchestral appreciation', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.classicfm.com/discover-music'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.classicfm.com/discover-music'), (SELECT id FROM subtopics WHERE slug = 'classical'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.classicfm.com/discover-music'), (SELECT id FROM niches WHERE slug = 'baroque'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.classicfm.com/discover-music'), (SELECT id FROM niches WHERE slug = 'romantic-era'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.vinylmeplease.com', 'Vinyl Me, Please', 'Record of the month club with deep editorial on the vinyl releases and their context.', 'vinyl culture, curated records, album deep dives', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.vinylmeplease.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.vinylmeplease.com'), (SELECT id FROM subtopics WHERE slug = 'rock'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.vinylmeplease.com'), (SELECT id FROM subtopics WHERE slug = 'music-history'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.vinylmeplease.com'), (SELECT id FROM niches WHERE slug = 'vinyl-culture'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.vinylmeplease.com'), (SELECT id FROM niches WHERE slug = 'psychedelic-rock'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.allaboutblues.com', 'All About Blues Music', 'Comprehensive resource covering blues history, artists, and regional styles.', 'blues roots, delta to electric, twelve-bar soul', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allaboutblues.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allaboutblues.com'), (SELECT id FROM subtopics WHERE slug = 'blues'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allaboutblues.com'), (SELECT id FROM niches WHERE slug = 'delta-blues'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.allaboutblues.com'), (SELECT id FROM niches WHERE slug = 'chicago-blues'));

-- ── NATURE ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://ebird.org', 'eBird', 'Cornell Lab''s global birding platform for logging sightings and exploring bird data worldwide.', 'citizen science birding, global bird data, species spotting', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://ebird.org'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://ebird.org'), (SELECT id FROM subtopics WHERE slug = 'wildlife'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://ebird.org'), (SELECT id FROM subtopics WHERE slug = 'ornithology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://ebird.org'), (SELECT id FROM niches WHERE slug = 'birds'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://ebird.org'), (SELECT id FROM niches WHERE slug = 'birding'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.inaturalist.org', 'iNaturalist', 'Record observations of nature, get AI-assisted species IDs, and contribute to science.', 'nature identification, citizen science, species discovery', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.inaturalist.org'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.inaturalist.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.inaturalist.org'), (SELECT id FROM subtopics WHERE slug = 'wildlife'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.inaturalist.org'), (SELECT id FROM subtopics WHERE slug = 'ecology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.inaturalist.org'), (SELECT id FROM niches WHERE slug = 'insects'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.coralreefwatch.noaa.gov', 'NOAA Coral Reef Watch', 'Satellite monitoring of coral reef conditions including bleaching alerts worldwide.', 'ocean health tracking, coral bleaching data, reef conservation', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coralreefwatch.noaa.gov'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coralreefwatch.noaa.gov'), (SELECT id FROM subtopics WHERE slug = 'oceans'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coralreefwatch.noaa.gov'), (SELECT id FROM subtopics WHERE slug = 'conservation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coralreefwatch.noaa.gov'), (SELECT id FROM niches WHERE slug = 'coral-reefs'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.coralreefwatch.noaa.gov'), (SELECT id FROM niches WHERE slug = 'endangered-species'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.mushroom-appreciation.com', 'Mushroom Appreciation', 'Guide to mushroom identification, foraging, and the fascinating world of fungi.', 'mushroom hunting, fungal wonders, forest foraging', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.mushroom-appreciation.com'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.mushroom-appreciation.com'), (SELECT id FROM subtopics WHERE slug = 'botany'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.mushroom-appreciation.com'), (SELECT id FROM niches WHERE slug = 'mycology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.windy.com', 'Windy', 'Beautiful real-time weather visualization with wind, rain, temperature, and wave data.', 'mesmerizing weather map, storm tracking, atmospheric data art', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.windy.com'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.windy.com'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.windy.com'), (SELECT id FROM subtopics WHERE slug = 'weather'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.windy.com'), (SELECT id FROM niches WHERE slug = 'meteorology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.windy.com'), (SELECT id FROM niches WHERE slug = 'storm-chasing'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.alltrails.com', 'AllTrails', 'Discover hiking and trail running routes with reviews, maps, and photos from the community.', 'trail discovery, outdoor planning, hiking community', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.alltrails.com'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.alltrails.com'), (SELECT id FROM subtopics WHERE slug = 'hiking'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.alltrails.com'), (SELECT id FROM niches WHERE slug = 'thru-hiking'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.alltrails.com'), (SELECT id FROM niches WHERE slug = 'trail-running'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://cloudappreciationsociety.org', 'Cloud Appreciation Society', 'Celebrating the beauty and variety of clouds with a gallery, ID guides, and cloud news.', 'look up more, cloud watching, atmospheric beauty', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cloudappreciationsociety.org'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cloudappreciationsociety.org'), (SELECT id FROM subtopics WHERE slug = 'weather'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://cloudappreciationsociety.org'), (SELECT id FROM niches WHERE slug = 'cloud-spotting'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.butterfliesandmoths.org', 'Butterflies and Moths of North America', 'Community-driven database for recording and verifying butterfly and moth sightings.', 'lepidoptera tracking, butterfly identification, insect beauty', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.butterfliesandmoths.org'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.butterfliesandmoths.org'), (SELECT id FROM subtopics WHERE slug = 'entomology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.butterfliesandmoths.org'), (SELECT id FROM niches WHERE slug = 'butterflies-moths'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.nps.gov/subjects/camping/index.htm', 'NPS Camping', 'National Park Service guide to camping in America''s national parks and public lands.', 'national park camping, public lands, outdoor planning', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nps.gov/subjects/camping/index.htm'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nps.gov/subjects/camping/index.htm'), (SELECT id FROM subtopics WHERE slug = 'camping'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nps.gov/subjects/camping/index.htm'), (SELECT id FROM subtopics WHERE slug = 'conservation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nps.gov/subjects/camping/index.htm'), (SELECT id FROM niches WHERE slug = 'car-camping'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nps.gov/subjects/camping/index.htm'), (SELECT id FROM niches WHERE slug = 'national-parks'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.survivalschool.com', 'Survival School', 'Wilderness survival techniques, primitive skills, and outdoor preparedness training.', 'wilderness skills, primitive living, outdoor self-reliance', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.survivalschool.com'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.survivalschool.com'), (SELECT id FROM subtopics WHERE slug = 'survival'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.survivalschool.com'), (SELECT id FROM niches WHERE slug = 'wilderness-survival'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.survivalschool.com'), (SELECT id FROM niches WHERE slug = 'foraging'));

-- ── CULTURE ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.are.na', 'Are.na', 'Visual bookmarking platform for collecting and connecting ideas — like indie Pinterest for thinkers.', 'idea collecting, visual research, slow internet', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.are.na'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.are.na'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.are.na'), (SELECT id FROM subtopics WHERE slug = 'subcultures'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.are.na'), (SELECT id FROM niches WHERE slug = 'solarpunk'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.atlasobscura.com', 'Atlas Obscura', 'Definitive guide to the world''s hidden wonders, curious places, and unusual experiences.', 'hidden wonders, curious travel, offbeat exploration', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.atlasobscura.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.atlasobscura.com'), (SELECT id FROM topics WHERE slug = 'nature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.atlasobscura.com'), (SELECT id FROM subtopics WHERE slug = 'travel'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.atlasobscura.com'), (SELECT id FROM niches WHERE slug = 'slow-travel'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.seriouseats.com', 'Serious Eats', 'Science-driven food writing with tested recipes and deep dives into cooking techniques.', 'food science, tested recipes, culinary geekery', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.seriouseats.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.seriouseats.com'), (SELECT id FROM subtopics WHERE slug = 'food-drink'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.seriouseats.com'), (SELECT id FROM niches WHERE slug = 'fermentation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.seriouseats.com'), (SELECT id FROM niches WHERE slug = 'street-food'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.sacredtexts.com', 'Internet Sacred Text Archive', 'Largest freely available archive of texts about religion, mythology, and the encyclopedic.', 'sacred texts, world religions, mythological library', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sacredtexts.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sacredtexts.com'), (SELECT id FROM topics WHERE slug = 'philosophy'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sacredtexts.com'), (SELECT id FROM subtopics WHERE slug = 'religion-spirituality'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sacredtexts.com'), (SELECT id FROM niches WHERE slug = 'mythology'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.sacredtexts.com'), (SELECT id FROM niches WHERE slug = 'comparative-religion'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.etymonline.com', 'Online Etymology Dictionary', 'Trace the origins and evolution of English words from their earliest known roots.', 'word archaeology, language roots, etymological rabbit holes', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.etymonline.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.etymonline.com'), (SELECT id FROM subtopics WHERE slug = 'language'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.etymonline.com'), (SELECT id FROM niches WHERE slug = 'etymology'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://daily.jstor.org', 'JSTOR Daily', 'Stories connecting current events to scholarly research, making academia accessible.', 'academic meets popular, research-backed stories, knowledge bridge', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://daily.jstor.org'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://daily.jstor.org'), (SELECT id FROM topics WHERE slug = 'science'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://daily.jstor.org'), (SELECT id FROM subtopics WHERE slug = 'counterculture'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://daily.jstor.org'), (SELECT id FROM niches WHERE slug = 'beat-generation'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://specialtycoffee.com', 'Specialty Coffee Association', 'Resources on coffee quality, brewing science, and the global specialty coffee community.', 'coffee deep dives, brewing science, bean culture', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://specialtycoffee.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://specialtycoffee.com'), (SELECT id FROM subtopics WHERE slug = 'food-drink'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://specialtycoffee.com'), (SELECT id FROM niches WHERE slug = 'coffee'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://fashionhistory.fitnyc.edu', 'Fashion History Timeline', 'FIT''s visual timeline of fashion from ancient civilizations to today.', 'fashion through the ages, costume history, style evolution', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://fashionhistory.fitnyc.edu'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://fashionhistory.fitnyc.edu'), (SELECT id FROM subtopics WHERE slug = 'fashion'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://fashionhistory.fitnyc.edu'), (SELECT id FROM niches WHERE slug = 'vintage-fashion'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.making-queer-history.com', 'Making Queer History', 'Accessible accounts of queer historical figures and events that shaped LGBTQ+ culture.', 'queer history stories, LGBTQ+ heritage, untold narratives', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.making-queer-history.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.making-queer-history.com'), (SELECT id FROM topics WHERE slug = 'history'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.making-queer-history.com'), (SELECT id FROM subtopics WHERE slug = 'lgbt'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.making-queer-history.com'), (SELECT id FROM niches WHERE slug = 'queer-history'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://solar.lowtechmagazine.com', 'LOW←TECH MAGAZINE (Solar)', 'A solar-powered website exploring past technologies and sustainable alternatives to high-tech.', 'low tech solutions, solar powered web, sustainable thinking', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://solar.lowtechmagazine.com'), (SELECT id FROM topics WHERE slug = 'culture'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://solar.lowtechmagazine.com'), (SELECT id FROM topics WHERE slug = 'technology'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://solar.lowtechmagazine.com'), (SELECT id FROM subtopics WHERE slug = 'subcultures'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://solar.lowtechmagazine.com'), (SELECT id FROM subtopics WHERE slug = 'counterculture'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://solar.lowtechmagazine.com'), (SELECT id FROM niches WHERE slug = 'solarpunk'));

-- ── DESIGN ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://typewolf.com', 'Typewolf', 'Curated typography inspiration with font recommendations and real-world examples.', 'type nerd paradise, font curation, web typography gallery', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://typewolf.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://typewolf.com'), (SELECT id FROM subtopics WHERE slug = 'typography'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://typewolf.com'), (SELECT id FROM niches WHERE slug = 'font-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://typewolf.com'), (SELECT id FROM niches WHERE slug = 'lettering'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://lawsofux.com', 'Laws of UX', 'Collection of UX principles and psychological insights that guide interface design.', 'UX fundamentals, design psychology, interface principles', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lawsofux.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lawsofux.com'), (SELECT id FROM subtopics WHERE slug = 'ui-ux'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lawsofux.com'), (SELECT id FROM niches WHERE slug = 'interaction-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lawsofux.com'), (SELECT id FROM niches WHERE slug = 'ux-research'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.brutalistwebsites.com', 'Brutalist Websites', 'Gallery of raw, stripped-down web design that embraces the brutalist aesthetic.', 'anti-design, raw web, brutalist aesthetic', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brutalistwebsites.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brutalistwebsites.com'), (SELECT id FROM subtopics WHERE slug = 'architecture'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brutalistwebsites.com'), (SELECT id FROM subtopics WHERE slug = 'digital-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brutalistwebsites.com'), (SELECT id FROM niches WHERE slug = 'brutalism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brutalistwebsites.com'), (SELECT id FROM niches WHERE slug = 'web-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://designmuseum.org', 'Design Museum', 'London''s museum devoted to contemporary design in all its forms.', 'design exhibitions, object beauty, contemporary craft', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designmuseum.org'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designmuseum.org'), (SELECT id FROM subtopics WHERE slug = 'industrial-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designmuseum.org'), (SELECT id FROM niches WHERE slug = 'product-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designmuseum.org'), (SELECT id FROM niches WHERE slug = 'furniture-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.logopond.com', 'LogoPond', 'Community gallery of logo designs for inspiration and peer review.', 'logo inspiration, brand marks, identity design gallery', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.logopond.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.logopond.com'), (SELECT id FROM subtopics WHERE slug = 'graphic-design'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.logopond.com'), (SELECT id FROM niches WHERE slug = 'brand-identity'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://colorhunt.co', 'Color Hunt', 'Curated collection of beautiful color palettes, updated daily by a design community.', 'color palette inspiration, daily design swatches, chromatic harmony', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://colorhunt.co'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://colorhunt.co'), (SELECT id FROM subtopics WHERE slug = 'color-theory'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://colorhunt.co'), (SELECT id FROM niches WHERE slug = 'palettes'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://colorhunt.co'), (SELECT id FROM niches WHERE slug = 'color-systems'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://designsystemsrepo.com', 'Design Systems Repo', 'Curated collection of design systems, pattern libraries, and style guides.', 'design systems catalog, component inspiration, systematic design', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designsystemsrepo.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designsystemsrepo.com'), (SELECT id FROM subtopics WHERE slug = 'design-systems'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designsystemsrepo.com'), (SELECT id FROM niches WHERE slug = 'component-libraries'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://designsystemsrepo.com'), (SELECT id FROM niches WHERE slug = 'atomic-design'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.figma.com/community', 'Figma Community', 'Browse and duplicate free design files, plugins, and widgets from the Figma community.', 'design resources, community templates, collaborative design', NULL, false);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.figma.com/community'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.figma.com/community'), (SELECT id FROM subtopics WHERE slug = 'design-software'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.figma.com/community'), (SELECT id FROM niches WHERE slug = 'figma'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.motionographer.com', 'Motionographer', 'Curated motion design, animation, and visual effects from the industry''s best.', 'motion design showcase, animation inspiration, kinetic art', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.motionographer.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.motionographer.com'), (SELECT id FROM topics WHERE slug = 'art'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.motionographer.com'), (SELECT id FROM subtopics WHERE slug = 'motion-animation'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.motionographer.com'), (SELECT id FROM niches WHERE slug = 'motion-graphics'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.motionographer.com'), (SELECT id FROM niches WHERE slug = 'kinetic-typography'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://tinyhouses.com', 'Tiny House Community', 'Plans, stories, and resources for the tiny house movement and alternative living.', 'tiny living, minimal architecture, alternative housing', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://tinyhouses.com'), (SELECT id FROM topics WHERE slug = 'design'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://tinyhouses.com'), (SELECT id FROM subtopics WHERE slug = 'architecture'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://tinyhouses.com'), (SELECT id FROM niches WHERE slug = 'tiny-houses'));

-- ── LITERATURE ──

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.poetryfoundation.org', 'Poetry Foundation', 'Massive archive of poems, poet biographies, and audio recordings.', 'poetry deep dives, verse exploration, audio poetry', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.poetryfoundation.org'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.poetryfoundation.org'), (SELECT id FROM subtopics WHERE slug = 'poetry'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.poetryfoundation.org'), (SELECT id FROM niches WHERE slug = 'spoken-word'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.poetryfoundation.org'), (SELECT id FROM niches WHERE slug = 'confessional-poetry'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.tor.com', 'Tor.com', 'Science fiction and fantasy publisher''s editorial site with free stories and deep genre analysis.', 'sci-fi and fantasy, genre deep dives, free short fiction', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.tor.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.tor.com'), (SELECT id FROM subtopics WHERE slug = 'sci-fi'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.tor.com'), (SELECT id FROM subtopics WHERE slug = 'fiction'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.tor.com'), (SELECT id FROM niches WHERE slug = 'worldbuilding'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.tor.com'), (SELECT id FROM niches WHERE slug = 'speculative-fiction'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://electricliterature.com', 'Electric Literature', 'Nonprofit literary magazine publishing fiction, essays, and making literature more accessible.', 'contemporary fiction, literary discovery, accessible lit', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://electricliterature.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://electricliterature.com'), (SELECT id FROM subtopics WHERE slug = 'fiction'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://electricliterature.com'), (SELECT id FROM subtopics WHERE slug = 'essays'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://electricliterature.com'), (SELECT id FROM niches WHERE slug = 'literary-fiction'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://electricliterature.com'), (SELECT id FROM niches WHERE slug = 'personal-essays'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.brokenpenclezine.com', 'Broken Pencil', 'Magazine covering zine culture, indie publishing, and DIY media since 1995.', 'zine culture, indie publishing, DIY media', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brokenpenclezine.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brokenpenclezine.com'), (SELECT id FROM subtopics WHERE slug = 'zines'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brokenpenclezine.com'), (SELECT id FROM niches WHERE slug = 'diy-publishing'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.brokenpenclezine.com'), (SELECT id FROM niches WHERE slug = 'risograph'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://longreads.com', 'Longreads', 'Curated collection of the best longform nonfiction writing from around the web.', 'longform nonfiction, deep reads, narrative journalism', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://longreads.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://longreads.com'), (SELECT id FROM subtopics WHERE slug = 'journalism'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://longreads.com'), (SELECT id FROM subtopics WHERE slug = 'essays'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://longreads.com'), (SELECT id FROM niches WHERE slug = 'investigative-journalism'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://longreads.com'), (SELECT id FROM niches WHERE slug = 'longform'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.thelineofbestfit.com', 'The Line of Best Fit', 'Music publication with thoughtful reviews, features, and curated playlists.', 'music journalism, album reviews, artist features', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thelineofbestfit.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thelineofbestfit.com'), (SELECT id FROM topics WHERE slug = 'music'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thelineofbestfit.com'), (SELECT id FROM subtopics WHERE slug = 'blogs'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.thelineofbestfit.com'), (SELECT id FROM niches WHERE slug = 'newsletters'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://crimereads.com', 'CrimeReads', 'Dedicated to crime fiction, true crime writing, and the literary mystery world.', 'crime fiction community, mystery writing, noir culture', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://crimereads.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://crimereads.com'), (SELECT id FROM subtopics WHERE slug = 'crime'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://crimereads.com'), (SELECT id FROM niches WHERE slug = 'noir'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://crimereads.com'), (SELECT id FROM niches WHERE slug = 'detective-fiction'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.nightmare-magazine.com', 'Nightmare Magazine', 'Free online horror and dark fiction magazine publishing short stories and author interviews.', 'dark fiction, horror stories, literary dread', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nightmare-magazine.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nightmare-magazine.com'), (SELECT id FROM subtopics WHERE slug = 'horror'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nightmare-magazine.com'), (SELECT id FROM niches WHERE slug = 'cosmic-horror'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.nightmare-magazine.com'), (SELECT id FROM niches WHERE slug = 'gothic-horror'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://lithub.com', 'Literary Hub', 'Daily literary news, features, and reviews from the literary world.', 'book world, literary culture, reading community', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lithub.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lithub.com'), (SELECT id FROM subtopics WHERE slug = 'non-fiction'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lithub.com'), (SELECT id FROM subtopics WHERE slug = 'fiction'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lithub.com'), (SELECT id FROM niches WHERE slug = 'memoir'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://lithub.com'), (SELECT id FROM niches WHERE slug = 'literary-fiction'));

INSERT INTO sites (url, title, description, vibe, thumbnail_url, iframe_compatible) VALUES
  ('https://www.guernicamag.com', 'Guernica', 'Nonprofit magazine of global arts and politics featuring poetry, fiction, and essays.', 'literary activism, global perspectives, art meets politics', NULL, true);
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.guernicamag.com'), (SELECT id FROM topics WHERE slug = 'literature'));
INSERT INTO site_topics (site_id, topic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.guernicamag.com'), (SELECT id FROM topics WHERE slug = 'politics'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.guernicamag.com'), (SELECT id FROM subtopics WHERE slug = 'poetry'));
INSERT INTO site_subtopics (site_id, subtopic_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.guernicamag.com'), (SELECT id FROM subtopics WHERE slug = 'essays'));
INSERT INTO site_niches (site_id, niche_id) VALUES
  ((SELECT id FROM sites WHERE url = 'https://www.guernicamag.com'), (SELECT id FROM niches WHERE slug = 'cultural-criticism'));