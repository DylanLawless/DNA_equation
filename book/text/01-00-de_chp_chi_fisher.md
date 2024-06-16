---
title: "1. DNA-Varianten"
type: chapter
---

Über das gesamte Genom hinweg könnte jede einzelne Nukleotidvariante irgendeine Auswirkung auf uns haben.
Die meisten davon sind wahrscheinlich zu subtil, um jemals wirklich ihren Effekt quantifizieren zu können.
Einige von ihnen könnten eine signifikante und deutlich zugeordnete Krankheit verursachen.

Abbildung <a href="#candidate_variants_p1">Figure: DNA-Sequenzalignments</a>
Panel 1 zeigt eine Karikatur der möglichen Weise, den Effekt von Varianten zu veranschaulichen.
Die obere Reihe stellt sich die Lollipop-Formen vor, die nur die Varianten anzeigen, die tatsächlich eine messbare Konsequenz haben.
Sie könnten sehr hoch, moderat oder niedrig sein. Einige von ihnen könnten als Modifikatoren eingestuft werden, was vielleicht eine alberne Klassifikation ist, aber nützlich sein könnte.
Der Modifikator könnte zum Beispiel keinen direkten Effekt auf die Proteinstruktur haben, könnte aber eine leichte Erhöhung oder Verringerung der produzierten Proteinmenge verursachen.
Die Veränderung des Niveaus selbst könnte das messbare Phänotyp verursachen.
Wenn wir jedes einzelne Nukleotid im Genom mit „Ganzgenomsequenzierung“ sequenzieren würden, dann könnten wir ziemlich viele davon zu bewerten haben.

Jedoch, wenn wir nur die kodierenden Teile des Genoms mit „zielgerichteter Sequenzierung“ sequenzieren würden, dann könnten wir eine kleinere Untergruppe von Variantenstellen haben.
Die zweite Reihe zeigt eine Illustration dieser Idee - die sequenzierten Beobachtungen auf die kodierenden Teile einer gegebenen DNA-Region zu beschränken.

GWAS ist seitdem eine extrem populäre Methode, da sie viel günstiger ist.
In diesem Fall hätten wir nur relativ gleichmäßig verteilte Nukleotide über das Genom, die getestet werden.
Reihe 3 zeigt diese Idee.
Diese Positionen sind repräsentativ für einen Haplotypblock und daher spärlich und können als Proxy-Varianten betrachtet werden, da die Varianten selbst wahrscheinlich nicht die Ursache der Krankheit sind, sondern in demselben DNA-Block mit der kausalen Variante liegen.
Wir sagen, dass die Proxy-Varianten in LD mit der kausalen Variante sind.

<!-- \begin{figure}[htbp] -->
  <!-- centering -->
  <!-- ![alt text](/DNA_equation/book/images/content_images/candidate_variants_p1.pdf "caption: DNA-Sequenzalignments.") -->
	 <!-- {#fig:{candidate_variants_p1} -->
<!-- \end{figure} -->

<!-- <figure> -->
<!--   <img src="{{site.url}}/DNA_equation/book/images/content_images/candidate_variants_p1.pdf" alt="my alt text"/> -->
<!-- 	  <figcaption>DNA-Sequenzalignments.</figcaption> -->
<!-- </figure> -->


<figure id="candidate_variants_p1">
  <img src="{{site.url}}/DNA_equation/book/images/content_images/candidate_variants_p1.pdf" alt="my alt text"/>
  <figcaption>DNA-Sequenzalignments.</figcaption>
</figure>



Wir haben einige Beispiele dafür behandelt, wie Sequenzierungsdaten generiert werden.
Stellen Sie sich vor, wir hätten diese Daten in eine große Tabelle verarbeitet.
Wenn die Referenzsequenz $$\texttt{ATGCAGGCTAAGCC...}$$ ist, wird die sequenzierte Daten jeder Person dagegen ausgerichtet, sodass unsere große Tabelle eine Personensequenz (Probe) pro Zeile enthält und jede Spalte eine Nukleotidposition ist.
Wir können die Daten vereinfachen, so dass wir statt immer $$\texttt{ATGC}$$ zu betrachten, einfach aufzeichnen können, ob das Probennukleotid mit der Referenz übereinstimmt oder nicht.
Wir können dies als 0=übereinstimmen und 1=keine Übereinstimmung aufzeichnen oder 0=REF und 1=ALT.
Wenn unser erstes Nukleotid A ist und das alternative Allel T, dann wären unsere Daten A=0 und T=1.
Abbildung 
<a href="#candidate_variants_p1">Figure: DNA-Sequenzalignments</a>
Panel 2 zeigt das Sequenzalignment mit Nukleotiden.
Indem wir jede Position über unsere Tabelle ersetzen, haben wir eine einfache Genotypmatrix, die großartig für die Verwendung in statistischen Berechnungen ist.
Panel 3 zeigt diese neue Genotypmatrix aus 0en und 1en.
Natürlich müssen wir eine Aufzeichnung darüber behalten, worauf sich die 0en und 1en bei jeder Position beziehen, aber wir können diese Information irgendwo anders aufbewahren und sie eine Weile ignorieren.

Lassen Sie uns einfach mit dem ersten Nukleotid beginnen - Referenzsequenz A.
Wenn wir diese Spalte aus unserem Datensatz extrahieren würden, hätten wir 1 Spalte und 200 Zeilen für die 100 Fälle und 100 Kontrollen.
Da dies schwierig auf der Seite zu betrachten wäre, werden wir es in zwei große Gruppen in Abbildung 
<a href="#candidate_variants_p3">Figure: DNA-Genotypdaten</a>
zusammenfassen.
Links sind die 100 Kontrollgenotypen, von denen 5 ALT und 95 REF sind.
Rechts sind die 100 Fälle, die aus 40 ALT und 60 REF bestehen.

<!-- \begin{figure}[htbp] -->
  <!-- centering -->
  <!-- ![alt text](/DNA_equation/book/images/content_images/candidate_variants_p3.pdf) -->
  <!-- \label{candidate_variants_p3} -->
<!-- \end{figure} -->

<figure id="candidate_variants_p3">
  <img src="{{site.url}}/DNA_equation/book/images/content_images/candidate_variants_p3.pdf" alt="my alt text"/>
  <figcaption>
	DNA-Genotypdaten für Variante 1. Diese Daten stammen aus Spalte 1 der vorherigen Abbildung und sind für alle Proben erweitert, 100 Fälle und 100 Kontrollen. Die Spalte ist in ein Quadrat zusammengefasst, um in eine Illustration zu passen. Die Werte 0 repräsentieren ein REF-Allel, während die Werte 1 ein ALT-Allel repräsentieren. Da diese Variante ein A>T ist, bedeutet dies, dass A=0 und T=1.
</figcaption>
</figure>


Es ist ziemlich klar aus dieser Abbildung von 200 Proben, dass die Fälle stark für die ALT-Varianten angereichert sind, die daher wahrscheinlich mit der Krankheit assoziiert sind.
Wir müssen jedoch von der Statistik abhängen, um sicherzustellen, dass wir das richtige Urteil fällen.
Daher benötigen wir Methoden, um zu berichten, dass Variante eins signifikant mit der Krankheit assoziiert ist und tatsächlich eine Ursache der Krankheit sein könnte, damit wir herausfinden können, wer gefährdet ist und möglicherweise medizinisch behandelt werden könnte.

Wenn Sie etwas über Genetik, Statistik oder andere analytische Themen wissen, könnten Sie vermuten, dass es andere Variablen zu berücksichtigen gibt.
Aber lassen Sie uns es ruhig angehen und Schritt für Schritt herausfinden.

## Es ist hip, den Chi-Quadrat-Test zu verwenden

In Zukunft werden wir nicht lange damit verbringen, Details zu schleifen, die normalerweise von statistischer Software automatisiert werden.
Es macht mehr Spaß, eine Unterhaltung über die liebenswerten Nuancen der DNA-Variantenanalyse zu führen.
Wir werden jedoch ein greifbares Beispiel mit dem _Chi-Quadrat-Test_ und dem _Fisher-Test_ aufbauen, damit wir hierher zurückkehren können, wenn die Dinge verwirrend werden.

Der Chi-Quadrat-Test ist ein statistischer Test, der verwendet wird, um zu bestimmen, ob eine signifikante Assoziation zwischen zwei kategorialen Variablen besteht, wie das Vorhandensein einer DNA-Variante und das Vorhandensein einer Krankheit.
Im Kontext der genetischen Variantenanalyse kann er verwendet werden, um zu bewerten, ob die beobachteten Häufigkeiten der verschiedenen Genotypen signifikant von den erwarteten Häufigkeiten abweichen.
Oder einfacher ausgedrückt, wenn die meisten Menschen mit einer spezifischen Krankheit dieselbe DNA-Variante teilen - viel mehr als erwartet - dann ist diese Variante ein guter Kandidat als Ursache ihrer Krankheit.
Die Chi-Quadrat-Teststatistik wird mit der folgenden Formel berechnet:
$$\chi^2 = \sum_{i=1}^{n}\frac{(O_i - E_i)^2}{E_i}$$
In dieser Formel repräsentiert $$O_i$$ die beobachteten Häufigkeiten für jede Genotypkategorie, $$E_i$$ repräsentiert die erwarteten Häufigkeiten und $$n$$ ist die Anzahl der Genotypkategorien.
Lassen Sie uns ein Beispiel betrachten, um den Chi-Quadrat-Test im Kontext der genetischen Variantenanalyse zu veranschaulichen.
Nehmen wir an, wir haben 100 Fälle und 100 Kontrollen.
Wir sind daran interessiert, eine genetische Variante zu untersuchen, bei der das Wildtyp-Referenz (REF) Nukleotid A und eine alternative (ALT) Variante T ist, die als Kandidat für die Verursachung einer Krankheit vermutet wird.
Um diese Hypothese zu testen, zählen wir die Anzahl der Träger in beiden Fällen und Kontrollen. Die Zählungen lauten wie folgt:
Fälle: 60 Träger und 40 Wildtyp.
Kontrollen: 5 Träger und 95 Wildtyp.
Wir können eine Genotypmatrix basierend auf diesen Zählungen erstellen und dann den Chi-Quadrat-Test durchführen, um festzustellen, ob es eine signifikante Assoziation zwischen dem Genotyp und dem Krankheitsstatus gibt.

Table: Zusammenfassung der Genotypmatrix.

|               | Träger (ALT) | Wildtyp (REF) |
|---------------|--------------|---------------|
| Fälle         | 60           | 40            |
| Kontrollen    | 5            | 95            |


Um den Chi-Quadrat-Test durchzuführen, würde ich persönlich R-Code verwenden, um die Teststatistik zu berechnen und das Ergebnis zu bewerten.
Speziell würden wir Pearsons Chi-Quadrat-Test mit Yates-Kontinuitätskorrektur durchführen.
Diese Korrektur wird häufig angewendet, wenn die Stichprobengröße klein ist, um die Chi-Quadrat-Statistik anzupassen.

Das Ergebnis des Chi-Quadrat-Tests lautet wie folgt:

$$
\text{X-Quadrat} = 66,462, \text{df} = 1, \text{p-Wert} = 3,568 \times 10^{-16}.
$$

Der _Chi-Quadrat-Teststatistik_-Wert wird als _X-Quadrat_ = 66,462 berichtet. Dieser Wert zeigt die Gesamtabweichung zwischen den beobachteten und erwarteten Häufigkeiten an.
Der _Freiheitsgrad_ für den Test ist _df_ = 1.
In diesem Fall wird er durch die Anzahl der Genotypkategorien (2) minus 1 (später erklärt) bestimmt.
Der _p-Wert_, der mit dem Chi-Quadrat-Test verbunden ist, ist _p-Wert_ = 3.568e-16, was ein sehr kleiner Wert nahe Null ist.
Der _p-Wert_ stellt die Wahrscheinlichkeit dar, einen Teststatistikwert zu beobachten, der so extrem oder extremer ist als der erhaltene, unter der Nullhypothese (d. h. unter der Annahme, dass keine Assoziation zwischen Genotyp und Krankheit besteht), wenn die Nullhypothese wahr ist.
Ein kleiner _p-Wert_ deutet auf starke Beweise gegen die Nullhypothese hin.
In diesem Fall, da der _p-Wert_ kleiner als das übliche Signifikanzniveau von 0,05 (oder jede vernünftige Schwelle) ist, können wir schließen, dass eine hochsignifikante Assoziation zwischen dem Genotyp und dem Krankheitsstatus besteht.

Wir haben einen Schritt übersprungen, in dem die tatsächlichen Berechnungen, die im Chi-Quadrat-Test verwendet werden, gezeigt wurden.
Ehrlich gesagt, niemand schreibt jemals diese Berechnungen aus, da jede Analyse-Software diese Methoden im Basispaket enthält.
Sie würden einfach der Software sagen, etwas wie $$\texttt{chisq.test(genotype\_matrix)}$$ auszuführen, das alle Schritte abschließen würde.
Aber Forscher entwickeln manchmal gerne neuartige Methoden, die ihren genauen Bedürfnissen entsprechen, indem sie Berechnungen anpassen.
Daher ist es sinnvoll, sich die Variablen anzuschauen.
Um die erwarteten Häufigkeiten zu berechnen, müssen wir zuerst die Zeilen- und Spaltensummen der Genotypmatrix berechnen.
Dann wird für jede Zelle in der Matrix die erwartete Häufigkeit als Produkt der entsprechenden Zeilen- und Spaltensumme geteilt durch die Gesamtsumme (d. h. die Gesamtanzahl der Beobachtungen) berechnet.

So können wir die erwarteten Häufigkeiten für das gegebene Beispiel berechnen:

1. Berechnen Sie Zeilen- und Spaltensummen:

Table: Zusammenfassung der Genotypmatrix mit Zeilen- und Spaltensummen

|               | Träger (ALT) | Wildtyp (REF) | Gesamt |
|---------------|--------------|---------------|--------|
| Fälle         | 60           | 40            | 100    |
| Kontrollen    | 5            | 95            | 100    |
| Gesamt        | 65           | 135           | 200    |


2. Berechnen Sie die erwarteten Häufigkeiten für jede Zelle:

$$ E_{11} &= \frac{\text{Zeilen 1 Gesamt} \times \text{Spalte 1 Gesamt}}{\text{Gesamtsumme}} = \frac{100 \times 65}{200} = 32,5 $$

$$ E_{12} &= \frac{\text{Zeilen 1 Gesamt} \times \text{Spalte 2 Gesamt}}{\text{Gesamtsumme}} = \frac{100 \times 135}{200} = 67,5 $$

$$ E_{21} &= \frac{\text{Zeilen 2 Gesamt} \times \text{Spalte 1 Gesamt}}{\text{Gesamtsumme}} = \frac{100 \times 65}{200} = 32,5 $$

$$ E_{22} &= \frac{\text{Zeilen 2 Gesamt} \times \text{Spalte 2 Gesamt}}{\text{Gesamtsumme}} = \frac{100 \times 135}{200} = 67,5 $$

Also sind die erwarteten Häufigkeiten wie folgt:

Table: Erwartete Häufigkeiten

|               | Träger (ALT) | Wildtyp (REF) |
|---------------|--------------|---------------|
| Fälle         | 32,5         | 67,5          |
| Kontrollen    | 32,5         | 67,5          |



Wir können die beobachteten und erwarteten Häufigkeiten in die Chi-Quadrat-Teststatistikformel einfügen und das Ergebnis für das Beispiel berechnen:

$$
\chi^2 = \frac{(O_{11} - E_{11})^2}{E_{11}} + \frac{(O_{12} - E_{12})^2}{E_{12}} + \frac{(O_{21} - E_{21})^2}{E_{21}} + \frac{(O_{22} - E_{22})^2}{E_{22}}
$$
$$
= \frac{(60 - 32,5)^2}{32,5} + \frac{(40 - 67,5)^2}{67,5} + \frac{(5 - 32,5)^2}{32,5} + \frac{(95 - 67,5)^2}{67,5}
$$
$$
= \frac{(27,5)^2}{32,5} + \frac{(-27,5)^2}{67,5} + \frac{(-27,5)^2}{32,5} + \frac{(27,5)^2}{67,5}
$$
$$
= 23,27 + 11,20 + 23,27 + 11,20
$$
$$
= 68,94
$$

Der berechnete Chi-Quadrat-Teststatistikwert, $$\chi^2$$, beträgt ungefähr 68,94 für dieses Beispiel.
Dieser Wert kann mit dem Wert verglichen werden, den wir zuvor berichtet haben (X-Quadrat = 66,462).
Beachten Sie jedoch, dass die Diskrepanz zwischen den Werten aufgrund der Anwendung der Yates-Kontinuitätskorrektur im ursprünglichen Beispiel entsteht.
Es wird angewendet, um eine Überschätzung der Chi-Quadrat-Statistik zu verhindern, wenn kleine Stichprobengrößen in einer 2x2-Kontingenztafel behandelt werden.
Dazu wird 0,5 von der absoluten Differenz zwischen den beobachteten und erwarteten Häufigkeiten vor dem Quadrieren in der Chi-Quadrat-Berechnung abgezogen.
Das ist umständlicher und den Umweg nicht wert.
Für jetzt können wir zuversichtlich sein, dass wir ein Gefühl dafür haben, wie der Test funktioniert.

%So wenden Sie die Yates-Korrektur auf die Chi-Quadrat-Berechnung an:
%Berechnen Sie die erwarteten Häufigkeiten für jede Zelle wie zuvor.
%Finden Sie für jede Zelle die absolute Differenz zwischen den beobachteten und erwarteten Häufigkeiten: $$|O_i - E_i|$$.
%Ziehen Sie 0,5 von der absoluten Differenz für jede Zelle ab: $$|O_i - E_i| - 0,5$$.
%Quadrieren Sie die resultierenden Werte: $$\left(|O_i - E_i| - 0,5\right)^2$$.
%Teilen Sie die quadrierten Werte durch die entsprechenden erwarteten Häufigkeiten: $$\frac{\left(|O_i - E_i| - 0,5\right)^2}{E_i}$$.
%Summieren Sie diese Werte über alle Zellen, um die korrigierte Chi-Quadrat-Statistik zu erhalten: $$\chi^2_\text{Yates} = \sum_{i=1}^{n}\frac{\left(|O_i - E_i| - 0,5\right)^2}{E_i}$$.


% Kritischer Wert
Die Teststatistik allein reicht nicht aus, um auf Unabhängigkeit oder Abhängigkeit zwischen den beiden Variablen zu schließen. Wie bereits erwähnt, muss diese Teststatistik (die in gewisser Weise die Differenz zwischen den beobachteten und erwarteten Häufigkeiten darstellt) mit einem kritischen Wert verglichen werden, um zu bestimmen, ob die Differenz groß oder klein ist. Man kann nicht sagen, dass eine Teststatistik groß oder klein ist, ohne sie in Bezug auf den kritischen Wert zu setzen.

Wenn die Teststatistik über dem kritischen Wert liegt, bedeutet das, dass die Wahrscheinlichkeit, eine solche Differenz zwischen den beobachteten und erwarteten Häufigkeiten zu beobachten, unwahrscheinlich ist. Andererseits, wenn die Teststatistik unter dem kritischen Wert liegt, bedeutet das, dass die Wahrscheinlichkeit, eine solche Differenz zu beobachten, wahrscheinlich ist. Wenn es wahrscheinlich ist, diese Differenz zu beobachten, können wir die Hypothese nicht ablehnen, dass die beiden Variablen unabhängig sind, andernfalls können wir schließen, dass es eine Beziehung zwischen den Variablen gibt.

Der kritische Wert kann in der statistischen Tabelle der Chi-Quadrat-Verteilung gefunden werden und hängt vom Signifikanzniveau ab, das mit $$\alpha$$ bezeichnet wird, und von den Freiheitsgraden, die mit $$df$$ bezeichnet werden.
Das Signifikanzniveau wird normalerweise auf 5% (.05) festgelegt.
Die Freiheitsgrade für einen Chi-Quadrat-Unabhängigkeitstest werden wie folgt gefunden:
$$
df = (\text{Anzahl der Zeilen} - 1)
\times (\text{Anzahl der Spalten} - 1)
$$
In unserem Beispiel sind die Freiheitsgrade also
$$ df = (2-1) \times (2-1)=1 $$
da es zwei Zeilen und zwei Spalten in der Kontingenztafel gibt (Gesamtwerte zählen nicht als Zeile oder Spalte).

Wir haben jetzt alle notwendigen Informationen, um den kritischen Wert in der Chi-Quadrat-Tabelle zu finden ($$\alpha = 0.05$$ und $$df = 1$$).
Um den kritischen Wert zu finden, müssen wir in der Reihe $$df = 1$$ und in der Spalte 
$$\chi ^2_{0.050}$$ (da $$\alpha = 0.05$$) im Bild unten schauen.
Der kritische Wert ist 3.84146.
 
Das unten gezeigte Diagramm ist eine Visualisierung der Chi-Quadrat-Verteilung für verschiedene Freiheitsgrade $$K = 1$$ bis $$K = 8$$ (wir würden andere Werte von $$K$$ verwenden, wenn wir komplexere Daten mit mehr Kategorien hätten). 
Die x-Achse stellt die Chi-Quadrat-Werte dar, während die y-Achse die Wahrscheinlichkeitsdichte darstellt. 
Die durchgezogene schwarze Linie entspricht $$K = 1$$, was der Freiheitsgrad ist, der für unser Beispiel relevant ist. Der kritische Wert bei einem Signifikanzniveau von $$\alpha = 0.05$$ für $$df = 1$$ ist 3.84146, der durch die Kreuzung der durchgezogenen schwarzen Linie ($$K = 1$$) mit der vertikalen gestrichelten Linie bei x = 3.84146 dargestellt wird. 
Dieser kritische Wert kann verwendet werden, um zu bestimmen, ob die Teststatistik über oder unter der Schwelle für die Ablehnung der Nullhypothese der Unabhängigkeit zwischen den beiden Variablen liegt. 
Wenn die Teststatistik über diesem kritischen Wert liegt, deutet dies darauf hin, dass der Unterschied zwischen den beobachteten und erwarteten Häufigkeiten nicht allein durch Zufall zustande kommt, und wir können die Nullhypothese ablehnen (der Genotyp ist mit der Krankheit assoziiert).
Umgekehrt, wenn die Teststatistik unter diesem kritischen Wert liegt, können wir die Nullhypothese nicht ablehnen, und der beobachtete Unterschied könnte zufällig sein (ein falsch positives Ergebnis).

Mit anderen Worten, die linke Seite der kritischen Wertlinie hat die größte Fläche unter der $$K = 1$$-Kurve.
Wenn unser $$\chi^2$$-Wert auf der linken Seite läge,
würde das bedeuten, dass die Wahrscheinlichkeit, dieses Ergebnis zu beobachten, wahrscheinlich durch Zufall ist.
Aber da unser Ergebnis auf der rechten Seite liegt, ist die Wahrscheinlichkeit, dass dies durch Zufall geschieht, sehr gering, angesichts der Studiendaten.

<!-- <a href="#chisq_density_plot">Figure: Chi-sqr density </a> -->
<figure id="chisq_density_plot">
  <img src="{{site.url}}/DNA_equation/book/images/content_images/chisq_density_plot.pdf" alt="my alt text"/>
  <figcaption>
  Chi-Quadrat-Wahrscheinlichkeitsdichte. Veranschaulicht für acht Freiheitsgrade ($K$). Die vertikale gestrichelte Linie zeigt den kritischen Wert ($\alpha = .05$) für das Beispieldatenset, $K=1$.
</figcaption>
</figure>

## Annäherung an die Signifikanz
 
Eines, das wir noch nicht erklärt haben, ist das 0,05-Signifikanzniveau (oder $$\alpha = 0.05$$).
Sie erkennen diesen Wert vielleicht bereits - er wird häufig in der Hypothesenprüfung verwendet, aber seine Herkunft ist größtenteils eine Frage der historischen Konvention.
Der britische Statistiker Ronald A. Fisher wird oft damit in Verbindung gebracht, das 0,05-Niveau als Standard-Signifikanzschwelle in seinem Buch „Statistical Methods for Research Workers“ (1925) populär gemacht zu haben.

Fisher behauptete nicht ausdrücklich, dass 0,05 ein universell optimales Signifikanzniveau sei, aber er betrachtete es als eine praktische Wahl in vielen Fällen. In seinem Buch schrieb er, dass es ein „praktischer Punkt auf der Skala der Beweise“ sei und bemerkte, dass Unterschiede mit _p-Werten_ unter 0,05 als „signifikant“ angesehen würden. Fishers Arbeit und Einfluss im Bereich der Statistik führten dazu, dass viele Forscher das 0,05-Niveau als Standardkriterium für die Bestimmung der statistischen Signifikanz übernahmen.

Viele Statistiker sind genervt von Wissenschaftlern, die oft blind jedes Testergebnis, das einen _p-Wert_ $$<$$ 0,05 hat, als signifikant melden, d. h., als Beweis, dass ihre Hypothese wahr ist.
Diese Überbetonung von _p-Werten_ kann zu einem Missverständnis der tatsächlichen Bedeutung der Ergebnisse und ihrer Implikationen im Kontext der Forschungsfrage führen.
Ich muss sagen, dass ich das auch gemacht habe, als ich mit der Forschung anfing, weil ich noch nicht mehr über die Details gelernt hatte.

Viele Statistiker ziehen es heute vor, sich mehr auf andere Methoden wie Odds Ratios, Effektgrößen und Konfidenzintervalle zu verlassen, um die praktischen Implikationen der Ergebnisse besser zu verstehen.
Diese Maßnahmen bieten mehr Informationen über das Ausmaß und die Präzision des Effekts, anstatt nur die Wahrscheinlichkeit zu betrachten, die Daten unter der Nullhypothese zu beobachten.

Zum Beispiel quantifiziert ein Odds Ratio die Stärke der Assoziation zwischen zwei kategorialen Variablen, während eine Effektgröße (z. B. Cohens d) das Ausmaß des Unterschieds zwischen zwei Gruppen oder die Stärke einer Beziehung zwischen Variablen misst.
Konfidenzintervalle geben einen Bereich plausibler Werte für einen Populationsparameter an und bieten eine Schätzung der Präzision und Unsicherheit, die mit den Ergebnissen verbunden sind.

Indem sie sich auf diese zusätzlichen Maßnahmen konzentrieren und den breiteren Kontext der Forschungsfrage berücksichtigen, können Wissenschaftler ein nuancierteres Verständnis ihrer Ergebnisse entwickeln und eine übermäßige Abhängigkeit von willkürlichen Signifikanzschwellen wie dem 0,05-Niveau vermeiden.
Dieser Ansatz kann dazu beitragen, die Qualität der Forschungsergebnisse zu verbessern und rigorosere und transparentere wissenschaftliche Praktiken zu fördern.

Während des Journal Clubs, bei dem wir neue Forschungsarbeiten besprechen, gibt es etwas Spaß, wenn jemand bemerkt, dass die Autoren sich ausschließlich auf _p-Werte_ verlassen und ihr resultierender _p-Wert_ = 0,06 von dem Satz „unsere Ergebnisse näherten sich der Signifikanz“ begleitet wird.
Oft unterlassen es die Autoren, andere Maßnahmen zu verwenden, die tatsächlich nützlicher sein könnten und tatsächlich feststellen, dass ihre Hypothese eine gewisse Gültigkeit hat.
Obwohl normalerweise sehr schwache Signale entweder auf keine echte Assoziation zurückzuführen sind oder die Studie einfach zu wenige Proben hat, um ein Signal zu erkennen.
Leider sind Forschungslabore oft genau an ihrer Budgetgrenze - sie versuchen, das beste Experiment mit gerade genug Proben durchzuführen - was ein verständliches, aber frustrierendes Szenario ist.
Es ist also nicht ungewöhnlich, „Annäherung an die Signifikanz“-Ergebnisse zu sehen.

## Fishers exakter Test

Fisher entwickelte seinen exakten Test (jetzt als Fishers exakter Test bekannt), um die Einschränkungen des Chi-Quadrat-Tests bei kleinen Stichproben und spärlichen Kontingenztabellen zu adressieren und eine genauere und zuverlässigere Alternative für diese Situationen zu bieten.
Daher ist Fishers exakter Test ein statistischer Test, der verwendet wird, um zu bestimmen, ob eine signifikante Assoziation zwischen zwei kategorialen Variablen in einer 2x2-Kontingenztafel besteht.
Außerdem ist er besonders nützlich, wenn die Stichprobengröße klein ist.

Der Test berechnet die Wahrscheinlichkeit, die beobachteten Zellenzählungen oder extremere zu erhalten, unter der Annahme der Unabhängigkeit zwischen den Variablen.
Die Formel für Fishers exakten Test lautet wie folgt:

$$P = \frac{\binom{a+b}{a} \binom{c+d}{c}}{\binom{a+b+c+d}{a+c}}$$

In dieser Formel repräsentieren $$a$$, $$b$$, $$c$$ und $$d$$ die beobachteten Zellenzählungen in der 2x2-Kontingenztafel.
$$P$$ repräsentiert die Wahrscheinlichkeit, die beobachteten Zellenzählungen zu erhalten (p-Wert).
Wir sehen drei verschiedene Binomialkoeffizienten in der Gleichung.
Beachten Sie, falls Sie es nicht wissen, dass die Terme in den geschweiften Klammern wie $$\binom{a+b}{a}$$ nicht dasselbe sind wie $$(\frac{a+b}{a})$$, was Sie vielleicht leicht mit Stift und Papier berechnen könnten.
Sie sind Binomialkoeffizienten, die auch anders geschrieben werden können.
Unter Verwendung der Faktorialform kann die Gleichung wie folgt ausgedrückt werden:

$$P = \frac{\frac{(a+b)!}{a!b!} \times \frac{(c+d)!}{c!d!}}{\frac{(a+b+c+d)!}{(a+c)!(b+d)!}}$$

Hier bezeichnet das „!“-Symbol das Faktorial, das das Produkt aller positiven ganzen Zahlen bis zu dieser Zahl ist.
Zum Beispiel würde $$a!$$ oder $$60!$$ bedeuten $$60 \times 59 \times  58 \times  \ldots \times  3 \times  2 \times 1 = 8.3\times10^{81}$$.
Daher, obwohl die gesamte Gleichung _auf Papier_ berechnet werden _könnte_, werden wir es nicht tun.
Lassen Sie uns dasselbe Beispiel von Fällen verwenden: 60 Träger und 40 Wildtyp und Kontrollen: 5 Träger und 95 Wildtyp.

Table: Zusammenfassung der Genotypmatrix.

|               | Träger (ALT) | Wildtyp (REF) |
|---------------|--------------|---------------|
| Fälle         | 60           | 40            |
| Kontrollen    | 5            | 95            |


Mit derselben 2x2-Kontingenztafel können wir Fishers exakten Test durchführen, um den genauen p-Wert zu berechnen.
Anstatt all das auszuschreiben, wie im Chi-Quadrat-Beispiel, werde ich einfach das Ergebnis ausdrucken, das mit R berechnet wurde.


Die Ergebnisse lauten wie folgt:

Table: Ergebnisse des Fishers exakten Tests für Zähldaten.

| p-Wert                   | $$< 2.2 × 10^{-16}$$ |
|--------------------------|------------------|
| Alternativhypothese      | Das wahre Odds Ratio ist nicht gleich 1 |
| 95-Prozent-Konfidenzintervall | 10.28–95.94   |
| Schätzungen der Stichprobe  | Odds Ratio 27.95 |


Der exakte _p-Wert_ für diesen Fishers exakten Test wird als _p-Wert_ $$< 2.2e-16$$  berichtet, was einen sehr kleinen _p-Wert_ nahe Null andeutet.
Dies deutet auf starke Beweise gegen die Nullhypothese der Unabhängigkeit zwischen Genotyp und Krankheitsstatus hin.
Einfacher ausgedrückt, dieser _p-Wert_ deutet auf starke Beweise dafür hin, dass das ALT-Allel mit der Krankheit assoziiert ist.
Die _Alternativhypothese_ ist, dass das wahre Odds Ratio nicht gleich 1 ist, was auf eine Assoziation zwischen Genotyp und Krankheitsstatus hindeutet.
Das _Odds Ratio_ ist ein Maß für die Stärke und Richtung der Assoziation zwischen dem Genotyp und dem Krankheitsstatus.
In diesem Fall liegt das geschätzte Odds Ratio bei etwa 27.95.
Das deutet darauf hin, dass Individuen mit dem Trägergenotyp fast 28-mal höhere Chancen haben, die Krankheit zu haben, verglichen mit Individuen mit dem Wildtyp-Genotyp.
Das _95%-Konfidenzintervall_ gibt einen Bereich plausibler Werte für das wahre Odds Ratio in der Bevölkerung an.
Im Ergebnis wird das 95%-Konfidenzintervall als (10.28, 95.94) berichtet.
Das bedeutet, dass wir zu 95% sicher sind, dass das wahre Odds Ratio innerhalb dieses Intervalls liegt.
Obwohl wir berechnen, dass das Odds Ratio 27.95 ist, könnte es so niedrig wie 10.28 oder so hoch wie 95.94 sein, mit unseren Stichprobendaten.

Basierend auf diesen Ergebnissen können wir schlussfolgern, dass eine hochsignifikante Assoziation zwischen dem Genotyp und dem Krankheitsstatus besteht, mit einem geschätzten Odds Ratio von etwa 27.95 und einem 95%-Konfidenzintervall von 10.28 bis 95.94.
<a href="#fisher_test_OR_95CI">Figure: Fisher test OR 95CI</a>

<figure id="fisher_test_OR_95CI">
  <img src="{{site.url}}/DNA_equation/book/images/content_images/fisher_test_OR_95CI.pdf" alt="my alt text"/>
  <figcaption>
  Forest-Plot des Odds Ratios, 95%-Konfidenzintervall.
</figcaption>
</figure>

Das _Odds Ratio_ wird wie folgt berechnet:

$$\text{Odds Ratio} = \frac{a/b}{c/d}$$

In unserem Beispiel kann das Odds Ratio berechnet werden als:

$$\text{Odds Ratio} = \frac{60/40}{5/95} = 28.5$$

Aber Moment! Dieser Wert ist anders als der, den wir gerade gesehen haben (27.95).
Bei dieser Berechnung habe ich die R-Funktion $$\texttt{fisher.test()}$$ verwendet, die standardmäßig etwas verwendet, das als bedingte Maximum-Likelihood-Schätzung (MLE) bekannt ist, anstatt der unbedingten MLE (die Stichproben-Odds-Ratio).
Ich habe die MLE übersprungen, da es nicht nötig ist, die Diskussion weiter zu komplizieren.
Von unserer manuellen Berechnung können wir die Methode sehen und verstehen, wie sie durchgeführt wird.
Wir wissen jedoch, dass in realen Anwendungen statistische Software verwendet wird und deren Ergebnis etwas genauer sein wird.

Das Odds Ratio von 27.95 (oder 28.5) deutet darauf hin, dass Individuen mit dem Trägergenotyp fast 28-mal höhere Chancen haben, die Krankheit zu haben, verglichen mit Individuen mit dem Wildtyp-Genotyp.

Um das _Konfidenzintervall_ für das Odds Ratio zu berechnen, können wir die folgende Formel verwenden:

$$\text{95\% CI} = \text{Odds Ratio} \times e^{\pm 1.96 \times \sqrt{\frac{1}{a} + \frac{1}{b} + \frac{1}{c} + \frac{1}{d}}}$$

Für unser Beispiel kann das 95%-Konfidenzintervall berechnet werden als:

$$\text{95\% CI} = 27.95 \times e^{\pm 1.96 \times \sqrt{\frac{1}{60} + \frac{1}{40} + \frac{1}{5} + \frac{1}{95}}} = (10.28, 95.94)$$

Das bedeutet, dass wir zu 95% sicher sind, dass das wahre Odds Ratio in der Bevölkerung innerhalb dieses Intervalls liegt, das von 10.28 bis 95.94 reicht.
Der Wert 1.96 wird in der Formel für das 95%-Konfidenzintervall verwendet, weil er den kritischen Wert der Standardnormalverteilung (Z-Wert) darstellt, der einem zweiseitigen Test bei einem Signifikanzniveau von 0.05 entspricht.
Mit anderen Worten, 95% der Fläche unter der Standardnormalverteilung liegen innerhalb von \(\pm 1.96\) Standardabweichungen vom Mittelwert.

## Welchen wählen wir?

Während sowohl der Chi-Quadrat-Test als auch der Fishers-Test dieselbe 2x2-Kontingenztafel analysieren, konzentriert sich der Chi-Quadrat-Test auf die gesamte Diskrepanz zwischen den beobachteten und erwarteten Häufigkeiten und liefert eine Chi-Quadrat-Statistik und einen p-Wert. Andererseits berechnet Fishers exakter Test die exakte Wahrscheinlichkeit der beobachteten Zellenzählungen und liefert einen _p-Wert_ zusammen mit dem Odds Ratio und dessen Konfidenzintervall, die spezifischere Informationen über die Assoziation zwischen den Variablen bieten.
Die Wahl zwischen den Tests hängt von den spezifischen Merkmalen der Daten und der Forschungsfrage ab.

In unseren Beispieldaten können sowohl der Chi-Quadrat-Test als auch der Fishers-Test als nützlich betrachtet werden.
Jedoch hängt die Wahl zwischen den beiden von bestimmten Faktoren ab:
_Stichprobengröße_: Wenn die Stichprobengröße klein ist, insbesondere bei kleinen Zellenzählungen, wird oft der Fishers exakte Test bevorzugt, da er eine exakte Wahrscheinlichkeitsberechnung bietet. In unserem Beispiel, wo die Kontrollgruppe eine kleine Anzahl von Trägern (5) hat, könnte der Fishers exakte Test angemessener sein.
_Annahmen_: Der Chi-Quadrat-Test setzt voraus, dass die Zellenzählungen groß genug sind, damit die Chi-Quadrat-Statistik eine Chi-Quadrat-Verteilung approximieren kann. Wenn eine Zellenzählung weniger als 5 beträgt oder wenn mehrere Zellenzählungen weniger als 10 betragen, ist der Chi-Quadrat-Test möglicherweise nicht gültig. In solchen Fällen ist der Fishers exakte Test eine geeignete Alternative.
_Statistische Power_: Im Allgemeinen neigt der Fishers exakte Test dazu, weniger statistische Power zu haben als der Chi-Quadrat-Test.
Das bedeutet, dass der Fishers exakte Test weniger wahrscheinlich eine signifikante Assoziation nachweisen kann, wenn eine vorhanden ist.
Jedoch wird der Unterschied in der Power vernachlässigbarer, je größer die Stichprobengrößen sind.
In Anbetracht der spezifischen Beispieldaten, die Sie angegeben haben, mit einer kleinen Stichprobengröße und einer kleinen Zellenzählung in der Kontrollgruppe, ist der Fishers exakte Test wahrscheinlich geeigneter.
Er bietet eine exakte Wahrscheinlichkeitsberechnung und hängt nicht von Annahmen bezüglich der Stichprobengröße oder der Zellenzählungen ab.

Was ist, wenn wir im Allgemeinen eine große Stichprobengröße haben, aber immer noch nicht sicher sind?
Bei großen Stichprobengrößen können sowohl der Chi-Quadrat-Test als auch der Fishers exakte Test verwendet werden, aber der Chi-Quadrat-Test wird oft aus einigen Gründen bevorzugt:

_Berechnung_: Der Fishers exakte Test kann bei großen Stichprobengrößen rechnerisch aufwändig werden aufgrund der Berechnungen, die zur Ermittlung der exakten Wahrscheinlichkeiten erforderlich sind. Andererseits beruht der Chi-Quadrat-Test auf einer einfacheren Approximation, die rechnerisch effizienter ist.
_Asymptotische Eigenschaften_: Wenn die Stichprobengröße groß ist, wird die Approximation des Chi-Quadrat-Tests an die wahre Verteilung der Teststatistik genauer. Infolgedessen funktioniert der Chi-Quadrat-Test gut bei großen Stichprobengrößen, und der Unterschied zwischen den _p-Werten_, die vom Chi-Quadrat-Test und \textit{Fishers exaktem Test erhalten werden, wird kleiner.
Konvergenz zur Normalität}: Bei großen Stichproben nähert sich die Stichprobenverteilung der Teststatistik im Chi-Quadrat-Test einer Normalverteilung an, was die Interpretation und Berechnung von p-Werten erleichtert.
Es ist jedoch wichtig zu beachten, dass, wenn die Kontingenztafel sehr niedrige erwartete Zellenfrequenzen aufweist, selbst bei einer großen Stichprobengröße der Fishers exakte Test aufgrund möglicher Ungenauigkeiten in der Chi-Quadrat-Approximation bevorzugt werden könnte.

Wie ich schon früher gesagt habe, werden wir in Zukunft nicht so lange damit verbringen, die Details und Annahmen für jedes Thema zu vergleichen, aber es ist nützlich, ein greifbares Beispiel zu erstellen, auf das wir zurückgreifen können, wenn die Dinge verwirrend werden.

## All das für eine einzige DNA-Variante?!
Das menschliche Genom hat ungefähr 4 Milliarden Nukleotide.
Das wird einige Zeit dauern...

So schlimm ist es nicht.
Wenn ich diese Aufgabe vorschlagen würde, stelle ich mir vor, dass Ronald A. Fisher im Jahr 1925 nicht darauf freuen würde, _p-Werte_ für jedes einzelne Nukleotid als Teil einer genomweiten Assoziationsstudie zu berechnen.
Zum Glück für ihn hatte er nicht diese Art von genetischen Daten.
Und zum Glück für uns haben wir moderne Computer.
Heute können wir ein einfaches Computerprogramm schreiben, um einen Test für jede Variante in einer Liste durchzuführen.
Das Ergebnis ist daher eine lange Tabelle von _p-Werten_, Odds Ratios und Konfidenzintervallen.
Eine Zeile Ergebnisse für jedes getestete Nukleotid im gesamten Genom.


## Regression
3. Lineare Regression:

$$y_i = \beta_0 + \beta_1 x_{i1} + \beta_2 x_{i2} + \cdots + \beta_p x_{ip} + \epsilon_i$$

wo $$y_i$$ die abhängige Variable ist, $$x_{ij}$$ die Prädiktorvariablen sind, $$\beta_j$$ die Regressionskoeffizienten und $$\epsilon_i$$ die Fehlerterme.

4. Logistische Regression:

$$\ln\left(\frac{p_i}{1-p_i}\right) = \beta_0 + \beta_1 x_{i1} + \beta_2 x_{i2} + \cdots + \beta_p x_{ip}$$

wo $$p_i$$ die Wahrscheinlichkeit des binären Ergebnisses ist, $$x_{ij}$$ die Prädiktorvariablen und $$\beta_j$$ die Regressionskoeffizienten.

5. Maximum-Likelihood-Schätzung (MLE):

$$\hat{\theta}_{MLE} = \arg\max_{\theta} L(\theta)$$

wo $$L(\theta)$$ die Likelihood-Funktion und $$\theta$$ die Parameter des statistischen Modells darstellt.

6. Varianzanalyse (ANOVA):

$$F = \frac{\text{Mittelquadrate zwischen Gruppen}}{\text{Mittelquadrate innerhalb Gruppen}}$$

wo Mittelquadrate zwischen Gruppen und Mittelquadrate innerhalb Gruppen als Verhältnisse der Quadratsummen zu ihren jeweiligen Freiheitsgraden berechnet werden.

7. Cox-Proportional-Hazards-Modell:

$$h(t) = h_0(t) \exp(\beta_1 x_1 + \beta_2 x_2 + \cdots + \beta_p x_p)$$

wo $$h(t)$$ die Hazard-Funktion, $$h_0(t)$$ die Basis-Hazard-Funktion, $$x_i$$ die Prädiktorvariablen und $$\beta_i$$ die Regressionskoeffizienten sind.


1. Hauptkomponentenanalyse (PCA):

$$\mathbf{X} = \mathbf{U}\mathbf{\Sigma}\mathbf{V}^T$$

wo $$\mathbf{X}$$ die Datenmatrix ist, $$\mathbf{U}$$ die Matrix der linken singulären Vektoren (Eigenvektoren von $$\mathbf{XX}^T$$), $$\mathbf{\Sigma}$$ eine Diagonalmatrix der singulären Werte und $$\mathbf{V}$$ die Matrix der rechten singulären Vektoren (Eigenvektoren von $$\mathbf{X}^T\mathbf{X}$$).

2. Fishers Methode der Momente zur Schätzung der Erblichkeit:

$$\frac{\sigma_G^2}{\sigma_P^2} = \frac{2\cdot\text{Cov}(P_1, P_2)}{\text{Var}(P_1) + \text{Var}(P_2)}$$

wo $$\sigma_G^2$$ die genetische Varianz ist, $$\sigma_P^2$$ die phänotypische Varianz, $$P_1$$ und $$P_2$$ die Phänotypen von zwei verwandten Individuen sind und Cov und Var Kovarianz bzw. Varianz darstellen.

3. Wrights Inzuchtkoeffizient (F):

$$F = \frac{H_E - H_O}{H_E}$$

wo $$H_E$$ die erwartete Heterozygotie unter Hardy-Weinberg-Gleichgewicht ist und $$H_O$$ die beobachtete Heterozygotie.

4. Haldanes Schätzung des Rekombinationsanteils:

$$\theta = \frac{n_r}{n}$$

wo $$\theta$$ der Rekombinationsanteil ist, $$n_r$$ die Anzahl der rekombinanten Nachkommen und $$n$$ die Gesamtzahl der Nachkommen.

5. Kimuras Modell unendlicher Stellen für die erwartete Anzahl segregierender Stellen:

$$E(S) = \theta\sum_{i=1}^{n-1}\frac{1}{i}$$

wo $$E(S)$$ die erwartete Anzahl segregierender Stellen ist, $$\theta$$ die Populationsmutationsrate und $$n$$ die Anzahl der beprobten Sequenzen.


Genetische Drift ist ein stochastischer Prozess, der zu Veränderungen der Allelfrequenzen innerhalb einer Population aufgrund von zufälligen Stichproben führt. Sie hat keine einzige repräsentative Gleichung, weil es ein Konzept ist, das mit unterschiedlichen Ansätzen modelliert werden kann. Ich kann Ihnen jedoch einige Gleichungen anbieten, die oft verwendet werden, um die Effekte der genetischen Drift zu beschreiben:

1. Wright-Fisher-Modell: Ein weit verbreitetes Modell zur Untersuchung der genetischen Drift, das eine feste Populationsgröße und diskrete Generationen annimmt. Die Wahrscheinlichkeit, dass ein Allel mit der Frequenz $$p$$ in der nächsten Generation die Frequenz $$p'$$ hat, kann mit der Binomialverteilung berechnet werden:

$$P(p' | p) = \binom{2N}{2Np'} p^{2Np'} (1-p)^{2N(1-p')}$$

wo $$2N$$ die Gesamtzahl der Genkopien in der Population ist (unter der Annahme diploider Organismen), und $$p$$ und $$p'$$ die Allelfrequenzen in der aktuellen und nächsten Generation sind.

2. Coalescent-Theorie: Ein leistungsstarker Ansatz zur Modellierung der genetischen Drift und anderer Evolutionsprozesse, indem die Genealogie einer Genprobe rückwärts in der Zeit verfolgt wird. Im Coalescent-Modell ist die Wahrscheinlichkeit, dass zwei Abstammungslinien in der vorherigen Generation koaleszieren,:

$$P_{coal} = \frac{1}{2N}$$

wo $$2N$$ die Gesamtzahl der Genkopien in der Population ist (unter der Annahme diploider Organismen).

3. Effektive Populationsgröße (Ne): Ein Maß, das verwendet wird, um die Auswirkungen der genetischen Drift auf eine Population zu quantifizieren. Die Beziehung zwischen der effektiven Populationsgröße und der Rate der genetischen Drift kann durch die Gleichung beschrieben werden:

$$\Delta p = \sqrt{\frac{p(1-p)}{2N_e}}$$

wo $$\Delta p$$ die Standardabweichung der Änderung der Allelfrequenz aufgrund der genetischen Drift ist, $$p$$ die Allelfrequenz und $$N_e$$ die effektive Populationsgröße.

Diese Gleichungen bieten unterschiedliche Perspektiven auf die Modellierung der genetischen Drift, aber sie erfassen alle die zufälligen Schwankungen der Allelfrequenzen, die sich aus der stochastischen Natur des Prozesses ergeben.



Fishers Randomisierungstest, auch bekannt als Permutationstest oder Randomisierungstest, ist eine nicht-parametrische statistische Methode, die verwendet wird, um die Nullhypothese zu testen, indem der beobachtete Testwert mit der Verteilung des Testwerts unter allen möglichen Permutationen der Daten verglichen wird. Er hat keine spezifische algorithmische Gleichung, da es sich um eine Resampling-basierte Methode handelt, aber ich kann Ihnen einen allgemeinen Überblick über das Verfahren in LaTeX-Form geben:

1. Berechnen Sie den Testwert $$T_{obs}$$ für die beobachteten Daten.

$$T_{obs} = f(X_1, X_2, \dots, X_n)$$

wo $$f(\cdot)$$ eine Funktion der Daten $$X_1, X_2, \dots, X_n$$ ist, die den Testwert darstellt.

2. Permutieren Sie die Datenbeschriftungen oder -werte zufällig und berechnen Sie den Testwert $$T_{perm}$$ für jede Permutation.

$$T_{perm} = f(X_{\pi(1)}, X_{\pi(2)}, \dots, X_{\pi(n)})$$

wo $$\pi(\cdot)$$ eine Permutation der Indizes $$1, 2, \dots, n$$ ist.

3. Wiederholen Sie Schritt 2 für eine große Anzahl von Permutationen (z. B. $$B$$ Mal), um die Nullverteilung des Testwerts zu erhalten.

$$\{T_{perm}^{(1)}, T_{perm}^{(2)}, \dots, T_{perm}^{(B)}\}$$

4. Berechnen Sie den _p-Wert_ als den Anteil der permutierten Testwerte, die so extrem oder extremer sind als der beobachtete Testwert.

$$p\text{-wert} = \frac{\#\{T_{perm}^{(i)}: |T_{perm}^{(i)}| \ge |T_{obs}|\}}{B}$$

wo $$\#\{\cdot\}$$ die Anzahl der Elemente in der Menge bezeichnet, die die Bedingung erfüllen.

Dieses allgemeine Verfahren skizziert die Schritte, die in Fishers Randomisierungstest involviert sind. Der spezifische Testwert, $$f(\cdot)$$, hängt von der Forschungsfrage und dem Typ der analysierten Daten ab.



Hardy-Weinberg-Gleichgewicht (HWE) ist ein Prinzip in der Populationsgenetik, das die Beziehung zwischen Genotypfrequenzen und Allelfrequenzen unter bestimmten Annahmen beschreibt, wie zufällige Paarung, keine Mutation, keine Migration, keine natürliche Selektion und eine große Populationsgröße. Hier ist die HWE-Gleichung in LaTeX-Format:

$$p^2 + 2pq + q^2 = 1$$

wo $$p$$ die Frequenz eines Allels (z. B. Allel A) ist, $$q$$ die Frequenz des anderen Allels (z. B. Allel a) und $$p^2$$, $$2pq$$ und $$q^2$$ die erwarteten Frequenzen der Genotypen AA, Aa und aa sind, die unter HWE erwartet werden.

Im Kontext von GWAS kann HWE als Qualitätskontrollmaßnahme verwendet werden. Abweichungen vom HWE in Kontrollproben können auf Genotypisierungsfehler, Populationsstratifizierung oder andere Probleme hinweisen, die die Genauigkeit und Gültigkeit der Studienergebnisse beeinflussen könnten. Um auf Abweichungen von HWE zu testen, werden die beobachteten Genotypfrequenzen mit den erwarteten Genotypfrequenzen unter HWE unter Verwendung eines statistischen Tests verglichen, wie z. B. des Chi-Quadrat-Tests oder des Fishers exakten Tests. Der Test wird typischerweise für jede genetische Variante (z. B. Einzelnukleotid-Polymorphismus oder SNP) in der Kontrollgruppe durchgeführt. Die Nullhypothese ist, dass die Genotypfrequenzen HWE folgen.

Hier ist die Chi-Quadrat-Teststatistik für HWE im LaTeX-Format:

$$\chi^2 = \frac{(O_{AA} - E_{AA})^2}{E_{AA}} + \frac{(O_{Aa} - E_{Aa})^2}{E_{Aa}} + \frac{(O_{aa} - E_{aa})^2}{E_{aa}}$$

wo $$O_{ij}$$ und $$E_{ij}$$ die beobachteten und erwarteten Zählungen des Genotyps $$ij$$ (AA, Aa oder aa) darstellen.

Wenn der _p-Wert_ für den HWE-Test unterhalb einer vordefinierten Schwelle (z. B. 0,001) liegt, kann die genetische Variante von der weiteren Analyse in der GWAS ausgeschlossen werden, da dies auf Genotypisierungsfehler oder andere Probleme hinweisen könnte, die zu irreführenden Assoziationen mit dem Phänotyp von Interesse führen könnten.

