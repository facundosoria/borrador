CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    username VARCHAR(60) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS cards_catalog (
    id VARCHAR(64) PRIMARY KEY,
    set_code VARCHAR(32) NOT NULL,
    name VARCHAR(255) NOT NULL,
    supertype VARCHAR(64),
    subtypes JSONB,
    hp INTEGER,
    payload JSONB NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_cards_set_code ON cards_catalog(set_code);
CREATE INDEX IF NOT EXISTS idx_cards_name ON cards_catalog(name);
CREATE INDEX IF NOT EXISTS idx_cards_supertype ON cards_catalog(supertype);
CREATE INDEX IF NOT EXISTS idx_cards_payload_gin ON cards_catalog USING GIN(payload);

CREATE TABLE IF NOT EXISTS decks (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES users(id),
    name VARCHAR(120) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS deck_cards (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    deck_id UUID NOT NULL REFERENCES decks(id) ON DELETE CASCADE,
    card_id VARCHAR(64) NOT NULL REFERENCES cards_catalog(id),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    UNIQUE(deck_id, card_id)
);

CREATE TABLE IF NOT EXISTS games (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    status VARCHAR(32) NOT NULL,
    current_turn_player_id UUID,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS game_players (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    game_id UUID NOT NULL REFERENCES games(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id),
    seat INTEGER NOT NULL CHECK (seat IN (1, 2)),
    deck_id UUID REFERENCES decks(id),
    UNIQUE(game_id, seat),
    UNIQUE(game_id, user_id)
);

CREATE TABLE IF NOT EXISTS game_state_snapshots (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    game_id UUID NOT NULL REFERENCES games(id) ON DELETE CASCADE,
    turn_number INTEGER NOT NULL,
    phase VARCHAR(32) NOT NULL,
    state_payload JSONB NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS game_events (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    game_id UUID NOT NULL REFERENCES games(id) ON DELETE CASCADE,
    turn_number INTEGER NOT NULL,
    actor_user_id UUID REFERENCES users(id),
    event_type VARCHAR(64) NOT NULL,
    event_payload JSONB NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_events_game_created_at ON game_events(game_id, created_at);
CREATE INDEX IF NOT EXISTS idx_snapshots_game_created_at ON game_state_snapshots(game_id, created_at);
