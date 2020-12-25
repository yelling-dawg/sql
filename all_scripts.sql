-- 1
SELECT u.id, u.name FROM users u JOIN orders ord ON u.id IN ord.user_id;

-- 2
-- не смог потому что не понял условие, теперь джойны легче стало использовать
-- 3
SELECT fl.id, fr.name, t.name FROM flights fl 
left join cities fr on fl.from = fr.label
left join cities t on t.label = fl.to;