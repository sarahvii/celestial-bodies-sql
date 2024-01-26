
--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(6,2),
    temperature integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('Orion Rock', 'A medium-sized asteroid located in the Orion belt with a peculiarly smooth surface.', 1);
INSERT INTO public.asteroid VALUES ('Jupiter Shadow', 'A dark, carbon-rich asteroid in Jupiter''s orbit, believed to be as old as the solar system.', 2);
INSERT INTO public.asteroid VALUES ('Neptune Wanderer', 'A small, icy body that originated from the Kuiper belt and is now passing Neptune.', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'The galaxy that contains our Solar System.', true, 13.50);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'The nearest spiral galaxy to the Milky Way.', false, 10.00);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 'A member of the Local Group and the third-largest galaxy in the group.', false, 13.00);
INSERT INTO public.galaxy VALUES ('Messier 81', 4, 'A grand design spiral galaxy, one of the brightest galaxies in the sky.', false, 12.00);
INSERT INTO public.galaxy VALUES ('Whirlpool', 5, 'A classic spiral galaxy, known for its well-defined spiral arms.', false, 11.00);
INSERT INTO public.galaxy VALUES ('Sombrero', 6, 'Known for its bright nucleus and large central bulge, resembling a sombrero.', false, 9.50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna Alpha', 1, 'The first moon of a terrestrial planet.', false, 4.53, 13);
INSERT INTO public.moon VALUES ('Phobos Alpha', 2, 'A rugged moon with a distinct surface.', false, 4.60, 13);
INSERT INTO public.moon VALUES ('Deimos Beta', 3, 'A smaller moon with a unique orbit.', false, 4.60, 14);
INSERT INTO public.moon VALUES ('Io Gamma', 4, 'Known for its extraordinary volcanic activity.', false, 4.50, 14);
INSERT INTO public.moon VALUES ('Europa Delta', 5, 'A moon with a subsurface ocean.', false, 4.50, 15);
INSERT INTO public.moon VALUES ('Ganymede Epsilon', 6, 'The largest moon in this planetary system.', false, 4.50, 15);
INSERT INTO public.moon VALUES ('Callisto Zeta', 7, 'Characterized by its heavily cratered surface.', false, 4.50, 16);
INSERT INTO public.moon VALUES ('Titan Eta', 8, 'Has a dense and rich atmosphere.', false, 4.50, 16);
INSERT INTO public.moon VALUES ('Rhea Theta', 9, 'An icy moon with a fascinating surface.', false, 4.50, 17);
INSERT INTO public.moon VALUES ('Iapetus Iota', 10, 'Known for its distinctive coloration.', false, 4.50, 17);
INSERT INTO public.moon VALUES ('Miranda Kappa', 11, 'A moon with extreme geological features.', false, 4.50, 18);
INSERT INTO public.moon VALUES ('Ariel Lambda', 12, 'Shows signs of geological activity.', false, 4.50, 18);
INSERT INTO public.moon VALUES ('Umbriel Mu', 13, 'A darker moon with an enigmatic appearance.', false, 4.50, 19);
INSERT INTO public.moon VALUES ('Titania Nu', 14, 'The largest moon of its planet.', false, 4.50, 19);
INSERT INTO public.moon VALUES ('Oberon Xi', 15, 'Orbits the outermost reaches of its planet.', false, 4.50, 20);
INSERT INTO public.moon VALUES ('Triton Omicron', 16, 'Notable for its retrograde orbit.', false, 4.50, 20);
INSERT INTO public.moon VALUES ('Nereid Pi', 17, 'An irregular and distant moon.', false, 4.50, 21);
INSERT INTO public.moon VALUES ('Charon Rho', 18, 'A large moon, almost half the size of its planet.', false, 4.50, 21);
INSERT INTO public.moon VALUES ('Nix Sigma', 19, 'A smaller satellite with a unique orbit.', false, 4.50, 22);
INSERT INTO public.moon VALUES ('Hydra Tau', 20, 'One of the outermost known moons.', false, 4.50, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Terra', 13, 'A lush, habitable world with diverse ecosystems.', true, 4.50, 107000, 7);
INSERT INTO public.planet VALUES ('Zephyria', 14, 'A gas giant with powerful storms.', false, 2.00, 87000, 7);
INSERT INTO public.planet VALUES ('Aquaria', 15, 'An ocean-covered planet with potential for aquatic life.', false, 5.60, 90000, 8);
INSERT INTO public.planet VALUES ('Ignis', 16, 'A volcanic world with frequent lava flows.', false, 1.20, 76000, 8);
INSERT INTO public.planet VALUES ('Gaia', 17, 'Rich in flora and fauna, similar to Earth.', true, 4.80, 105000, 9);
INSERT INTO public.planet VALUES ('Aeris', 18, 'A planet with a thick atmosphere and high winds.', false, 3.40, 92000, 9);
INSERT INTO public.planet VALUES ('Helios', 19, 'A scorching hot planet closest to its star.', false, 0.80, 150000, 10);
INSERT INTO public.planet VALUES ('Cryo', 20, 'An ice-covered planet with subzero temperatures.', false, 6.00, 65000, 10);
INSERT INTO public.planet VALUES ('Silica', 21, 'A desert world with vast sand dunes.', false, 7.50, 78000, 11);
INSERT INTO public.planet VALUES ('Nebula', 22, 'A mysterious planet with a unique, colorful atmosphere.', false, 4.20, 88000, 11);
INSERT INTO public.planet VALUES ('Vulcan', 23, 'A planet with extreme geological activity.', false, 2.30, 70000, 12);
INSERT INTO public.planet VALUES ('Oasis', 24, 'A rare habitable planet in a remote star system.', true, 3.60, 95000, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpha Centauri A', 7, 'A binary star system closest to the Solar System.', false, 45.00, NULL, 1);
INSERT INTO public.star VALUES ('Betelgeuse Alpha', 8, 'A red supergiant star in the Orion constellation.', false, 80.00, NULL, 1);
INSERT INTO public.star VALUES ('Sirius A', 9, 'The brightest star in the Earth''s night sky.', false, 24.25, NULL, 2);
INSERT INTO public.star VALUES ('Vega Star', 10, 'The fifth-brightest star in the night sky and the second-brightest star in the northern celestial hemisphere.', false, 45.55, NULL, 2);
INSERT INTO public.star VALUES ('Proxima Centauri B', 11, 'The closest star to the Sun and part of the Alpha Centauri star system.', false, 48.50, NULL, 1);
INSERT INTO public.star VALUES ('Rigel Beta', 12, 'A blue supergiant star that is the brightest in the constellation Orion.', false, 70.00, NULL, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
