-- =====================================================
-- 1) Listar os tenistas, os torneios que participaram
--    e a cidade onde ocorreu
-- =====================================================
SELECT
    t.NomeTenista,
    tr.NomeTorneio,
    c.NomeCidade
FROM Tenista t
JOIN Participa p
    ON t.CodTenista = p.CodTenista
JOIN Torneio tr
    ON tr.CodTorneio = p.CodTorneio
JOIN Cidade c
    ON c.CodCidade = tr.CodCidade
ORDER BY t.NomeTenista, tr.NomeTorneio;


-- =====================================================
-- 2) Listar todos os tenistas e seus patrocinadores
--    (incluindo tenistas sem patrocinadores)
-- =====================================================
SELECT
    t.NomeTenista,
    pa.NomePatrocinador
FROM Tenista t
LEFT JOIN Patrocinio pt
    ON t.CodTenista = pt.CodTenista
LEFT JOIN Patrocinador pa
    ON pa.CodPatrocinador = pt.CodPatrocinador
ORDER BY t.NomeTenista;


-- =====================================================
-- 3) Listar todos os patrocinadores e os tenistas
--    patrocinados (incluindo patrocinadores sem tenistas)
-- =====================================================
SELECT
    p.NomePatrocinador,
    t.NomeTenista
FROM Patrocinador p
LEFT JOIN Patrocinio pt
    ON p.CodPatrocinador = pt.CodPatrocinador
LEFT JOIN Tenista t
    ON t.CodTenista = pt.CodTenista
ORDER BY p.NomePatrocinador;


-- =====================================================
-- 4) Apresentar a média de classificação dos tenistas
--    nos torneios que participaram
-- =====================================================
SELECT
    t.NomeTenista,
    AVG(p.Classificacao) AS MediaClassificacao
FROM Tenista t
JOIN Participa p
    ON t.CodTenista = p.CodTenista
GROUP BY t.CodTenista, t.NomeTenista
ORDER BY MediaClassificacao ASC;


-- =====================================================
-- 5) Listar os tenistas que participaram de mais
--    de 3 torneios
-- =====================================================
SELECT
    t.NomeTenista,
    COUNT(p.CodTorneio) AS TotalTorneios
FROM Tenista t
JOIN Participa p
    ON t.CodTenista = p.CodTenista
GROUP BY t.CodTenista, t.NomeTenista
HAVING COUNT(p.CodTorneio) > 3
ORDER BY TotalTorneios DESC;
