import 'package:exercise_map/models/exercise.dart';
import 'package:exercise_map/models/question.dart';

class ExerciseData {
  static List<Exercise> getAllExercises() {
    return [
      // Day 1 - Adjectives
      Exercise(
        id: 'adj_compound',
        title: 'Compound Adjectives',
        description: 'Practice using compound adjectives correctly in sentences.',
        day: 1,
        totalQuestions: 3,
        questions: [
          Question(
            id: 'adj_comp_1',
            text: 'The company implemented a _ security protocol for their data centers.',
            options: ['cutting-edge', 'cutting edge', 'edge-cutting', 'edge cutting'],
            correctAnswer: 'cutting-edge',
            explanation: 'Compound adjectives are hyphenated when they come before the noun they modify.',
          ),
          Question(
            id: 'adj_comp_2',
            text: 'The physicist presented a _ theory about quantum entanglement.',
            options: ['ground breaking', 'ground-breaking', 'breaking-ground', 'break-grounding'],
            correctAnswer: 'ground-breaking',
            explanation: 'When two words work together as one adjective before a noun, they are hyphenated.',
          ),
          Question(
            id: 'adj_comp_3',
            text: 'The expedition required _ equipment for the harsh Antarctic conditions.',
            options: ['military grade', 'military-grade', 'grade-military', 'grade military'],
            correctAnswer: 'military-grade',
            explanation: 'Compound adjectives are hyphenated when they come before the noun they modify.',
          ),
        ],
      ),
      Exercise(
        id: 'adj_participle',
        title: 'Participle Adjectives',
        description: 'Learn to use participle forms as adjectives.',
        day: 1,
        totalQuestions: 2,
        questions: [
          Question(
            id: 'adj_part_1',
            text: 'The _ evidence presented at the trial changed the jury\'s perspective.',
            options: ['overwhelming', 'overwhelmed', 'overwhelm', 'overwhelms'],
            correctAnswer: 'overwhelming',
            explanation: 'Present participles (-ing form) can be used as adjectives to describe the effect something has.',
          ),
          Question(
            id: 'adj_part_2',
            text: 'The archaeologists discovered a _ manuscript in the ancient temple.',
            options: ['fascinated', 'fascinating', 'fascinate', 'fascinates'],
            correctAnswer: 'fascinating',
            explanation: 'Present participles (-ing form) are used to describe things that cause a feeling or effect.',
          ),
        ],
      ),
      Exercise(
        id: 'adj_order',
        title: 'Order of Adjectives',
        description: 'Practice the correct order of adjectives in sentences.',
        day: 1,
        totalQuestions: 2,
        questions: [
          Question(
            id: 'adj_order_1',
            text: 'She purchased a _ briefcase for her new job.',
            options: ['leather expensive Italian', 'Italian expensive leather', 'expensive Italian leather', 'expensive leather Italian'],
            correctAnswer: 'expensive Italian leather',
            explanation: 'When using multiple adjectives, the order of adjectives is: Quantity, Opinion, Size, Age, Shape, Color, Proper adjective, Material, Purpose.',
          ),
          Question(
            id: 'adj_order_2',
            text: 'The museum displayed a _ artifact from the Ming Dynasty.',
            options: ['porcelain ancient valuable', 'valuable ancient porcelain', 'ancient valuable porcelain', 'porcelain valuable ancient'],
            correctAnswer: 'valuable ancient porcelain',
            explanation: 'When describing an object, the order should be: Opinion, Size, Age, Shape, Color, Proper adjective, Material.',
          ),
        ],
      ),
      
      // Day 2 - Adverbs
      Exercise(
        id: 'adv_manner',
        title: 'Adverbs of Manner',
        description: 'Practice using adverbs to describe how actions are performed.',
        day: 2,
        totalQuestions: 2,
        questions: [
          Question(
            id: 'adv_man_1',
            text: 'The soprano _ executed the challenging aria, earning a standing ovation.',
            options: ['flawless', 'flawlessly', 'flawlessness', 'flawlessing'],
            correctAnswer: 'flawlessly',
            explanation: 'Adverbs of manner describe how an action is performed. They often end in -ly.',
          ),
          Question(
            id: 'adv_man_2',
            text: 'The quantum computer _ processed the complex algorithms, surpassing traditional computing methods.',
            options: ['efficient', 'efficiency', 'efficiently', 'efficienting'],
            correctAnswer: 'efficiently',
            explanation: 'Adverbs describe how the action (processed) was performed.',
          ),
        ],
      ),
      Exercise(
        id: 'adv_comparative',
        title: 'Comparative and Superlative Adverbs',
        description: 'Learn the usage of comparative and superlative adverbs.',
        day: 2,
        totalQuestions: 3,
        questions: [
          Question(
            id: 'adv_comp_1',
            text: 'Among all the competitors, Sarah completed the triathlon _ than expected.',
            options: ['more impressively', 'more impressive', 'most impressively', 'impressive'],
            correctAnswer: 'more impressively',
            explanation: 'Comparative adverbs are used to compare actions.',
          ),
          Question(
            id: 'adv_comp_2',
            text: 'The financial analysis was presented _ of all the quarterly reports.',
            options: ['more comprehensively', 'most comprehensively', 'more comprehensive', 'comprehensive'],
            correctAnswer: 'most comprehensively',
            explanation: 'Superlative adverbs are used to show the highest degree of comparison.',
          ),
          Question(
            id: 'adv_comp_3',
            text: 'The AI system performed _ in the latest benchmarking tests.',
            options: ['more sophisticated', 'sophisticatedly', 'most sophisticatedly', 'sophisticated'],
            correctAnswer: 'sophisticatedly',
            explanation: 'Adverbs describe the manner of performing actions, and superlative forms show the highest level.',
          ),
        ],
      ),
      
      // Day 3 - Conjunctions
      Exercise(
        id: 'conj_correlative',
        title: 'Correlative Conjunctions',
        description: 'Practice using correlative conjunctions in sentences.',
        day: 3,
        totalQuestions: 2,
        questions: [
          Question(
            id: 'conj_cor_1',
            text: '_ did the research paper receive acclaim for its methodology, _ it was praised for its innovative conclusions.',
            options: ['Not only / but also', 'Either / or', 'Neither / nor', 'Both / and'],
            correctAnswer: 'Not only / but also',
            explanation: 'Correlative conjunctions are pairs of conjunctions that work together in a sentence.',
          ),
          Question(
            id: 'conj_cor_2',
            text: '_ the quantum theory _ the string theory could fully explain the observed phenomena.',
            options: ['Both / and', 'Either / or', 'Neither / nor', 'Not only / but also'],
            correctAnswer: 'Neither / nor',
            explanation: 'This correlative pair is used to express a negative condition.',
          ),
        ],
      ),
      Exercise(
        id: 'conj_subordinating',
        title: 'Subordinating Conjunctions',
        description: 'Practice using subordinating conjunctions in complex sentences.',
        day: 3,
        totalQuestions: 2,
        questions: [
          Question(
            id: 'conj_sub_1',
            text: 'The experiment yielded unexpected results _ the researchers followed the protocol precisely.',
            options: ['although', 'because', 'unless', 'if'],
            correctAnswer: 'although',
            explanation: 'Subordinating conjunctions introduce a dependent clause.',
          ),
          Question(
            id: 'conj_sub_2',
            text: 'The archaeological team will continue excavating _ they find evidence of the ancient civilization.',
            options: ['unless', 'until', 'while', 'whereas'],
            correctAnswer: 'until',
            explanation: 'This subordinating conjunction indicates a condition that must be met.',
          ),
        ],
      ),
      // Day 4 - Prefix & Suffix
      Exercise(
        id: 'prefix_suffix',
        title: 'Prefix & Suffix',
        description: 'Practice using prefixes and suffixes in academic contexts.',
        day: 4,
        totalQuestions: 4,
        questions: [
          Question(
            id: 'prefix_1',
            text: 'The researcher\'s _ analysis of the data revealed several anomalies.',
            options: ['meta', 'pseudo', 'anti', 'poly'],
            correctAnswer: 'meta',
            explanation: 'Meta is a prefix used in academic contexts to refer to a higher level or abstraction.',
          ),
          Question(
            id: 'prefix_2',
            text: 'The team developed a _ solution that addressed multiple problems simultaneously.',
            options: ['mono', 'uni', 'multi', 'bi'],
            correctAnswer: 'multi',
            explanation: 'Multi- refers to something involving multiple elements or parts.',
          ),
          Question(
            id: 'suffix_1',
            text: 'The _ of quantum mechanics requires extensive mathematical knowledge.',
            options: ['complexity', 'complexify', 'complexification', 'complexize'],
            correctAnswer: 'complexification',
            explanation: 'Complexification refers to making something more complex in technical contexts.',
          ),
          Question(
            id: 'suffix_2',
            text: 'The artificial intelligence showed remarkable _ in problem-solving tasks.',
            options: ['adaptable', 'adaptability', 'adaptation', 'adaptive'],
            correctAnswer: 'adaptability',
            explanation: 'Adaptability refers to the ability to adjust to new conditions, crucial for AI systems.',
          ),
        ],
      ),
      
      // Day 5 - Sentence Structure
      Exercise(
        id: 'sentence_structure',
        title: 'Sentence Structure',
        description: 'Practice understanding and forming correct sentence structures.',
        day: 5,
        totalQuestions: 4,
        questions: [
          Question(
            id: 'structure_1',
            text: '_ the revolutionary technology that the potential for clean energy became apparent.',
            options: ['Not until the scientists developed', 'Until the scientists developed', 'The scientists developed until', 'Developed the scientists until'],
            correctAnswer: 'Not until the scientists developed',
            explanation: 'Inversion is used with "Not until" to emphasize the timeline.',
          ),
          Question(
            id: 'structure_2',
            text: '_ the complex theories of quantum physics lies a simple mathematical principle.',
            options: ['Beneath', 'Under', 'Below', 'Underneath of'],
            correctAnswer: 'Beneath',
            explanation: 'Beneath is the most formal preposition used for this structure.',
          ),
          Question(
            id: 'parallel_1',
            text: 'The research involved _ data, analyzing statistical patterns, and presenting conclusions.',
            options: ['to collect', 'collecting', 'collection of', 'collected'],
            correctAnswer: 'collecting',
            explanation: 'The gerund "collecting" keeps the sentence structure parallel with other verbs.',
          ),
          Question(
            id: 'parallel_2',
            text: 'The CEO\'s strategy was _, innovative, and transformative.',
            options: ['being bold', 'to be bold', 'bold', 'boldly'],
            correctAnswer: 'bold',
            explanation: 'The adjective "bold" is used to maintain parallel structure.',
          ),
        ],
      ),
      
      // Day 6 - Verbs
      Exercise(
        id: 'verbs',
        title: 'Verbs',
        description: 'Practice using verbs in different tenses and moods.',
        day: 6,
        totalQuestions: 6,
        questions: [
          Question(
            id: 'verb_1',
            text: 'By next year, the scientists _ on this project for a decade.',
            options: ['will have been working', 'will be working', 'would have been working', 'would be working'],
            correctAnswer: 'will have been working',
            explanation: 'The perfect progressive tense is used to describe an ongoing action that will be completed in the future.',
          ),
          Question(
            id: 'verb_2',
            text: 'The AI system _ increasingly complex patterns before the anomaly was detected.',
            options: ['had been recognizing', 'has been recognizing', 'was recognizing', 'is recognizing'],
            correctAnswer: 'had been recognizing',
            explanation: 'The past perfect progressive tense is used for actions that were ongoing before a certain point in the past.',
          ),
          Question(
            id: 'verb_3',
            text: 'The experiment _ different results if the temperature had been controlled more precisely.',
            options: ['might yield', 'might have yielded', 'must yield', 'must have yielded'],
            correctAnswer: 'might have yielded',
            explanation: 'The modal verb "might" is used in the past perfect form to suggest a hypothetical outcome.',
          ),
          Question(
            id: 'verb_4',
            text: 'The research team _ the deadline, but the equipment malfunction caused delays.',
            options: ['could meet', 'could have met', 'should meet', 'should have met'],
            correctAnswer: 'could have met',
            explanation: 'The modal verb "could" is used with the perfect form to talk about a past possibility that didn\'t happen.',
          ),
          Question(
            id: 'verb_5',
            text: 'The ethics committee recommended that the study _ immediately.',
            options: ['be terminated', 'is terminated', 'was terminated', 'were terminated'],
            correctAnswer: 'be terminated',
            explanation: 'The subjunctive mood is used here to express a suggestion or recommendation.',
          ),
          Question(
            id: 'verb_6',
            text: 'The professor suggested that each student _ their own research methodology.',
            options: ['develops', 'developed', 'develop', 'has developed'],
            correctAnswer: 'develop',
            explanation: 'The subjunctive mood is used after verbs like "suggest" to express recommendations or wishes.',
          ),
        ],
      ),
     
    ];
  }
}
