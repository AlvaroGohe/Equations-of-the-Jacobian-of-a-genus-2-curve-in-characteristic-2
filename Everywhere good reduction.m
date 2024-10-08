// These are some computations regarding examples of abelian surfaces with everywhere good reduction to check whether there Kummer surfaces acquire good reduction at 2.
// If you find any bug or mistake, or if you have any question, please don't hesitate in contacting me :)
// email: alvaro.gohe@gmail.com

// The main example of the paper:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-88)[1,1];
PolK<x> := PolynomialRing(K);
g := (w + 1)*x^3 + x^2 + w*x + w + 1;
f := -(15*w + 149)*x^6 - (1119*w + 9948)*x^5 - (36545*w + 325090)*x^4 -(636332*w + 5659370)*x^3 - (6227174*w + 55387985)*x^2 -(32480001*w + 288869715)*x - 70532813*w - 627353458;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
K2<r> := ext<K|(w + 1)*x^3 + x^2 + w*x + w + 1>;
PolK2<x> := PolynomialRing(K2);
g := (w + 1)*x^3 + x^2 + w*x + w + 1;
f := -(15*w + 149)*x^6 - (1119*w + 9948)*x^5 - (36545*w + 325090)*x^4 -(636332*w + 5659370)*x^3 - (6227174*w + 55387985)*x^2 -(32480001*w + 288869715)*x - 70532813*w - 627353458;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-88,-1,1])>;
PolK<x> := PolynomialRing(K);
g := (w + 1)*x^3 + x^2 + w*x + w + 1;
f := -(15*w + 149)*x^6 - (1119*w + 9948)*x^5 - (36545*w + 325090)*x^4 -(636332*w + 5659370)*x^3 - (6227174*w + 55387985)*x^2 -(32480001*w + 288869715)*x - 70532813*w - 627353458;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D);


// The first example of the table:
Q2 := pAdicField(2,32);
K<w> := ext<Q2 | Polynomial([-13,-1,1])>;
K;
PolK<x> := PolynomialRing(K);
g := w*x^3 +w*x^2 +w+1; // Modulo 2
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<r> := ext<K|x^2 + 2*x-2>;
// K2<r> := ext<K|x^2 + 2*x+2>; This extension will also work
// K<w> := LocalField(Q2,Polynomial([-13,-1,1]));
//  K2<r> := LocalField(K, Polynomial([1420759249*w + 479463169, (739039103*w + 887564374)*2, 1])); This extension would decompose pol in , but one cannot produce a valid section from this
//K2`SeriesPrinting := true;
PolK2<x> := PolynomialRing(K2);
g := w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
pol := 4*f+g^2;
Factorisation(pol);
K3<s> := ext<K2|x^2 + w^2*x + 1>; 
PolK3<x> := PolynomialRing(K3);
g := w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve we started with has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-13,-1,1])>;
PolK<x> := PolynomialRing(K);
g := w*x^3 +w*x^2 +w+1;
f := -4*x^6 + (w-17)*x^5 + (12*w-27)*x^4 + (5*w-122)*x^3+(45*w-25)*x^2 + (-9*w-137)*x+14*w+9;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D);


// The second example of the table:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-18)[1,1];
PolK<x> := PolynomialRing(K);
g := x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<r> := ext<K|x^4+2*x^3+2*x^2+2>;
//K2`SeriesPrinting := true;
PolK2<x> := PolynomialRing(K2);
g := x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
pol := 4*f+g^2;
Factorisation(pol);
K3<s> := ext<K2|x^3 +x+1>; 
PolK3<x> := PolynomialRing(K3);
g := x^3 +x+1;
f := (w-5)*x^6 + (3*w-14)*x^5 + (3*w-19)*x^4+(4*w-3)*x^3 -(3*w+16)*x^2 + (3*w+11)*x-(w+4);
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction except at 3 (where the Jacobian acquires good reduction):
K<w> := ext<Rationals() | Polynomial([-105,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); // This is 3^34.


// The third example of the table:
Q2 := pAdicField(2,32);
K<w> := ext<Q2 | Polynomial([-105,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<s> := ext<K|x^2 - 2*x+2>;
//K2`SeriesPrinting := true;
PolK2<x> := PolynomialRing(K2);
g :=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction except at 3 (where the Jacobian acquires good reduction).
K<w> := ext<Rationals() | Polynomial([-105,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  w*(x^3+1);
f := -2*(4414*w+43089)*x^6+(31147*w+303963)*x^5-10*(4522*w+44133)*x^4 +2*(17290*w+168687)*x^3-18*(816*w+7967)*x^2 +27*(122*w+1189)*x-(304*w+3003);
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); // This is 3^34.


// The fourth example of the table:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-102)[1,1];
PolK<x> := PolynomialRing(K);
g := x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<r> := ext<K|x^4+2*x^3+2*x^2+2>;
PolK2<x> := PolynomialRing(K2);
g := x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
pol := 4*f+g^2;
Factorisation(pol);
K3<s> := ext<K2|x^3 +x^2+1>; 
PolK3<x> := PolynomialRing(K3);
g := x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-102,-1,1])>;
PolK<x> := PolynomialRing(K);
g := x^3 +x^2+1;
f := -2*x^6 + (-3*w+1)*x^5 -219*x^4 + (-83*w+41)*x^3 -1806*x^2+(-204*w+102)*x-977;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); 


// The fifth example of the table:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-202)[1,1];
PolK<x> := PolynomialRing(K);
g := x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<r> := ext<K|x^4+2*x^3+2*x^2+2>;
PolK2<x> := PolynomialRing(K2);
g := x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
pol := 4*f+g^2;
Factorisation(pol);
K3<s> := ext<K2|x^3 +x+1>; 
PolK3<x> := PolynomialRing(K3);
g := x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-202,-1,1])>;
PolK<x> := PolynomialRing(K);
g := x^3 +x+1;
f := -134*x^6 -(146*w-73)*x^5 -13427*x^4 -(3255*w-1627)*x^3-89746*x^2 -(6523*w-3261)*x-39941;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); 


// The sixth example of the table:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-232)[1,1];
PolK<x> := PolynomialRing(K);
g := x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
GroupName(GaloisGroup(pol));
K2<r> := ext<K|x^4+2*x^3+2*x^2+2>;
PolK2<x> := PolynomialRing(K2);
g := x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
pol := 4*f+g^2;
Factorisation(pol);
K3<s> := ext<K2|x^3 +x+1>; 
PolK3<x> := PolynomialRing(K3);
g := x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction except at 3 (where the Jacobian acquires good reduction).
K<w> := ext<Rationals() | Polynomial([-232,-1,1])>;
PolK<x> := PolynomialRing(K);
g := x^3 +x+1;
f := 23*x^6 + (90*w-45)*x^5 +33601*x^4 + (28707*w-14354)*x^3+3192149*x^2 + (811953*w-405977)*x+19904990;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); // This is 3^44


// The seventh example of the table:
Q2 := pAdicField(2,32);
K<w> := ext<Q2 | Polynomial([-105,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4 +(163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2 +(3985370*w + 40412781)*x + 6111237*w + 58050373;
pol := 4*f+g^2;
Factorisation(pol);
GroupName(GaloisGroup(pol));
G,r,act := GaloisGroup(pol); // We can see that the splitting field of pol has degree 12 over the base field, and its Galois group is A4.
sf<m> := SplittingField(pol);
p<x> := DefiningPolynomial(sf,K); // This is the polynomial defining this extension, which will be used later to define the same extension as an object of the type RngPad (this is necessary, as the function to consider subfields of a local field is only implemented for these objects).
K2<r> := ext<K|w*x^3 + x^2 + (w + 1)*x + w + 1>;
PolK2<x> := PolynomialRing(K2);
g :=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4 +(163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2 +(3985370*w + 40412781)*x + 6111237*w + 58050373;
pol := 4*f+g^2;
Factorisation(pol); // We can see that over the unramified extension of degree 3, pol decomposes in 3 quadratic factors.

// Here is a computation of the degree 4 extension over the good reduction at 2 is achieved. In order to find it, what we do is to construct the splitting field, which has degree 12 and we are going to find our degree 4 subextension by the means of the Galois correspondence.
K<w>:= LocalField(pAdicField(2,100), Polynomial([-105,-1,1])); // We need to improve the precision (Magma complained).
PolK<x> := PolynomialRing(K);
K2<s> := LocalField(K,x^12 + ((-848686681*w + 250437890)*2)*x^11 + ((-257175781*w + 107397803)*2^3)*x^10 + ((63946313*w + 372266443)*2^2 )*x^9 + ((-24609378*w + 754682495)*2 )*x^8 + ((129464817*w - 242995778)*2^3 )*x^7 + ((72995264*w - 9822541)*2^4 )*x^6 + ((-172908311*w + 268317385)*2^3 )*x^5 + ((494554282*w - 431417)*2^2 )*x^4 + ((78618153*w - 22758489)*2^4 )*x^3 + ((-61689110*w - 68958273)*2^4 )*x^2 + ((-28260116*w + 2898337)*2^6 )*x + (101723089*w - 50743608)*2^3);
A, am := AutomorphismGroup(K2); // Here we reconfirm that the Galois group has order 12, and it is generated by two elements of order 2 and one of order 3.
per3 := am(A.4); // This is the action of the element of order 3 in K2. Through the Galois correspondence, as the subgroup generated by this element has index 4, its fixed field correspond to a degree 4 extension of K.
// There is nothing special about the index 4 subgroup that we have chosen. Any of the 3 other possibilities will also generate a field extension over which good reduction is achieved
// per3 := am(A.2*A.4*A.2); 
// per3 := am(A.3*A.4*A.3); 
// per3 := am(A.2*A.3*A.4*A.3*A.2); 
K3<t> := sub<K2|per3(per3(s)) + per3(s) + s, per3(per3(s))*per3(s) +  per3(per3(s))*s + per3(s)*s, per3(per3(s))*per3(s)*s>; // We manually generate the fixed field of the previous group by considering the invariant polynomials under this action.
Degree(K3); // Indeed we can check that the degree is 4. 
PolK3<x> := PolynomialRing(K3);
g :=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4 +(163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2 +(3985370*w + 40412781)*x + 6111237*w + 58050373;
pol := 4*f+g^2;
Factorisation(pol); // Finally we can check that over this degree 4 extension, pol decomposes into two cubics, whose Galois action is determined by the unramified extension of degree 3, therefore compatible with the Galois action over the residue field.

// Confirmation that the curve has everywhere good reduction except at 11 (where the Jacobian acquires good reduction)
K<w> := ext<Rationals() | Polynomial([-105,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  w*x^3 + x^2 + (w + 1)*x + w + 1;
f := (13*w + 77)*x^6 + (593*w + 6772)*x^5 + (15049*w + 131460)*x^4 +(163829*w + 1727293)*x^3 + (1167345*w + 10787410)*x^2 +(3985370*w + 40412781)*x + 6111237*w + 58050373;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); // This is 11^22


// The eighth example of the table:
Q2 := pAdicField(2,32);
K<w> := ext<Q2 | Polynomial([-399,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
pol := 4*f+g^2;
Factorisation(pol);
GroupName(GaloisGroup(pol));
G,r,act := GaloisGroup(pol); // We can see that the splitting field of pol has degree 12 over the base field, and its Galois group is A4.
sf<m> := SplittingField(pol);
p<x> := DefiningPolynomial(sf,K); // This is the polynomial defining this extension, which will be used later to define the same extension as an object of the type RngPad (this is necessary, as the function to consider subfields of a local field is only implemented for these objects).
K2<r> := ext<K|x^3 + w*x^2 + (w + 1)*x + w + 1>;
PolK2<x> := PolynomialRing(K2);
g :=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
pol := 4*f+g^2;
Factorisation(pol); // We can see that over the unramified extension of degree 3, pol decomposes in 3 quadratic factors.

// Here is a computation of the degree 4 extension over the good reduction at 2 is achieved. In order to find it, what we do is to construct the splitting field, which has degree 12 and we are going to find our degree 4 subextension by the means of the Galois correspondence.
K<w>:= LocalField(pAdicField(2,100), Polynomial([-399,-1,1])); // We need to improve the precision (Magma complained).
PolK<x> := PolynomialRing(K);
K2<s> := LocalField(K,x^12 + ((815129228*w - 818426237)*2 )*x^11 + ((-511058123*w - 75892660)*2^2 )*x^10 + ((114327787*w - 359151111)*2^2 )*x^9 + ((-709915771*w + 234297052)*2 )*x^8 + ((199346137*w + 58910943)*2^3 )*x^7 + ((-268011006*w - 259312681)*2^3 )*x^6 + ((-18194174*w - 242797051)*2^3 )*x^5 + ((134523029*w - 106046969)*2^2 )*x^4 + ((50393729*w - 114177783)*2^4 )*x^3 + ((64672948*w + 24085413)*2^4 )*x^2 + ((-16920436*w - 17615513)*2^6 )*x + (78750577*w - 199771841)*2^3 );
A, am := AutomorphismGroup(K2); // Here we reconfirm that the Galois group has order 12, and it is generated by two elements of order 2 and one of order 3.
per3 := am(A.4); // This is the action of the element of order 3 in K2. Through the Galois correspondence, as the subgroup generated by this element has index 4, its fixed field correspond to a degree 4 extension of K.
// There is nothing special about the index 4 subgroup that we have chosen. Any of the 3 other possibilities will also generate a field extension over which good reduction is achieved
// per3 := am(A.2*A.4*A.2); 
// per3 := am(A.3*A.4*A.3); 
// per3 := am(A.2*A.3*A.4*A.3*A.2); 
K3<t> := sub<K2|per3(per3(s)) + per3(s) + s, per3(per3(s))*per3(s) +  per3(per3(s))*s + per3(s)*s, per3(per3(s))*per3(s)*s>; // We manually generate the fixed field of the previous group by considering the invariant polynomials under this action.
Degree(K3); // Indeed we can check that the degree is 4. 
PolK3<x> := PolynomialRing(K3);
g :=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
pol := 4*f+g^2;
Factorisation(pol); // Finally we can check that over this degree 4 extension, pol decomposes into two cubics, whose Galois action is determined by the unramified extension of degree 3, therefore compatible with the Galois action over the residue field.


// Confirmation that the curve has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-399,-1,1])>;
PolK<x> := PolynomialRing(K);
g :=  x^3 + w*x^2 + (w + 1)*x + w + 1;
f := (14154412*w + 275745514)*x^6 - (489014393*w + 9526607332)*x^5+ (7039395048*w + 137136152764)*x^4 - (54043428224*w + 1052833060832)*x^3+ (233382395752*w + 4546578743807)*x^2 - (537510739916*w + 10471376373574)*x+ 515810377784*w + 10048626384323;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); 



// First almost ordinary example:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-48)[1,1];
PolK<x> := PolynomialRing(K);
g := -x-w;
f := 2*x^6+(-2*w+7)* x^5+(-5* w+47)* x^4+(-12* w+85)* x^3 +(-13* w+97)* x^2+(-8* w+56)* x-2* w+1;
pol := 4*f+g^2;
Factorisation(pol);
GroupName(GaloisGroup(pol));
SplittingField(pol);
K2<r2> := ext<K|x^2 -2*x-2>;
PolK2<x> := PolynomialRing(K2);
K3<r3> := ext<K2|x^3-r2>;
PolK3<x> := PolynomialRing(K3); 
K4<r4> := ext<K3|x^2-x-1>;
PolK4<x> := PolynomialRing(K4); 
g := -x-w;
f := 2*x^6+(-2*w+7)* x^5+(-5* w+47)* x^4+(-12* w+85)* x^3 +(-13* w+97)* x^2+(-8* w+56)* x-2* w+1;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction:
K<w> := ext<Rationals() | Polynomial([-48,-1,1])>;
PolK<x> := PolynomialRing(K);
g := -x-w;
f := 2*x^6+(-2*w+7)* x^5+(-5* w+47)* x^4+(-12* w+85)* x^3 +(-13* w+97)* x^2+(-8* w+56)* x-2* w+1;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); 


// Second almost ordinary example:
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
w := Roots(x^2-x-58)[1,1];
PolK<x> := PolynomialRing(K);
g := x+1;
f := -2*x^6 -(2*w-1)*x^5 -45*x^4 -4*(2*w-1)*x^3 -31*x^2 + (w-1)*x+9;
pol := 4*f+g^2;
Factorisation(pol);
SplittingField(pol);
K2<r2> := ext<K|x^2 -2*x-2>;
PolK2<x> := PolynomialRing(K2);
K3<r3> := ext<K2|x^3-r2>;
PolK3<x> := PolynomialRing(K3); 
K4<r4> := ext<K3|x^2-x-1>;
PolK4<x> := PolynomialRing(K4); 
g := x+1;
f := -2*x^6 -(2*w-1)*x^5 -45*x^4 -4*(2*w-1)*x^3 -31*x^2 + (w-1)*x+9;
pol := 4*f+g^2;
Factorisation(pol);

// Confirmation that the curve has everywhere good reduction.
K<w> := ext<Rationals() | Polynomial([-58,-1,1])>;
PolK<x> := PolynomialRing(K);
g := x+1;
f := -2*x^6 -(2*w-1)*x^5 -45*x^4 -4*(2*w-1)*x^3 -31*x^2 + (w-1)*x+9;
Factorisation(4*f+g^2);
C := HyperellipticCurve(f,g);
D := Discriminant(C);
Norm(D); 

// Special almost ordinary example:
results := [];
for t2 in [-100..100] do
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
t := 1+2*t2; //Assume t is 1 mod 2. Then,-3200000+729*(j^5) is 1 mod 8 for every value of t2 and so, Q2(\sqrt(-3200000+729*(j^5))=Q2.
j := 20*t-3;
PolK<x> := PolynomialRing(K);
g := -x^2;
f :=-500*j^2 + (1600000 + 243*j^5)*x - 1350000*j^3*x^2 + (320000000*j + 291600*j^6)*x^3 - (1/4 + 48600000*j^4 + (177147*j^9)/4)*x^4 - (86400000000*j^2 - 39366000*j^7)*x^5 + (40960000000000 - 14580000000*j^5 + 531441*j^10)*x^6;

pol := 4*f+g^2;
f := Factorisation(pol);
d :=[Degree(f[n,1]): n in [1..#f]]; 
Append(~results, <t,d>);
end for;

results := [];
for t2 in [-100..100] do
Q2 := pAdicField(2,32);
t := 2*t2; // Assume t is 0 mod 2. Then,-3200000+729*(j^5) is -3 mod 8 for every value of t2 and so, Q2(\sqrt(-3200000+729*(j^5)) is the unique quadratic unramified extension of Q2.
K<w> := ext<Q2 | Polynomial([1,1,1])>;
j := 20*t-3;
PolK<x> := PolynomialRing(K);
g := -x^2;
f :=-500*j^2 + (1600000 + 243*j^5)*x - 1350000*j^3*x^2 + (320000000*j + 291600*j^6)*x^3 - (1/4 + 48600000*j^4 + (177147*j^9)/4)*x^4 - (86400000000*j^2 - 39366000*j^7)*x^5 + (40960000000000 - 14580000000*j^5 + 531441*j^10)*x^6;

pol := 4*f+g^2;
f := Factorisation(pol);
d :=[Degree(f[n,1]): n in [1..#f]]; 
Append(~results, <t,d>);
end for;

results := [];
for t2 in [-100..100] do
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
t := 1+2*t2; // Assume t is 1 mod 2. Then, 3200000-729*(j^5) is -1 mod 8 for every value of t2 and so, Q2(\sqrt(3200000-729*(j^5))=Q2(i).
K<w> := ext<Q2 | Polynomial([2,-2,1])>;
j := 20*t-3;
PolK<x> := PolynomialRing(K);
g := -x^2;
f :=-500*j^2 + (1600000 + 243*j^5)*x - 1350000*j^3*x^2 + (320000000*j + 291600*j^6)*x^3 - (1/4 + 48600000*j^4 + (177147*j^9)/4)*x^4 - (86400000000*j^2 - 39366000*j^7)*x^5 + (40960000000000 - 14580000000*j^5 + 531441*j^10)*x^6;

pol := 4*f+g^2;
f := Factorisation(pol);
d :=[Degree(f[n,1]): n in [1..#f]]; 
Append(~results, <t,d>);
end for;

results := [];
for t2 in [-100..100] do
Q2 := pAdicField(2,32);
t := 2*t2; // Assume t is 0 mod 2. Then,3200000-729*(j^5) is 3 mod 8 for every value of t2 and so, Q2(\sqrt(3200000-729*(j^5))=Q2(\sqrt(3)).
K<w> := ext<Q2 | Polynomial([-2,-2,1])>;
j := 20*t-3;
PolK<x> := PolynomialRing(K);
g := -x^2;
f :=-500*j^2 + (1600000 + 243*j^5)*x - 1350000*j^3*x^2 + (320000000*j + 291600*j^6)*x^3 - (1/4 + 48600000*j^4 + (177147*j^9)/4)*x^4 - (86400000000*j^2 - 39366000*j^7)*x^5 + (40960000000000 - 14580000000*j^5 + 531441*j^10)*x^6;

pol := 4*f+g^2;
f := Factorisation(pol);
d :=[Degree(f[n,1]): n in [1..#f]]; 
Append(~results, <t,d>);
end for;

results := [];
for t2 in [0..10] do
K := pAdicField(2,32);
PolK<x> := PolynomialRing(K);
t := 1+2*t2; // Assume t is 1 mod 2. Then,-3200000+729*(j^5) is 1 mod 8 for every value of t2 and so, Q2(\sqrt(-3200000+729*(j^5))=Q2.
j := 20*t-3;
PolK<x> := PolynomialRing(K);
g := -x^2;
f :=-500*j^2 + (1600000 + 243*j^5)*x - 1350000*j^3*x^2 + (320000000*j + 291600*j^6)*x^3 - (1/4 + 48600000*j^4 + (177147*j^9)/4)*x^4 - (86400000000*j^2 - 39366000*j^7)*x^5 + (40960000000000 - 14580000000*j^5 + 531441*j^10)*x^6;

pol := 4*f+g^2;
f := Factorisation(pol);
d :=[Degree(f[n,1]): n in [1..#f]]; 
Append(~results, <t,AbsoluteTotallyRamifiedExtension(RingOfIntegers(SplittingField(pol)))>);
end for;