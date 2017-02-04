export const Goals = {
  'standard-gf': {
    type: 'standard',
    description: 'Find a girlfriend and take her on a romantic date during Christmas',
    id: 'standard-gf'
  },
  'sae-bonus': {
    type: 'bonus',
    description: 'Dress up (cosplay even) and end your date with puri-kura',
    id: 'sae-bonus'
  },
  'ai-bonus': {
    type: 'bonus',
    description: 'Do something physical for your date; e.g. to rock climbing, skinny dipping, surfing, skiing, etc.',
    id: 'ai-bonus'
  },
  'haruka-bonus': {
    type: 'bonus',
    description: 'Take her on a fancy vacation away from home, and peak on her when she is showering / bathing',
    id: 'haruka-bonus'
  }
}
export const Penalties = {
  'tfwnogf': {
    type: 'standard',
    description: 'Find a desolate park bench, sit there, and contemplate being lonely for the rest of your life.',
    id: 'tfwnogf'
  },
  'sad-selfie': {
    type: 'bonus',
    description: 'Take a picture of yourself in your most miserable state and upload that to the internet',
    id: 'sad-selfie'
  },
  'sweat-and-tears': {
    type: 'bonus',
    description: 'You must perform an intense cardio workout by yourself in an attempt to run away from the crushing melancholy of a life alone.',
    id: 'sweat-and-tears'
  },
  'try-harder-no-regrets': {
    type: 'bonus',
    description: 'Find your Haruka and, even if she has no idea who you are or has already rejected you, confess to her you love her and brace yourself for the worst awkward cringe session of your life.'
  }
}
export const Challenges = {
  sae: {
    id: 'sae',
    goals: ['standard-gf', 'sae-bonus'],
    penalty: ['tfwnogf', 'sad-selfie'],
    why: 'To find a girl with whom you two can mutually draw out the love for life and the courage to enjoy yourselves within each other.',
    conditions: [
      'Find a girlfriend before December 25th',
      'If you two break up violently or maliciously, you are disqualifed from this and future Amagami Challenges'
    ],
    suggestions: [
      'Take a community college course in a field like literature, art, or a foreign language.',
      'Make some friends and attend their parties.',
      'Volunteer at some local animal shelter, red cross, or other nonprofit organization'
    ],
    img: 'assets/images/sae.jpg'
  },
  ai: {
    id: 'ai',
    goals: ['standard-gf', 'ai-bonus'],
    penalty: ['tfwnogf', 'sweat-and-tears'],
    why: 'To find a fit girl with whom you will enjoy a long, healthy, and endorphin-powered life together.',
    conditions: [
      'Find a girlfriend before December 25th',
      'If you two break up violently or maliciously, you are disqualifed from this and future Amagami Challenges'
    ],
    suggestions: [
      'Take a PE class at your community college.'
      'Join a hiking, mountain biking, or camping club / meetup.',
      'Commit yourself to a physical challenge such as running a marathon or doing the iron-man'
    ],
    img: 'assets/images/ai.jpg'
  },
  haruka: {
    id: 'haruka',
    goals: ['standard-gf', 'haruka-bonus'],
    penalty: ['tfwnogf', 'try-harder-no-regrets'],
    why: 'To conquer the base insecurities in your own personality and fall in love with a girl far out of your league.',
    conditions: [
      'Find a girlfriend before December 25th',
      'If you two break up violently or maliciously, you are disqualifed from this and future Amagami Challenges'
    ],
    suggestions: [
      'Attend a conference, concert, or other public gathering and push yourself to speak to the presenters / performers.',
      'Take a graduate-level class at a local university',
      'Join a country club, start-up accelerator, or other hype-centered institution'
    ],
    img: 'assets/images/haruka.jpg'
  }
}

export const Taglines = {
  haruka: "a combination of beauty and brains",
  rihoko: "the plain and simple childhood friend",
  tsukasa: "discipline, hard work, determination mixed with ambition",
  sae: "shy, feminine, and well-bred",
  ai: "athletic with pride in her body",
  kaoru: "fun, rough, sarcastic, and a bit of a tomboy"
}

export const Points = {
  haruka: [
    "popular, beautiful, and seemingly always at the center of attention",
    "because of her seeming perfection, she often invokes the jealousy or fear of others",
    "there are times in the night when she feels no one truly loves her",
    "consequently, she loves little animals and other innocent things that love her unconditionally"
  ],
  kaoru: [
    "tomboyish, fun, and a little wild",
    "perhaps also sarcastic and witty",
    "but she has her insecurities and possibly a short temper",
    "to some degree, she is afraid of intimacy"
  ],
  tsukasa: [
    "seemingly friendly, earnest, and pleasant",
    "she is ambitious and may even secretly look down on others",
    "she is driven by hard work and discipline and possibly a touch of bitterness",
    "she doesn't want the approval of her peers, but she does want the respect of society"
  ],
  sae: [
    "she is shy, demure, and cute",
    "perhaps she isn't as interesting as other girls",
    "not obsessed with ambition or perfection, simply being happy is enough",
    "she possibly reads a lot and has an imagination"
  ],
  ai: [
    "fit, energetic, and charged",
    "but perhaps with the usual athlete's insecurities of her body",
    "lives according to a good exercise routine",
    "her body is a temple for her mind"
  ],
  rihoko: [
    "the average girl, perhaps neither brilliant nor dazzling",
    "she is comfortable with herself though she still wishes to improve",
    "she is a girl with roots, someone with a stable home and family",
    "perhaps she is traditional and religious in her life choices"
  ]
}
  