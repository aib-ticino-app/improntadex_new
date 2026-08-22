import 'package:flutter/material.dart';

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
  // ELENCO CON MAIUSCOLE ESATTE PER I FILE ASSETS
  final List<AnimalData> tuttiGliAnimali = [
    AnimalData(
      nome: 'Volpe Rossa',
      nomeScientifico: 'Vulpes vulpes',
      categoria: 'Predatori',
      tipoImpronta: '4 dita con artigli',
      dettaglioImpronta: 'Ovale. Se tracci una croce al centro dell\'impronta, non tocchi i cuscinetti!',
      cosaMangia: 'Topini, frutti, insetti.',
      curiosita: 'Sente un topo a 100 metri sotto la neve!',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Volpe.jpeg',
    ),
    AnimalData(
      nome: 'Lupo Appenninico',
      nomeScientifico: 'Canis lupus italicus',
      categoria: 'Predatori',
      tipoImpronta: 'Cane selvatico',
      dettaglioImpronta: 'Lunga 10 cm con 4 dita e artigli ben marcati.',
      cosaMangia: 'Caprioli, cervi, cinghiali.',
      curiosita: 'I lupi camminano in fila mettendo i piedi nelle impronte del capobranco!',
      rarita: 'Raro',
      coloreRarita: Colors.red,
      percorsoFoto: 'assets/images/Lupo.jpeg',
    ),
    AnimalData(
      nome: 'Orso Bruno Marsicano',
      nomeScientifico: 'Ursus arctos marsicanus',
      categoria: 'Predatori',
      tipoImpronta: 'Grande piede umano',
      dettaglioImpronta: 'Enorme (20 cm) a 5 dita con grandi artigli.',
      cosaMangia: 'Bacche, radici, insetti, miele.',
      curiosita: 'Va in letargo e dorme per mesi!',
      rarita: 'Rarissimo',
      coloreRarita: Colors.purple,
      percorsoFoto: 'assets/images/Orso.jpeg',
    ),
    AnimalData(
      nome: 'Capriolo',
      nomeScientifico: 'Capreolus capreolus',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo piccolo a cuore',
      dettaglioImpronta: 'Piccola (4-5 cm) a gocce affiancate.',
      cosaMangia: 'Erba, germogli.',
      curiosita: 'Ha una macchia bianca sul sedere a forma di cuore!',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Capriolo.jpeg',
    ),
    AnimalData(
      nome: 'Cinghiale',
      nomeScientifico: 'Sus scrofa',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo con due speroni dietro',
      dettaglioImpronta: 'Riconoscibilissimo: due zoccoli principali e due speroni sporgenti.',
      cosaMangia: 'Ghiande, radici, tuberi.',
      curiosita: 'I cuccioli sono a strisce per mimetizzarsi!',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Cinghiale.jpeg',
    ),
    AnimalData(
      nome: 'Stambecco',
      nomeScientifico: 'Capra ibex',
      categoria: 'Erbivori',
      tipoImpronta: 'Zoccolo flessibile',
      dettaglioImpronta: 'Bordi duri e centro morbido per aderire alle rocce.',
      cosaMangia: 'Erbe alpine, muschi.',
      curiosita: 'Si arrampica su dighe verticali per leccare i sali!',
      rarita: 'Non comune',
      coloreRarita: Colors.orange,
      percorsoFoto: 'assets/images/Stambecco.jpeg',
    ),
    AnimalData(
      nome: 'Scoiattolo Rosso',
      nomeScientifico: 'Sciurus vulgaris',
      categoria: 'Piccoli Mammiferi',
      tipoImpronta: '4 impronte a manina',
      dettaglioImpronta: 'Le zampe posteriori si posano davanti alle anteriori.',
      cosaMangia: 'Noci, nocciole, pigne.',
      curiosita: 'Dimenticando le noci fa nascere nuovi alberi!',
      rarita: 'Comune',
      coloreRarita: Colors.green,
      percorsoFoto: 'assets/images/Scoiattolo.jpeg',
    ),
  ];

  String testoRicerca = '';
  String categoriaSelezionata = 'Tutti';

  void scattaFoto() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Icons.camera_alt, color: Colors.orange),
            SizedBox(width: 10),
            Text('Fotocamera Attiva'),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.center_focus_strong, size: 80, color: Colors.green),
            SizedBox(height: 16),
            Text(
              'Inquadra l\'impronta sul terreno e tieni il telefono ben fermo!',
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ANNULLA'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              Navigator.pop(context);
              mostraDettaglioAnimale(context, tuttiGliAnimali[0]);
            },
            child: const Text('ANALIZZA IMPRONTA', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
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
                        onPressed: scattaFoto,
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
                hintText: 'Cerca (es. Volpe, Stambecco, Tasso)...',
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
                children: ['Tutti', 'Erbivori', 'Predatori', 'Piccoli Mammiferi'].map((cat) {
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