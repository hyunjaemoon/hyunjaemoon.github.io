abstract class Prompts {
  Map<int, String> get promptMap;
}

class KoreanPrompts implements Prompts {
  @override
  Map<int, String> promptMap = {
    0: "좋아하는 음식은 뭐예요?",
    1: "안녕하세요, 오늘 날씨가 정말 좋네요.",
    2: "커피 한 잔 하실래요?",
    3: "여행 가고 싶어요.",
    4: "영화를 보러 가자.",
    5: "맛있는 저녁을 먹고 싶어요.",
    6: "책 읽는 것을 좋아해요.",
    7: "주말에 뭐 할 거예요?",
    8: "새로운 친구를 사귀고 싶어요.",
    9: "음악을 들으면 기분이 좋아져요.",
    10: "산책하는 걸 좋아해요.",
    11: "저녁에 시간이 있어요?",
    12: "좋아하는 취미가 뭐예요?",
    13: "강아지를 키우고 있어요.",
    14: "주말에 등산 가자.",
    15: "바닷가에 가고 싶어요.",
    16: "오늘 점심 뭐 먹었어요?",
    17: "좋아하는 음식이 뭐예요?",
    18: "영화를 자주 보세요?",
    19: "책을 빌리러 도서관에 가자.",
    20: "음악회에 가고 싶어요.",
    21: "스포츠를 좋아하세요?",
    22: "새로운 취미를 시작하고 싶어요.",
    23: "이번 주말에 뭐 할 거예요?",
    24: "커피숍에서 만날래요?",
    25: "밤하늘의 별을 보는 걸 좋아해요.",
    26: "저녁에 산책할래요?",
    27: "새로운 식당을 찾아가자.",
    28: "도시의 야경을 보는 걸 좋아해요.",
    29: "좋아하는 영화 장르가 뭐예요?",
    30: "여행할 계획이 있어요?",
    31: "맛있는 디저트를 먹고 싶어요.",
    32: "좋아하는 음악이 뭐예요?",
    33: "일요일에 뭐 할 거예요?",
    34: "여름에는 바다로 가고 싶어요.",
    35: "저녁에 친구를 만나고 싶어요.",
    36: "좋아하는 계절이 뭐예요?",
    37: "주말에 공원을 가자.",
    38: "도시의 축제를 즐기고 싶어요.",
    39: "새로운 언어를 배우고 싶어요.",
    40: "좋아하는 운동이 뭐예요?",
    41: "영화를 보고 나서 카페에 가자.",
    42: "책을 읽고 나서 생각을 나누자.",
    43: "가을에는 산책하기 좋아요.",
    44: "주말에는 쉬는 게 최고예요.",
    45: "좋아하는 꽃이 뭐예요?",
    46: "도시의 역사에 대해 알고 싶어요.",
    47: "봄에는 벚꽃을 보러 가자.",
    48: "좋아하는 색깔이 뭐예요?",
    49: "좋아하는 동물이 뭐예요?",
    50: "도시의 야경을 사진으로 찍자.",
    51: "주말에는 뭘 하고 싶어요?",
    52: "여행할 때 어디로 가고 싶어요?",
    53: "좋아하는 커피가 뭐예요?",
    54: "영화를 보면서 팝콘을 먹자.",
    55: "주말에는 가족과 시간을 보내요.",
    56: "새로운 취미를 찾아보자.",
    57: "좋아하는 노래가 뭐예요?",
    58: "저녁에는 조용한 카페가 좋아요.",
    59: "가을에는 낙엽을 밟으며 산책하자.",
    60: "좋아하는 스포츠가 뭐예요?",
    61: "여행에서 가장 기억에 남는 곳은 어디예요?",
    62: "좋아하는 영화 배우가 누구예요?",
    63: "책을 읽으면서 휴식을 취하자.",
    64: "저녁에 함께 저녁 먹을래요?",
    65: "주말에는 새로운 레스토랑을 찾아보자.",
    66: "좋아하는 작가가 누구예요?",
    67: "도시의 공원을 산책하자.",
    68: "새로운 친구를 만나고 싶어요.",
    69: "저녁에는 무슨 계획이 있어요?",
    70: "좋아하는 카페가 어디예요?",
    71: "여행을 가면서 새로운 경험을 하자.",
    72: "주말에는 무엇을 할 계획이에요?",
    73: "좋아하는 취미가 뭐예요?",
    74: "책을 읽으면서 차 한 잔 마시자.",
    75: "저녁에 맛있는 디저트를 먹자.",
    76: "여행을 준비하면서 설레어요.",
    77: "좋아하는 음악을 들으면서 쉬자.",
    78: "주말에는 뭘 할지 계획해 보자.",
    79: "저녁에는 공원을 산책하자.",
    80: "도시의 명소를 탐험해 보자.",
    81: "좋아하는 계절이 뭐예요?",
    82: "여행을 가면서 사진을 찍자.",
    83: "저녁에 영화 보러 가자.",
    84: "주말에는 도서관에 가서 책을 빌리자.",
    85: "새로운 카페를 찾아가자.",
    86: "좋아하는 스포츠가 뭐예요?",
    87: "저녁에 맛있는 음식을 먹자.",
    88: "여행을 하면서 새로운 문화를 경험하자.",
    89: "좋아하는 동물은 뭐예요?",
    90: "도시의 풍경을 감상하자.",
    91: "주말에는 산책하면서 휴식을 취하자.",
    92: "좋아하는 영화는 뭐예요?",
    93: "저녁에 친구와 만나서 얘기하자.",
    94: "여행을 계획하면서 설레요.",
    95: "좋아하는 커피숍이 어디예요?",
    96: "주말에는 가족과 함께 시간을 보내자.",
    97: "책을 읽으면서 저녁을 먹자.",
    98: "저녁에는 영화 보면서 휴식을 취하자.",
    99: "여행을 하면서 새로운 장소를 탐험하자.",
  };
}

class EnglishPrompts implements Prompts {
  @override
  Map<int, String> promptMap = {
    0: "What's your favorite food?",
    1: "Hello, the weather is really nice today.",
    2: "Would you like to have a cup of coffee?",
    3: "I want to go on a trip.",
    4: "Let's go watch a movie.",
    5: "I want to have a delicious dinner.",
    6: "I like reading books.",
    7: "What are you doing this weekend?",
    8: "I want to make new friends.",
    9: "Listening to music makes me feel good.",
    10: "I like taking walks.",
    11: "Do you have time this evening?",
    12: "What are your favorite hobbies?",
    13: "I have a pet dog.",
    14: "Let's go hiking this weekend.",
    15: "I want to go to the beach.",
    16: "What did you have for lunch today?",
    17: "What's your favorite food?",
    18: "Do you watch movies often?",
    19: "Let's go to the library to borrow some books.",
    20: "I want to go to a concert.",
    21: "Do you like sports?",
    22: "I want to start a new hobby.",
    23: "What are your plans for this weekend?",
    24: "Shall we meet at the coffee shop?",
    25: "I like looking at the stars at night.",
    26: "Do you want to take a walk this evening?",
    27: "Let's find a new restaurant.",
    28: "I like seeing the city's nightscape.",
    29: "What's your favorite movie genre?",
    30: "Do you have any travel plans?",
    31: "I want to eat a delicious dessert.",
    32: "What's your favorite music?",
    33: "What are you doing on Sunday?",
    34: "I want to go to the beach in the summer.",
    35: "I want to meet friends in the evening.",
    36: "What's your favorite season?",
    37: "Let's go to the park this weekend.",
    38: "I want to enjoy the city's festival.",
    39: "I want to learn a new language.",
    40: "What's your favorite sport?",
    41: "Let's go to a café after watching a movie.",
    42: "Let's share our thoughts after reading a book.",
    43: "Walking in the autumn is nice.",
    44: "Resting on the weekend is the best.",
    45: "What's your favorite flower?",
    46: "I want to know about the city's history.",
    47: "Let's go see the cherry blossoms in the spring.",
    48: "What's your favorite color?",
    49: "What's your favorite animal?",
    50: "Let's take photos of the city's nightscape.",
    51: "What do you want to do this weekend?",
    52: "Where do you want to go on a trip?",
    53: "What's your favorite coffee?",
    54: "Let's eat popcorn while watching a movie.",
    55: "I spend time with my family on weekends.",
    56: "Let's find a new hobby.",
    57: "What's your favorite song?",
    58: "I like quiet cafes in the evening.",
    59: "Let's walk on the fallen leaves in autumn.",
    60: "What's your favorite sport?",
    61: "Where's the most memorable place you've traveled?",
    62: "Who's your favorite movie actor?",
    63: "Let's relax while reading a book.",
    64: "Shall we have dinner together in the evening?",
    65: "Let's find a new restaurant this weekend.",
    66: "Who's your favorite author?",
    67: "Let's walk in the city's park.",
    68: "I want to meet new friends.",
    69: "Do you have any plans for the evening?",
    70: "What's your favorite café?",
    71: "Let's experience new things while traveling.",
    72: "What are your plans for the weekend?",
    73: "What's your favorite hobby?",
    74: "Let's have a cup of tea while reading a book.",
    75: "Let's eat a delicious dessert in the evening.",
    76: "I feel excited while preparing for a trip.",
    77: "Let's relax while listening to our favorite music.",
    78: "Let's plan what to do on the weekend.",
    79: "Let's take a walk in the park in the evening.",
    80: "Let's explore the city's landmarks.",
    81: "What's your favorite season?",
    82: "Let's take pictures while traveling.",
    83: "Let's watch a movie in the evening.",
    84: "Let's go to the library and borrow some books this weekend.",
    85: "Let's find a new café.",
    86: "What's your favorite sport?",
    87: "Let's eat delicious food in the evening.",
    88: "Let's experience new cultures while traveling.",
    89: "What's your favorite animal?",
    90: "Let's enjoy the city's scenery.",
    91: "Let's relax while taking a walk on the weekend.",
    92: "What's your favorite movie?",
    93: "Let's meet and talk with friends in the evening.",
    94: "I feel excited while planning a trip.",
    95: "Where's your favorite coffee shop?",
    96: "Let's spend time with family on the weekend.",
    97: "Let's read a book while having dinner.",
    98: "Let's relax while watching a movie in the evening.",
    99: "Let's explore new places while traveling.",
  };
}
