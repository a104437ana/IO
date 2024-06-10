/* Função objetivo */
min: 11 cont115 + 11 cont114 + 11 cont112 + 10 cont105 + 10 cont104 + 10 cont102 + 7 cont75 + 7 cont74 + 7 cont72;

/* Restrições */
/* Restrições da quantidade máxima de cada contentor */
R_contentores10: cont105 + cont104 + cont102 <= 5;
R_contentores7: cont75 + cont74 + cont72 <= 5;
/* Restrições da quantidade necessária de cada item */
R_itens2: cont112 + cont102 + rest92 + rest82 + rest72 + cont72 + rest62 + rest52 + rest42 + rest32 + rest22 >= 6;
R_itens4: cont114 + cont104 + rest94 + rest84 + rest74 + cont74 + rest64 + rest54 + rest44 >= 10;
R_itens5: cont115 + cont105 + rest95 + rest85 + rest75 + cont75 + rest65 + rest55 >= 5;
/* Restrições de restos recursivos */
R_restos9: rest95 + rest94 + rest92 <= cont112;
R_restos8: rest85 + rest84 + rest82 <= cont102;
R_restos7: rest75 + rest74 + rest72 <= cont114 + rest92;
R_restos6: rest65 + rest64 + rest62 <= cont115 + cont104 + rest82;
R_restos5: rest55 + rest54 + rest52 <= cont105 + rest94 + rest72 + cont72;
R_restos4: rest44 + rest42 <= rest95 + rest84 + rest62;
R_restos3: rest32 <= rest85 + rest74 + cont74 + rest52;
R_restos2: rest22 <= rest75 + cont75 + rest64 + rest42;

/* Variáveis que dependem das variáveis de decisão (apenas para observação) */
/* Quantidades de cada tipo de contentor usado */
contentores11 = cont115 + cont114 + cont112;
contentores10 = cont105 + cont104 + cont102;
contentores7 = cont75 + cont74 + cont72;
/* Quantidades de cada tipo de item empacotado */
itens2 = cont112 + cont102 + rest92 + rest82 + rest72 + cont72 + rest62 + rest52 + rest42 + rest32 + rest22;
itens4 = cont114 + cont104 + rest94 + rest84 + rest74 + cont74 + rest64 + rest54 + rest44;
itens5 = cont115 + cont105 + rest95 + rest85 + rest75 + cont75 + rest65 + rest55;

/* Restrição - variáveis de decisão inteiras (e não negativas) */
int cont115,cont114,cont112,cont105,cont104,cont102,rest95,rest94,rest92,rest85,rest84,rest82,rest75,cont75,rest74,cont74,rest72,cont72,rest65,rest64,rest62,rest55;
int rest54,rest52,rest44,rest42,rest32,rest22;
/* Outras variáveis inteiras (e não negativas) */
int contentores11,contentores10,contentores7,itens2,itens4,itens5;