-- name: CreateAccount :one
INSERT INTO account (owner, balanace, currency)
VALUES ($1, $2, $3) RETURNING *;

-- name: UpdateAccount :one
UPDATE account
set balanace = $2
WHERE id = $1 RETURNING *;

-- name: DeleteAccount :exec
DELETE FROM account
WHERE id = $1;