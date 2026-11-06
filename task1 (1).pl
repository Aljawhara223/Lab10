% Task 1: area and perimeter of square, rectangle and triangle

% Square (S = length of side)
square_area(S, A) :- A is S * S.
square_perimeter(S, P) :- P is 4 * S.

% Rectangle (W = width, H = height)
rectangle_area(W, H, A) :- A is W * H.
rectangle_perimeter(W, H, P) :- P is 2 * (W + H).

% Triangle (B = base, H = vertical height, A, B, C = the three sides)
triangle_area(B, H, Area) :- Area is 0.5 * B * H.
triangle_perimeter(A, B, C, P) :- P is A + B + C.
