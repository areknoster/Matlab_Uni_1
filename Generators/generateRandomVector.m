function v = generateRandomVector(N)
v = rand(N, 1);
v = 20 .*(v - 0.5);
v = floor(v);
end

