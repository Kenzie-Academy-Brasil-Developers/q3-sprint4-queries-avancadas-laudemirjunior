SELECT * FROM enderecos;

SELECT * 
FROM enderecos
JOIN usuarios 
    ON enderecos.id = usuarios.endereco_id
ORDER BY 
    enderecos.id;

SELECT 
    rs.*, u.*
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id
JOIN usuarios AS u
    ON u.id = ur.usuario_id;

SELECT 
    rs.*, u.*, e.*
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id;

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id;

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE
    rs.nome = 'Youtube';

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE
    rs.nome = 'Instagram';

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE
    rs.nome = 'Facebook';

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE
    rs.nome = 'TikTok';

SELECT 
    rs.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS rs
JOIN usuario_rede_sociais AS ur 
    ON ur.rede_social_id = rs.id
JOIN usuarios AS u 
    ON u.id = ur.usuario_id
JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE
    rs.nome = 'Twitter';