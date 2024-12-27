-- Create Database
CREATE DATABASE IF NOT EXISTS player_classification;

-- Use the Database
USE player_classification;

-- Create Table
CREATE TABLE IF NOT EXISTS player_statistics (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    matches_played INT NOT NULL,
    goals_scored INT NOT NULL,
    assists INT NOT NULL,
    minutes_played INT NOT NULL,
    classification VARCHAR(50)
);
-- Insert Sample Data
INSERT INTO player_statistics (name, matches_played, goals_scored, assists, minutes_played, classification)
VALUES
('Player A', 25, 10, 8, 2000, 'starter'),
('Player B', 15, 5, 3, 900, 'substitute'),
('Player C', 20, 7, 6, 1500, 'starter'),
('Player D', 12, 2, 1, 400, 'substitute'),
('Player E', 30, 12, 10, 2300, 'starter'),
('Player F', 18, 4, 2, 850, 'substitute'),
('Player G', 22, 8, 5, 1700, 'starter'),
('Player H', 10, 1, 1, 300, 'substitute'),
('Player I', 28, 14, 7, 2100, 'starter'),
('Player J', 14, 3, 1, 700, 'substitute'),
('Player K', 27, 11, 6, 1900, 'starter'),
('Player L', 9, 1, 1, 350, 'substitute'),
('Player M', 26, 9, 8, 1600, 'starter'),
('Player N', 13, 3, 2, 650, 'substitute'),
('Player O', 23, 10, 6, 1800, 'starter'),
('Player P', 11, 1, 2, 400, 'substitute'),
('Player Q', 24, 11, 5, 2000, 'starter'),
('Player R', 16, 4, 2, 800, 'substitute'),
('Player S', 29, 13, 9, 2200, 'starter'),
('Player T', 17, 3, 3, 900, 'substitute'),
('Player U', 21, 8, 4, 1400, 'starter'),
('Player V', 10, 0, 0, 300, 'substitute'),
('Player W', 25, 9, 8, 1900, 'starter'),
('Player X', 12, 2, 1, 500, 'substitute'),
('Player Y', 28, 12, 10, 2150, 'starter'),
('Player Z', 14, 3, 1, 700, 'substitute'),
('Player AA', 23, 9, 7, 1700, 'starter'),
('Player AB', 11, 1, 1, 400, 'substitute'),
('Player AC', 30, 14, 10, 2400, 'starter'),
('Player AD', 15, 4, 2, 800, 'substitute'),
('Player AE', 22, 10, 6, 1800, 'starter'),
('Player AF', 13, 2, 1, 500, 'substitute'),
('Player AG', 26, 11, 8, 2000, 'starter'),
('Player AH', 16, 4, 2, 700, 'substitute'),
('Player AI', 27, 12, 9, 2100, 'starter'),
('Player AJ', 9, 1, 0, 300, 'substitute'),
('Player AK', 24, 10, 6, 1900, 'starter'),
('Player AL', 12, 2, 2, 600, 'substitute'),
('Player AM', 25, 11, 8, 2000, 'starter'),
('Player AN', 10, 0, 1, 400, 'substitute'),
('Player AO', 28, 14, 9, 2300, 'starter'),
('Player AP', 15, 3, 2, 700, 'substitute'),
('Player AQ', 23, 9, 6, 1700, 'starter'),
('Player AR', 11, 1, 1, 350, 'substitute'),
('Player AS', 29, 13, 10, 2200, 'starter'),
('Player AT', 17, 4, 3, 800, 'substitute'),
('Player AU', 21, 7, 5, 1600, 'starter'),
('Player AV', 10, 0, 1, 300, 'substitute'),
('Player AW', 27, 12, 7, 2000, 'starter'),
('Player AX', 13, 2, 1, 550, 'substitute');

select * from player_statistics;
