## USER

User.create(    
    first_name: "Rick",
    last_name: "Sanchez",
    username: "ricksanchez",
    password: "123",
    email: "rick@rick.com",
    dob: "12/1/1957"
)

## Static data

emotions = {
  sad: [
    'blue',
    'depressed',
    'down',
    'unhappy',
    'Embarrassed',
    'foolish',
    'humiliated',
    'self-conscious'
  ],
  anxious: ['worried', 'panicky', 'nervous', 'frightened'],
  hopeless: ['discouraged', 'pessimistic', 'despairing'],
  guilty: ['remorseful', 'bad', 'ashamed'],
  frustrated: ['stuck', 'thwarted', 'defeated'],
  worthless: ['inadequate', 'defective', 'incompetent'],
  angry: ['mad', 'resentful', 'annoyed', 'irritated', 'upset', 'furious'],
  lonely: ['unloved', 'unwanted', 'rejected', 'alone']
};

cd = {
  'All- or - Nothing Thinking (AON)':
    'You view things in absolute, black - and - white categories.',
  'Overgeneralization(OG)':
    "You view a negative event as a never- ending pattern of defeat: 'This always happens!'",
  'Mental Filter(MF)': 'You dwell on the negatives and ignore the positives',
  'Jumping to Conclusions(JC)':
    'You jump to conclusions not warranted by the facts.',
  'Mind- Reading(MR)': 'You assume that people are reacting negatively to you.',
  'Fortune- Telling(FT)': 'You predict that things will turn out badly.',
  'Labeling(LAB)':
    "Instead of saying, 'I made a mistake,' you say, 'I'm a jerk' or 'I'm a loser.'",
  'Magnification and Minimization(MM)':
    'You blow things out of proportion or shrink them.',
  'Emotional Reasoning(ER)':
    "You reason from your feelings: 'I feel like an idiot, so I must really be one.'",
  'Should Statements(SH)':
    "You use shoulds, shouldn'ts, musts, oughts, and have tos.",
  'Personalization/ Blame(BL)':
    'You find fault instead of solving the problem.',
  'Self- Blame(SB)':
    "You blame yourself for something you weren't entirely responsible for",
  'Other- Blame(OB)':
    'You blame others and overlook ways you contributed to the problem.'
}


## Emotions

emotions.each do |k,v|
    e = Emotion.create(name: k)
    v.each do |s|
        SubEmotion.create(name: s, emotion_id: e.id)
    end
end

cd.each do |k,v|
    Distortion.create(name: k, description: v)
end



######### DATA STRUCTURE ###################

  #  const data = {
    #     event: eventText:string => CreateLog
    #     outcome: outcomeText:string => CreateLog
  #     emotions: emotions:array of objects => Create LogEmotion + Create LogSubEmotion

  #     thoughts: thoughts:array of objects => Create Thoughts + Create ThoughtDistortions
  #   };


############# END ##############

puts 'The seeds have been planted 🥑'