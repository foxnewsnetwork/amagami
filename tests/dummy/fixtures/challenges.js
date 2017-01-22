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
  }
}
export default {
  sae: {
    id: 'sae',
    goal: 'Find a girlfriend and around Christmas, take her on a date that includes Puri-kura picture taking.',
    penalty: 'Find a desolate park bench, take a picture of yourself being alone on Christmas, then upload that to the internet.',
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
  }
}