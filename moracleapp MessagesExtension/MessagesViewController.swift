//
//  MessagesViewController.swift
//  moracleapp MessagesExtension
//
//  Created by Celso Eduardo Muza Ferreira on 01/02/22.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    @IBOutlet weak var carta: UIImageView!
    @IBOutlet weak var titulodacarta: UILabel!
    @IBOutlet weak var subtitulodacarta: UILabel!
    @IBOutlet weak var orientação: UITextView!
    @IBOutlet weak var wallpaper: UIImageView!
    @IBOutlet weak var print: UIButton!
    
    var indiceSelecionado : Int = -1
    
    /// manter a ordem das orientações, suas respectivas cartas, titulos e subtitulos.
    
    let orientações = ["A Amável governa a plenitude, versada em glamour, beleza e maternidade, é ela quem acolhe e nos mostra que o caminho do amor, pode ser um caminho cercado de pessoas gentis mas que também, pode vir a se tornar, em algum momento da sua vida, uma peregrinação solitária. Mas o amor resiste nos solos mais áridos, nos poços mais secos e nos corações mas revoltos. Mude a perspectiva, diria a rainha das luas, o amor sempre está logo ali, entre a ponta do seu nariz, bem no meio de seus olhos.","O Sábio construiu seu reinado de forma crescente, a lua que o governa é plena e sempre o guia na escuridão que a noite pode trazer. Existem adversidades, desafios e obstáculos que acreditamos não sermos capazes de supera-los, mas de certa forma, ainda que cansados e entregues a exaustão, encontramos impulsos em nossas emoções e buscamos forças para supera-las. Mantenha os pés no chão, o rei das luas te diria, mas não se esqueça da leveza que mora em seu coração que sempre lhe fará voar e alcançar novos horizontes.","Ardiloso como seus feitiços e sedutor como sua mãe-lua, O Feiticeiro espreita as sombras e as expulsa de corações perdidos na névoa densa de suas próprias dúvidas e angústias. Mestre da magia do amor, aquela que é vista em todos os seres e coisas, o feiticeiro ressurgiu de dor de um coração partido pelos malefícios da dúvida, ressuscitou como uma criatura livre e bela, que não teme mais a escuridão. Suas aflições, diria o feiticeiro das luas, se curvarão diante do amor que só você é capaz de prover a si mesmo.","A Sereia canta e encanta seus súditos e orientados, é ela quem guia os viajantes deste mundo por entre seus próprios caminhos e obstáculos. Como um farol, ilumina a vida dos seres que possuem bondade e amor em seu corações, evidenciando e revelando a eles mesmos, o poder e a beleza que se esconde em seu interior. Salte, diria a rainha das marés, o universo te apoiará.","O Sonhador sobreviveu as aguas revoltas da indecisão, por mais que seus domínios sempre fossem as águas, foi ele quem aceitou a profundidade azulada da imensidão do mar de emoções dos outros, e de si mesmo. agora ele governa com afeto, sinceridade e transformação. Agora ele se encontra construindo seu próprio império de aceitação e amor. você precisa mergulhar, diria o rei das marés, só dessa forma você se conhecerá. Não existe perdas quando o propósito é se encontrar, só existem transformações.","A Curandeira curou a si mesma da dor, do desespero e da incerteza dos dias que virão. Se resguardou na fé de acreditar em si mesma e alcançou novos horizontes cheio de beleza e amor. Agora, ela leva essa cura aos que acreditam que necessitam de revitalização e que a chave para se encontrar se encontra na saúde da mente e das emoções. Tudo oque você viveu, diria ela, te preparou para estar presente nesse momento. Não permita que seu caminho seja desviado.","A Amazona é temperamental e intensa, dona da razão de se lutar pelas coisas que valem a pena, a amazona não se dobra para a perda mas sim, conquista a vitória. Versada em intelecto e astúcia, é ela a mais inteligente do reino das estrelas, levando fé e esperança, cultivando a lembrança de que nada é tirado quando é conquistado. Respire fundo, a guerreira te diria, você vencerá se a verdade do seu coração for ouvida.","O Protetor é experiente e acolhe aqueles que se sintonizam com os seres que tiveram uma jornada semelhante a dele, os protegendo de sofrimentos e insistências desnecessárias que não foram comunicadas ou orientados quando ele mesmo as necessitava. Docilmente, ele se encarrega de dar direção, abrindo no mundo oportunidades para que você se encontre nele. Você está aqui, diria o protetor, e que bom que está!","A Estrela é o próprio sinônimo do astro. Brilhante e gentil, guiando aqueles que a necessitam pela escuridão da noite densa, refletindo, pensando, respirando e se conectando com aquilo que representa nossa essência, doque nos move, do que nos faz bem. É ela quem incentiva o encontro das respostas nos outros seres e coisas que nos conectam a nossa espiritualidade e fé. Temos o privilégio de sermos amparados pela nossa fé, diria a estrela, independente dos caminhos e rumos que decidirmos trilhar, por mais difíceis que os dias possam ser, sempre é bom lembrar que nós nunca estamos sozinhos.","O Adeus pede que você perdoe e permita ir e fluir através das memórias positivas e afetuosas que você ainda guarda dentro de si. Exteriorize suas emoções, cante ou escreva, mas permita que seus sentimentos possuam um destino, ou como esse mesmo arcano nos diz: deva haver um remetente, e principalmente, um destinatário.","A Dama da Noite encara suas ações e gargalha junto com você. É ela, que ao contrário de uma imperatriz, se torna uma mãe feroz que incentiva seus filhos a se defenderem de forma astuta aos ataques que vem sofrendo. Posicione-se! Diga em alto e bom som se preciso for, mas não se engane deixando de fazer oque você realmente quer.","O Coração Partido não representa a dor, mas sim o sentir. Entenda suas dores e ferimentos, e apenas os abrace. Não é preciso se preocupar em se curar, neste momento só é preciso se acolher e se amar, até que o amor volte a transbordar seu coração, e acredite, ele irá."]
    
    
    let cartas = ["Q1","K1","J1","Q2","K2","J2","Q3","K3","J3","um","dois","três"]
    
    
    let titulos = ["A Amável","O Sábio","O Feiticeiro","A Sereia","O Sonhador","A Curandeira","O Protetor","A Amazona","A Estrela","Ás das Luas","Ás das Marés","Ás das Estrelas"]
    
    
    let subtitulos = ["e o renascimento","e o conhecimento de vida","e a magia do coração","e a benevolência amorosa","e o oceano profundo","e a cura do ser","e o acolhimento dos perdidos","e a proteção do eu","e a fé","e a despedida","e a dama da noite","e o coração partido"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.wallpaper.contentMode = .scaleAspectFill
        self.carta.isHidden = true
        self.titulodacarta.isHidden = true
        self.subtitulodacarta.isHidden = true
        self.orientação.isHidden = true
        
    }
    override func becomeFirstResponder() -> Bool {
        return true
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let texto = randomiza()
            var componentes = URLComponents()
           /// let textoEnviado = URLQueryItem(name: "orientacao", value: String(texto))
            let indiceEnviado = URLQueryItem(name: "indice", value: String(indiceSelecionado))
            componentes.queryItems = [indiceEnviado]
            self.carta.isHidden = false
            self.titulodacarta.isHidden = false
            self.subtitulodacarta.isHidden = false
            self.orientação.isHidden = false
            let layout = MSMessageTemplateLayout()
            layout.image = carta.image
            let conversation = activeConversation
            let session = conversation?.selectedMessage?.session ?? MSSession()
            let messages = MSMessage(session: session)
            messages.layout = layout
            messages.url = componentes.url
            conversation?.insert(messages)
            requestPresentationStyle(.compact)
            
            
        }
    }

    func numero(vetor:[String])->Int{
        let num = Int.random(in: 0..<vetor.count)
        return num
    }
    func randomiza() -> String {
 
        let indices = [0 , 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        if let indiceAleatorio = indices.randomElement(){
            carta.image = UIImage(named: cartas[indiceAleatorio])
            titulodacarta.text = titulos[indiceAleatorio]
            subtitulodacarta.text = subtitulos[indiceAleatorio]
            orientação.text = orientações[indiceAleatorio]
            indiceSelecionado = indiceAleatorio
        }
        
    
        return orientação.text
        
        
    }
    
    func desenhaTela() {
        carta.image = UIImage(named: cartas[indiceSelecionado])
        titulodacarta.text = titulos[indiceSelecionado]
        subtitulodacarta.text = subtitulos[indiceSelecionado]
        orientação.text = orientações[indiceSelecionado]
    }

    
    
    //
    public func decodeURL(_ messageURL:URL){
            guard let urlComponents = NSURLComponents(url: messageURL, resolvingAgainstBaseURL: false), let queryItems = urlComponents.queryItems else { return }
        for item in queryItems {
            if item.name == "indice"{
                indiceSelecionado = Int(item.value ?? "0") ?? 0
                
            }
        }
        
    }
    // quando abre a aplicação
    override func willBecomeActive(with conversation: MSConversation) {
        if let messageURL = conversation.selectedMessage?.url {
            decodeURL(messageURL)
            desenhaTela()
        }
        
    }

    override func didResignActive(with conversation: MSConversation) {
        
    }
// quando receber a mensagem
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        
    }

    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        
    }

    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        
    }

    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        
    }

    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        
    }



}
