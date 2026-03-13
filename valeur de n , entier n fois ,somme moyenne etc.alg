<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_POUR"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="v EST_DU_TYPE LISTE" code="1#LISTE#v"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="t EST_DU_TYPE NOMBRE" code="1#NOMBRE#t"/>
        <item algoitem="pmax EST_DU_TYPE NOMBRE" code="1#NOMBRE#pmax"/>
        <item algoitem="pmin EST_DU_TYPE NOMBRE" code="1#NOMBRE#pmin"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer une valeur de n:&quot;" code="4#Entrer une valeur de n:#1"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="s PREND_LA_VALEUR s+0" code="5#s#s+0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE v[i]" code="2#v#i"/>
            <item algoitem="s PREND_LA_VALEUR s+v[i]" code="5#s#s+v[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;la valeur de s est:&quot;" code="4#la valeur de s est:#1"/>
        <item algoitem="AFFICHER s" code="3#s#1#pasliste"/>
        <item algoitem="M PREND_LA_VALEUR s/n" code="5#M#s/n#pasliste"/>
        <item algoitem="AFFICHER &quot;Moyenne est:&quot;" code="4#Moyenne est:#1"/>
        <item algoitem="AFFICHER M" code="3#M#1#pasliste"/>
        <item algoitem="max PREND_LA_VALEUR v[0]" code="5#max#v[0]#pasliste"/>
        <item algoitem="min PREND_LA_VALEUR v[0]" code="5#min#v[0]#pasliste"/>
        <item algoitem="pmax PREND_LA_VALEUR 0" code="5#pmax#0#pasliste"/>
        <item algoitem="pmin PREND_LA_VALEUR v[0]" code="5#pmin#v[0]#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (v[i]>=max) ALORS" code="6#v[i]>=max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR v[i]" code="5#max#v[i]#pasliste"/>
                <item algoitem="pmax PREND_LA_VALEUR i" code="5#pmax#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (v[i]&lt;=min) ALORS" code="6#v[i]&lt;=min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR v[i]" code="5#min#v[i]#pasliste"/>
                <item algoitem="pmin PREND_LA_VALEUR i" code="5#pmin#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="AFFICHER &quot;Valeur max:&quot;" code="4#Valeur max:#1"/>
            <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Position max:&quot;" code="4#Position max:#1"/>
            <item algoitem="AFFICHER pmax" code="3#pmax#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Valeur min&quot;" code="4#Valeur min#1"/>
            <item algoitem="AFFICHER min" code="3#min#1#pasliste"/>
            <item algoitem="AFFICHER &quot;Postiton min&quot;" code="4#Postiton min#1"/>
            <item algoitem="AFFICHER pmin" code="3#pmin#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR j ALLANT_DE i+1 A n" code="12#j#i+1#n">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="SI (v[i]>v[j]) ALORS" code="6#v[i]>v[j]">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="t PREND_LA_VALEUR v[i]" code="5#t#v[i]#pasliste"/>
                    <item algoitem="v[i] PREND_LA_VALEUR v[j]" code="5#v#v[j]#i"/>
                    <item algoitem="v[j] PREND_LA_VALEUR t" code="5#v#t#j"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Ordre Croissant:&quot;" code="4#Ordre Croissant:#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n" code="12#i#0#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER v[i]" code="3#v#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Ordre Decroissant:&quot;" code="4#Ordre Decroissant:#1"/>
        <item algoitem="POUR i ALLANT_DE n A 0" code="12#i#n#0">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="i PREND_LA_VALEUR i-2" code="5#i#i-2#pasliste"/>
            <item algoitem="AFFICHER v[i]" code="3#v#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
