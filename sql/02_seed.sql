INSERT INTO brasserie (nom, pays, region, description, site_web, annee_creation) VALUES
('Brasserie du Mont Blanc', 'France', 'Auvergne-Rhône-Alpes', 'Brasserie artisanale au pied des Alpes.', 'https://brasseriedumontblanc.fr', 2005),
('Leffe', 'Belgique', 'Namur', 'Brasserie abbatiale belge réputée.', 'https://leffe.com', 1240),
('BrewDog', 'Royaume-Uni', 'Écosse', 'Brasserie punk écossaise.', 'https://brewdog.com', 2007),
('Brasserie Meteor', 'France', 'Alsace', 'Une des plus anciennes brasseries alsaciennes.', 'https://brasserie-meteor.fr', 1640),
('Sierra Nevada', 'États-Unis', 'Californie', 'Pionnière du mouvement craft américain.', 'https://sierranevada.com', 1980);

INSERT INTO style (nom, description) VALUES
('IPA', 'India Pale Ale, houblonnée et amère.'),
('Blonde', 'Bière légère et dorée, facile à boire.'),
('Stout', 'Bière brune foncée, notes de café et chocolat.'),
('Blanche', 'Bière de froment trouble, légère et fruitée.'),
('Ambrée', 'Bière rousse aux notes de caramel et malt.');

INSERT INTO ingredient (nom, type) VALUES
('Orge', 'céréale'),
('Houblon Cascade', 'houblon'),
('Houblon Saaz', 'houblon'),
('Levure ale', 'levure'),
('Levure lager', 'levure'),
('Froment', 'céréale'),
('Coriandre', 'épice'),
('Écorce d''orange', 'épice'),
('Malt caramel', 'malt'),
('Malt torréfié', 'malt');

INSERT INTO utilisateur (id_utilisateur, pseudo, email, mot_de_passe, date_inscription, date_naissance, role) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'bierologue', 'bierologue@mail.com', 'hashed_pwd_1', '2023-01-15', '1990-04-20', 'admin'),
('b1ffcd00-1d1c-5fg9-cc7e-7cc0ce491b22', 'houblonator', 'houblonator@mail.com', 'hashed_pwd_2', '2023-03-08', '1985-11-03', 'membre'),
('c2ggde11-2e2d-6gh0-dd8f-8dd1df502c33', 'malted_marie', 'marie@mail.com', 'hashed_pwd_3', '2023-06-22', '1995-07-14', 'membre'),
('d3hhef22-3f3e-7hi1-ee9g-9ee2eg613d44', 'craftlover', 'craftlover@mail.com', 'hashed_pwd_4', '2024-01-01', '1988-02-28', 'membre'),
('e4iifg33-4g4f-8ij2-ffah-aff3fh724e55', 'pinte_facile', 'pinte@mail.com', 'hashed_pwd_5', '2024-02-17', '2000-09-09', 'membre');

INSERT INTO biere (nom, id_brasserie, id_style, degre_alcool, ibu, ebc, description, image_url) VALUES
('Blanche des Alpes', 1, 4, 4.5, 12, 6, 'Bière blanche fraîche aux notes d''agrumes.', 'https://example.com/blanche-alpes.jpg'),
('Leffe Blonde', 2, 2, 6.6, 20, 18, 'Blonde abbatiale douce et légèrement fruitée.', 'https://example.com/leffe-blonde.jpg'),
('Punk IPA', 3, 1, 5.6, 35, 15, 'IPA audacieuse aux arômes tropicaux.', 'https://example.com/punk-ipa.jpg'),
('Meteor Lager', 4, 2, 5.0, 18, 10, 'Lager alsacienne classique et rafraîchissante.', 'https://example.com/meteor.jpg'),
('Torpedo Extra IPA', 5, 1, 7.2, 65, 20, 'IPA puissante aux houblons américains.', 'https://example.com/torpedo.jpg'),
('Mont Blanc Ambrée', 1, 5, 5.8, 25, 40, 'Ambrée maltée aux notes de caramel grillé.', 'https://example.com/ambree.jpg'),
('Leffe Brune', 2, 3, 6.5, 22, 80, 'Brune abbatiale aux arômes de réglisse et fruits secs.', 'https://example.com/leffe-brune.jpg'),
('Stout Imperator', 3, 3, 8.0, 50, 120, 'Stout impériale intense, café et chocolat noir.', 'https://example.com/stout.jpg');

INSERT INTO biere_ingredient (id_biere, id_ingredient, quantite) VALUES
(1, 1, '3 kg'),
(1, 6, '2 kg'),
(1, 4, '10 g'),
(1, 7, '5 g'),
(1, 8, '10 g'),
(2, 1, '4 kg'),
(2, 3, '25 g'),
(2, 4, '12 g'),
(3, 1, '4 kg'),
(3, 2, '60 g'),
(3, 4, '11 g'),
(4, 1, '4 kg'),
(4, 3, '30 g'),
(4, 5, '10 g'),
(5, 1, '5 kg'),
(5, 2, '80 g'),
(5, 4, '12 g'),
(6, 1, '4 kg'),
(6, 9, '500 g'),
(6, 4, '11 g'),
(7, 1, '4 kg'),
(7, 10, '400 g'),
(7, 4, '10 g'),
(8, 1, '5 kg'),
(8, 10, '800 g'),
(8, 2, '50 g'),
(8, 4, '12 g');

INSERT INTO avis (id_utilisateur, id_biere, note, commentaire, date_publication) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 1, 4, 'Très rafraîchissante, parfaite pour l''été.', '2024-03-10 14:22:00'),
('b1ffcd00-1d1c-5fg9-cc7e-7cc0ce491b22', 1, 5, 'Ma blanche préférée, légère et fruitée.', '2024-03-12 18:05:00'),
('c2ggde11-2e2d-6gh0-dd8f-8dd1df502c33', 2, 4, 'Une valeur sûre, douce et facile à boire.', '2024-04-01 20:00:00'),
('d3hhef22-3f3e-7hi1-ee9g-9ee2eg613d44', 3, 5, 'La meilleure IPA que j''ai goûtée.', '2024-04-15 21:30:00'),
('e4iifg33-4g4f-8ij2-ffah-aff3fh724e55', 3, 3, 'Trop amère pour moi mais de qualité.', '2024-04-16 19:10:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 5, 5, 'Torpedo est un monument du houblon américain.', '2024-05-02 17:45:00'),
('b1ffcd00-1d1c-5fg9-cc7e-7cc0ce491b22', 7, 4, 'Belle brune, notes de réglisse bien présentes.', '2024-05-10 22:00:00'),
('c2ggde11-2e2d-6gh0-dd8f-8dd1df502c33', 8, 5, 'Stout impériale incroyable, très complexe.', '2024-05-20 20:30:00');

INSERT INTO favori (id_utilisateur, id_biere, date_ajout) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 3, '2024-04-16 10:00:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 5, '2024-05-03 09:00:00'),
('b1ffcd00-1d1c-5fg9-cc7e-7cc0ce491b22', 1, '2024-03-13 08:30:00'),
('b1ffcd00-1d1c-5fg9-cc7e-7cc0ce491b22', 7, '2024-05-11 11:00:00'),
('c2ggde11-2e2d-6gh0-dd8f-8dd1df502c33', 2, '2024-04-02 15:00:00'),
('c2ggde11-2e2d-6gh0-dd8f-8dd1df502c33', 8, '2024-05-21 16:00:00'),
('d3hhef22-3f3e-7hi1-ee9g-9ee2eg613d44', 3, '2024-04-16 22:00:00'),
('e4iifg33-4g4f-8ij2-ffah-aff3fh724e55', 4, '2024-04-20 14:00:00');
