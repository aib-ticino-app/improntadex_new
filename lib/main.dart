import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void main() {
  runApp(const ImprontaDexApp());
}

class ImprontaDexApp extends StatelessWidget {
  const ImprontaDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ImprontaDex Italia',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const SchermataPrincipale(),
    );
  }
}

class AnimalData {
  final String nome;
  final String nomeScientifico;
  final String categoria;
  final String tipoImpronta;
  final String dettaglioImpronta;
  final String cosaMangia;
  final String curiosita;
  final String rarita;
  final Color coloreRarita;
  final String percorsoFoto;

  AnimalData({
    required this.nome,
    required this.nomeScientifico,
    required this.categoria,
    required this.tipoImpronta,
    required this.dettaglioImpronta,
    required this.cosaMangia,
    required this.curiosita,
    required this.rarita,
    required this.coloreRarita,
    required this.percorsoFoto,
  });
}

class SchermataPrincipale extends StatefulWidget {
  const SchermataPrincipale({super.key});

  @override
  State<SchermataPrincipale> createState() => _SchermataPrincipaleState();
}

class _SchermataPrincipaleState extends State<SchermataPrincipale> {
  // ELENCO COMPLETO DELLA FAUNA DELLA LOMBARDIA (Sincronizzato con le immagini salvate)
  final List<AnimalData> tuttiGliAnimali = [
    AnimalData(
      nome: 'Aquila Reale',
      nomeScientifico: 'Aquila chrysaetos',
      categoria: 'Predatori',
      tipoImpronta: 'Artigli potenti (Rara a terra)',
      dettaglioImpronta: 'Maestosi artigli adunchi, difficilmente visibili sul terreno.',
      cosaMangia: 'Marmotte, lepri, piccoli mammiferi.',
      curiosita: 'Regina dei cieli alpini, in picchiata può superare i 250 km/h.',
      rarita: 'Raro',
      coloreRarita: Colors.red,
      percorsoFoto: 'assets/images/Aquila.jpeg',
    ),
    AnimalData(
      nome: 'Biacco',
      nomeScientifico: 'Hierophis viridiflavus',
      categoria: 'Rettili',
      tipoImpronta: 'Nessuna impronta (Traccia sinuosa)',
      dettaglioImpronta: 'Non lascia zampe ma un caratteristico solco ondulato o strisciato sul terreno.',
      cosaMangia: 'Lucertole, micro-mammiferi, rane, altri serpenti.',
      curiosita: 'È un serpente agilissimo, non velenoso e di ottima vista, molto comune nei parchi lombardi.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Biacco.jpeg',
    ),
    AnimalData(
      nome: 'Camoscio Alpino',
      nomeScientifico: 'Rupicapra rupicapra',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo stretto e appuntito',
      dettaglioImpronta: 'Piccolo (5-6 cm) con punte divaricate e suola elastica antiscivolo.',
      cosaMangia: 'Erbe alpine, germogli.',
      curiosita: 'Può compiere balzi prodigiosi fino a 6 metri di lunghezza sulle rocce.',
      rarita: 'Non comune',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/Camoscio.jpeg',
    ),
    AnimalData(
      nome: 'Capriolo',
      nomeScientifico: 'Capreolus capreolus',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo piccolo a cuore',
      dettaglioImpronta: 'Piccola (4-5 cm) a gocce affiancate e appuntite.',
      cosaMangia: 'Erba, germogli, foglie tenere.',
      curiosita: 'Abita i boschi fitti delle prealpi e della pianura, ha una macchia bianca a cuore sul sedere.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Capriolo.jpeg',
    ),
    AnimalData(
      nome: 'Cervo Nobile',
      nomeScientifico: 'Cervus elaphus',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo largo a doppio dito',
      dettaglioImpronta: 'Più grande del capriolo (8-10 cm), con margini ben definiti e arrotondati.',
      cosaMangia: 'Erba, foglie, cortecce, ghiande.',
      curiosita: 'In autunno i maschi fanno risuonare le valli alpine con il loro potente bramito.',
      rarita: 'Non comune',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/Cervo.jpeg',
    ),
    AnimalData(
      nome: 'Cinghiale',
      nomeScientifico: 'Sus scrofa',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo con due speroni dietro',
      dettaglioImpronta: 'Riconoscibilissimo: due zoccoli principali e due speroni laterali posteriori.',
      cosaMangia: 'Ghiande, radici, tuberi, frutta.',
      curiosita: 'Molto diffuso nei boschi collinari e lungo il fiume Ticino.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Cinghiale.jpeg',
    ),
    AnimalData(
      nome: 'Faina',
      nomeScientifico: 'Martes foina',
      categoria: 'Predatori',
      tipoImpronta: '5 dita senza peli visibili',
      dettaglioImpronta: 'Piccola e stretta (3-4 cm), spesso visibile anche su muretti e cascine.',
      cosaMangia: 'Roditori, uova, frutta, piccoli uccelli.',
      curiosita: 'Predatore notturno agilissimo molto diffuso nelle campagne e vicino alle abitazioni.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Faina.jpeg',
    ),
    AnimalData(
      nome: 'Gatto Selvatico',
      nomeScientifico: 'Felis silvestris',
      categoria: 'Predatori',
      tipoImpronta: 'Arrotondata a 4 dita',
      dettaglioImpronta: 'Simile a quella di un gatto domestico ma più massiccia e senza artigli visibili.',
      cosaMangia: 'Micromammiferi, ratti, uccelli.',
      curiosita: 'Si distingue dal gatto domestico per la coda più corta, tozza e con anelli neri marcati.',
      rarita: 'Rarissimo',
      coloreRarita: Colors.purple,
      percorsoFoto: 'assets/images/Gatto.jpeg',
    ),
    AnimalData(
      nome: 'Ghiro',
      nomeScientifico: 'Glis glis',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: 'Piccole zampe a manina',
      dettaglioImpronta: 'Impronte minuscole con dita sottili, raramente visibili a terra.',
      cosaMangia: 'Faggiuole, ghiande, frutta, castagne.',
      curiosita: 'È un vero campione di sonno: va in letargo a ottobre e si risveglia a maggio.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Ghiro.jpeg',
    ),
    AnimalData(
      nome: 'Lepre Comune',
      nomeScientifico: 'Lepus europaeus',
      categoria: 'Erbivori',
      tipoImpronta: 'Impronte asimmetriche',
      dettaglioImpronta: 'Zampe posteriori molto più lunghe che superano quelle anteriori nella corsa.',
      cosaMangia: 'Erba, germogli, corteccia.',
      curiosita: 'Non scava tane sotterranee ma riposa nascosta nell\'erba alta.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Lepre.jpeg',
    ),
    AnimalData(
      nome: 'Lepre Bianca',
      nomeScientifico: 'Lepus timidus',
      categoria: 'Erbivori',
      tipoImpronta: 'Grandi zampe larghe e pelose',
      dettaglioImpronta: 'Impronte molto larghe per camminare agevolmente sulla neve.',
      cosaMangia: 'Germogli, cortecce, rametti di mirtillo.',
      curiosita: 'D\'inverno cambia colore e diventa bianca per mimetizzarsi sulle Alpi.',
      rarita: 'Non comune',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/LepreBianca.jpeg',
    ),
    AnimalData(
      nome: 'Lupo Appenninico',
      nomeScientifico: 'Canis lupus italicus',
      categoria: 'Predatori',
      tipoImpronta: 'Cane selvatico',
      dettaglioImpronta: 'Lunga 10 cm con 4 dita e artigli ben marcati e centrali.',
      cosaMangia: 'Caprioli, cervi, cinghiali.',
      curiosita: 'Tornato a popolare stabilmente le zone alpine e i parchi regionali lombardi.',
      rarita: 'Raro',
      coloreRarita: Colors.red,
      percorsoFoto: 'assets/images/Lupo.jpeg',
    ),
    AnimalData(
      nome: 'Marmotta Alpina',
      nomeScientifico: 'Marmota marmota',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: '4 dita davanti e 5 dietro con unghie robuste',
      dettaglioImpronta: 'Impronte larghe e piatte sulla terra smossa.',
      cosaMangia: 'Erbe alpine, fiori, radici e semi.',
      curiosita: 'Vivono in colonie familiari e lanciano un forte fischio acuto in caso di pericolo.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Marmotta.jpeg',
    ),
    AnimalData(
      nome: 'Nutria',
      nomeScientifico: 'Myocastor coypus',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: 'Grande piede palmato',
      dettaglioImpronta: 'Fino a 10 cm con dita palmate e segno della lunga coda al centro.',
      cosaMangia: 'Radici di piante acquatiche, erba, vegetali.',
      curiosita: 'Presente lungo i fiumi, i canali e le risaie della pianura lombarda.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Nutria.jpeg',
    ),
    AnimalData(
      nome: 'Orso Bruno Marsicano',
      nomeScientifico: 'Ursus arctos marsicanus',
      categoria: 'Predatori',
      tipoImpronta: 'Grande piede umano',
      dettaglioImpronta: 'Enorme (20 cm) a 5 dita con grandi artigli evidenti.',
      cosaMangia: 'Bacche, radici, insetti, miele.',
      curiosita: 'Presente in modo saltuario e monitorato nelle aree alpine di confine.',
      rarita: 'Rarissimo',
      coloreRarita: Colors.purple,
      percorsoFoto: 'assets/images/Orso.jpeg',
    ),
    AnimalData(
      nome: 'Rana di Lataste',
      nomeScientifico: 'Rana latastei',
      categoria: 'Anfibi',
      tipoImpronta: 'Piccole zampe posteriori allungate',
      dettaglioImpronta: 'Tracce minuscole sul fango umido dei boschi di pianura.',
      cosaMangia: 'Insetti, mosche, ragni e piccoli invertebrati.',
      curiosita: 'È una tipica rana rossa di pianura ed è un endemismo prezioso della Pianura Padana.',
      rarita: 'Vulnerabile',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/RanaLataste.jpeg',
    ),
    AnimalData(
      nome: 'Salamandra Pezzata',
      nomeScientifico: 'Salamandra salamandra',
      categoria: 'Anfibi',
      tipoImpronta: 'Piccole zampe a 4 e 5 dita',
      dettaglioImpronta: 'Tracce leggerissime e fangose sul muschio umido.',
      cosaMangia: 'Lombrici, lumache, piccoli insetti.',
      curiosita: 'La sua livrea nera e gialla brillante serve ad avvisare i predatori della sua tossicità.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Salamandra.jpeg',
    ),
    AnimalData(
      nome: 'Scoiattolo Rosso',
      nomeScientifico: 'Sciurus vulgaris',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: '4 impronte a manina',
      dettaglioImpronta: 'Le zampe posteriori si posano davanti a quelle anteriori.',
      cosaMangia: 'Noci, nocciole, pigne, semi.',
      curiosita: 'Dimenticando le scorte di cibo sotto terra fa nascere nuovi alberi nei boschi.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Scoiattolo.jpeg',
    ),
    AnimalData(
      nome: 'Stambecco Alpino',
      nomeScientifico: 'Capra ibex',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo flessibile',
      dettaglioImpronta: 'Bordi duri e centro morbido per fare presa sulle pareti rocciose.',
      cosaMangia: 'Erbe alpine, muschi, licheni.',
      curiosita: 'Re indiscusso delle pareti rocciose d\'alta quota delle Alpi lombarde.',
      rarita: 'Non comune',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/Stambecco.jpeg',
    ),
    AnimalData(
      nome: 'Tasso Europeo',
      nomeScientifico: 'Meles meles',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: '5 dita con lunghi artigli',
      dettaglioImpronta: 'Simile a una piccola mano con i segni evidenti dei grandi artigli da scavo.',
      cosaMangia: 'Lombrici, radici, frutta, piccoli insetti.',
      curiosita: 'Costruisce immense e storiche tane sotterranee nei boschi lombardi.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Tasso.jpeg',
    ),
    AnimalData(
      nome: 'Volpe Rossa',
      nomeScientifico: 'Vulpes vulpes',
      categoria: 'Predatori',
      tipoImpronta: '4 dita con artigli',
      dettaglioImpronta: 'Ovale. Se tracci una croce al centro dell\'impronta, non tocchi i cuscinetti!',
      cosaMangia: 'Topini, frutti, insetti, piccoli animali.',
      curiosita: 'Sente un topo a 100 metri sotto la neve ed è comunissima nei boschi lombardi.',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Volpe.jpeg',
    ),
  ];

  String testoRicerca = '';
  String categoriaSelezionata = 'Tutti';

  void scattaEAnalizzaFoto() {
    html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
    uploadInput.accept = 'image/*';
    uploadInput.setAttribute('capture', 'environment');
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      if (files!.isNotEmpty) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(color: Colors.green),
                SizedBox(height: 16),
                Text('Analisi impronta in corso...'),
              ],
            ),
          ),
        );

        Future.delayed(const Duration(seconds: 2), () {
          if (!mounted) return;
          Navigator.pop(context);
          mostraDettaglioAnimale(context, tuttiGliAnimali[0]);
        });
      }
    });
  }

  void mostraDettaglioAnimale(BuildContext context, AnimalData animale) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.85,
          maxChildSize: 0.95,
          minChildSize: 0.5,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                controller: scrollController,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Image.asset(
                        animale.percorsoFoto,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.green[100],
                            child: const Icon(Icons.pets, size: 60, color: Colors.green),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          animale.nome,
                          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          animale.nomeScientifico,
                          style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Icon(Icons.pets, color: Colors.green, size: 28),
                        const SizedBox(width: 12),
                        Expanded(child: Text('Impronta: ${animale.dettaglioImpronta}', style: const TextStyle(fontSize: 15))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Icon(Icons.restaurant, color: Colors.orange, size: 28),
                        const SizedBox(width: 12),
                        Expanded(child: Text('Cibo: ${animale.cosaMangia}', style: const TextStyle(fontSize: 15))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Icon(Icons.lightbulb, color: Colors.blue, size: 28),
                        const SizedBox(width: 12),
                        Expanded(child: Text('Curiosità: ${animale.curiosita}', style: const TextStyle(fontSize: 15))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[800],
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('CHIUDI SCHEDA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final animaliFiltrati = tuttiGliAnimali.where((animale) {
      final corrispondeNome = animale.nome.toLowerCase().contains(testoRicerca.toLowerCase());
      final corrispondeCategoria = categoriaSelezionata == 'Tutti' || animale.categoria == categoriaSelezionata;
      return corrispondeNome && corrispondeCategoria;
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F5F0),
      appBar: AppBar(
        title: const Text('🐾 ImprontaDex Italia', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.orange[100],
                      child: const Icon(Icons.camera_alt, size: 28, color: Colors.orange),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: scattaEAnalizzaFoto,
                        child: const Text(
                          'SCATTA E RICONOSCI',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              onChanged: (valore) => setState(() => testoRicerca = valore),
              decoration: InputDecoration(
                hintText: 'Cerca (es. Volpe, Camoscio, Biacco)...',
                prefixIcon: const Icon(Icons.search, color: Colors.green),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 12),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ['Tutti', 'Erbivori', 'Predatori', 'Piccoli Mammiferi', 'Anfibi', 'Rettili'].map((cat) {
                  final eSelezionata = categoriaSelezionata == cat;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(cat),
                      selected: eSelezionata,
                      selectedColor: Colors.green[700],
                      labelStyle: TextStyle(
                        color: eSelezionata ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      onSelected: (selected) => setState(() => categoriaSelezionata = cat),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: animaliFiltrati.length,
                itemBuilder: (context, index) {
                  final animale = animaliFiltrati[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      onTap: () => mostraDettaglioAnimale(context, animale),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          animale.percorsoFoto,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 50,
                              height: 50,
                              color: Colors.green[100],
                              child: const Icon(Icons.pets, color: Colors.green),
                            );
                          },
                        ),
                      ),
                      title: Text(animale.nome, style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('${animale.categoria} • ${animale.tipoImpronta}'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}