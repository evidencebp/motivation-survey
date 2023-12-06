from configuration import male_encoding, female_encoding, gender_encoding, GENDER_COLUMN, AGE_COLUMN, DEV_KEY
from data_utils import get_survey_ds
from questions_utils import dict_array_lookup

COUNTRY_QUESTION = 'Q60'
EXPERIENCE_QUESTION = 'Q64'
GITHUB_YEARS_QUESTION = 'Q65_1'


academic_level = {'first':['B tech', 'Bachelor degree', 'b.tech. in computer science', 'Bsc'
, 'BS in Computer Science', 'Bachelors in Music', 'Bachelor of Computer Science', 'Bachelor degree in Computer Science'
, 'Bachelor', 'BSE EECS',  'BSIT', 'BSc.', 'B. tech in CSE', 'b.sc', ' BS City Planning', "Bachelor's degree"
, 'Bachelors in CS', 'Bachelors of Interdisciplinary studies', 'bachelor', 'Bachelor Engineering', 'Bachelors'
, 'Economist, university', 'Bachelor Of Engineering', 'Bachelors in Science', 'Bachelor Degree - Sofware Engineer'
, 'Computing BSc 1st class honours', 'Degree in Computer Science', 'B.Sc.', 'BS' , 'Bachelors degree'
, 'BA in Literature' , 'Computer Science BS', 'BSc (Hons) Maths', 'BSc', 'Enginnyer', 'Bachelor of Science'
, 'Bachelor ODEC', '1st degree', 'BS(IT)', 'Undergraduate CS', "Bachelor's of Computer Science "
, 'University (telecommunications engineering)', 'BEng(Hons) in Software Engineering'
, 'B.Sc. in Software Engineering', 'Bachelor in Information Systems', 'Bachelor of Technology'
, 'Bsc. in Computer Science', 'BEng', 'Academic', 'Bc.S Electrical Engineering', 'BS Computer Science', 'Undergrad'
, 'BS CS', "Bachelor's", 'Systems Engineer', 'BS: Computer Science', 'B.Sc. Business Informatics'
, 'B.S. Information Technology', 'Bachelor of Information Systems', 'Bsc ', 'Bachelors ', 'BS applied technology '
, 'Comptuer Science and Engineering Bachelor of Technology ', 'Bachelor ', "Bachelor's in Artificial Intelligence"
, 'BSc Comp Sci, BSc Biology', 'CS Bachelor', "Bachelor's Degree Computer Science", 'BS Physics'
, 'Bachelor in Technical Computer Science', 'B.S. Engineer-Physics', 'College Diploma', 'Bc sci'
, 'Bachelor in computer science ', 'BA Music', 'Bachelors CS', 'Bachelor or technology ', 'BSc, working on MSc'
, 'Bachelors Information Technology', 'Bachelor of Engineering in Computer Science', 'Ingeneer degree'
, "Engineer's degree" , 'BSc Bio-Informatics', 'B.tech', 'computer science b.s. 2017', 'software engineer'
, 'BS compsci', "Bachelor's in Computer Science", 'Bachelor’s (non computer science)', 'Physics BSc'
, 'Bachelor degree in Law', 'Bachelor in Business Informatics', 'BE Software Engineering'
, 'BSc in Electrical Engineering and Computer Science', 'BE' , 'university'  , 'BA Computer Science'
, 'BSc Eng', 'BIT'
                               ]
                      , 'second':['MSc, computer sceince', 'MSc (PhD student)', 'Masters', 'Msc'
, 'Master Software Engineering', 'M.S. C.S.',  "Master's degree", 'Master of Science', 'MBA MSC'
, 'Master Degree from Engineering School', 'M.A. Philosophy', 'Master' , 'MSC from Computer Science'
, "CS Master's degree", 'MSc', 'masters', 'BS in CS, MS in Engineering Tech. Mgmt.', 'M.Sc.', "master's degree"
, 'master', 'MSCS' , "Master's degree in IT/CS", 'Master degree', 'MSEE', 'MS', 'Bachelor/Master', 'MSC'
, 'Music Tech BA / HCI Master', 'ms/research eng', 'Master of Architecture', 'Master in Computer Science', 'MPhys'
, 'M.S.', 'Master of science ', 'magister', 'Graduate', 'Master degree in Computer and Telematics Engineering'
, 'Master of science', 'Master of computer science', 'Bachelors and Masters in Computer Engineering'
, 'Master degree (Ing.)', 'M. Sc.', 'Msc Computer Science', "Master's degree in Software engineering"
, "Master's", 'Masters of science, Cis', 'Master of Science, Mathematics', 'Hons Bachelor + MBA', 'msc'
, 'Masters of Information Systems', 'MSc software engineering', 'Magister', 'MS in Physics', 'M.Res', 'master, diploma'
, 'Master of Science in Engineering: computer science' , 'M.A.' , 'MS comp sci', 'Master Computer Science'
, "Master's Degree in Computer Engineering ", 'Masters of Technology', 'M.Eng.', 'MBA', "Engineer / Master's"
, 'MSc in Bioinformatics' , 'specialist (old Russian system of degrees)' , 'Specialist'
, 'Specialist (5.5 years of study)'
 ]
                      , 'Phd':['PhD', 'Ph.D. in physics', 'Physics Phd', 'Ph.D.'
, 'PhD (in a month)' # Congratulations!
, 'Ph. D.', 'PhD Physics', 'PHD', 'PhD.', 'PhD in Computer Science', 'Doctorate', 'Dr', 'PhD Biomedical Sciences'
, 'PhD, linguistics'
                               ]
                      , 'Other':['Degree', 'Diploma (University of Applied Sciences)', 'Technical College Graduate'
, 'Software Engnieer Student', 'currently system design bachelor student'
, 'Currently working on bachelor', 'Secondary Technical College Graduation'
, 'Diplom', 'Pursuing B.Sc in Computer Science', 'Associates Degree Environmental Science'
, 'Baccalauréat + 2 years tech school', 'B.S. In Computer Science (In Progress) ', 'Engineering Degree (in progress)'
, "Associate's Degree", 'Still a student']
                      , 'No':['None',  'Not graduated' , 'none', 'High school', 'High School', 'high school graduate'
, 'self taught', 'Some college (no degree)', 'not finished bachelor', 'Incomplete', 'Nothing', 'Working on Abitur'
, 'N/a', 'Automation, without degree', 'Bootcamp / Self taught', 'No', 'university dropout'
, 'IT Specialist for Appliation Development', 'Secondary school', 'Few credits shy of a CSCI BA'
, 'high school/adult education (not university or college)', 'Almost Bachelor' , '-' , 'Some College'
, 'Working on CS degree'
]
    }

academic_domain = {'cs' : ['MSc, computer sceince', 'b.tech. in computer science', 'Master Software Engineering'
, 'M.S. C.S.', 'BS in Computer Science', 'Computer Science', 'Bachelor of Computer Science', 'Comp Sci'
, 'Bachelor degree in Computer Science', 'BSE EECS' , 'MSC from Computer Science', "CS Master's degree"
, 'Bachelors in CS', 'CS', 'BS in CS, MS in Engineering Tech. Mgmt.', 'Software Engineering', 'software engineering'
, 'Bachelor Degree - Sofware Engineer', 'Computing BSc 1st class honours', 'Degree in Computer Science'
, 'Software Engnieer Student' , "Master's degree in IT/CS" , 'Computer Science BS', 'Master in Computer Science'
, 'Soft eng', 'MSc CS', 'Undergraduate CS', "Bachelor's of Computer Science ", 'BEng(Hons) in Software Engineering'
, 'Software Engineer', 'B.Sc. in Software Engineering', 'computer science', 'Bsc. in Computer Science'
, 'BS Computer Science', 'Master of computer science', 'BS CS', 'Computing Science'
, 'Pursuing B.Sc in Computer Science', 'BS: Computer Science', 'Computer Science and Mathematics'
, 'Msc Computer Science', 'PhD in Computer Science', "Master's degree in Software engineering", 'Computer science'
, 'Comptuer Science and Engineering Bachelor of Technology ', 'comp sci ', 'AP in CS', 'BSc Comp Sci, BSc Biology'
, 'Masters of science, Cis', 'CS Bachelor', 'B.S. In Computer Science (In Progress) ', 'University (Computer Science) '
, "Bachelor's Degree Computer Science", 'Math/CS', 'Bachelor in Technical Computer Science', 'CS; Markeing', 'CIS'
, 'Bachelor in computer science ', 'MSc software engineering', 'Bachelors CS'
, 'Bachelor of Engineering in Computer Science', 'Master of Science in Engineering: computer science'
, 'Applied Computer Science', 'MS comp sci', 'Master Computer Science', 'BS compsci', "Bachelor's in Computer Science"
, 'computer science b.s. 2017', 'software engineer', 'Working on CS degree', 'Computer Science and Management Science'
, 'BE Software Engineering' , 'BSc in Electrical Engineering and Computer Science' , 'BA Computer Science'
                               ]
                       , 'tech' : ['B tech', 'Social Informatics', 'B.Tech', 'Business & IT', 'Engineer (pl. Inżynier)'
, 'Master Degree from Engineering School', 'BSIT', 'IT', 'B. tech in CSE', 'Bachelor Engineering'
, 'Bachelor Of Engineering', 'Technical College Graduate', 'Computer Engineering', 'MSEE', 'Quantum Electronics '
, 'Ing.', 'Electrical Engineering', 'currently system design bachelor student', 'Music Tech BA / HCI Master'
, 'Enginnyer', 'ms/research eng', 'BS(IT)', 'University (telecommunications engineering)'
, 'Bachelor in Information Systems', 'Information Technology', 'Bachelor of Technology'
, 'Master degree in Computer and Telematics Engineering', 'BEng', 'Game development', 'Bc.S Electrical Engineering'
, 'Information engineering', 'Bachelors and Masters in Computer Engineering', 'Master degree (Ing.)'
, 'Mechanical Engineering', 'Systems Engineer', 'B.Sc. Business Informatics', 'B.S. Information Technology'
, 'Bachelor of Information Systems', 'Aviation Technology', 'BS applied technology ', 'Web and Mobile Computing '
, 'Multimedia Design', 'Information Security', "Bachelor's in Artificial Intelligence"
, 'Associates Degree Environmental Science', 'Electrical and Computer Engineering', 'Engineering Degree (in progress)'
, 'IT Specialist for Appliation Development', 'civil engineering', 'Diploma in Engineering', 'Electronic engineering '
, 'Civil engineering', 'Bachelor or technology ', 'Humanities/Computing', 'Ingeneer degree'
, 'electrical engineering', 'Information Systems', "Engineer's degree", 'Science and Systems Engineering', 'B.tech'
, "Master's Degree in Computer Engineering ", 'Masters of Technology', 'M.Eng.', 'Coastal Engineering'
, 'Bachelor in Business Informatics' , "Engineer / Master's", 'BSc Eng', 'BIT']
                       , 'science': ['Ph.D. in physics', 'Physics Phd', 'Bachelors in Science'
, 'Diploma (University of Applied Sciences)', 'Bachelor of Science', 'MPhys', 'PhD Physics', 'Physics', 'BS Physics'
,  'bioscience', 'B.S. Engineer-Physics', 'Bc sci', 'Chemistry and informatics', 'MS in Physics', 'BSc Bio-Informatics'
, 'Pharmacy', 'PhD Biomedical Sciences', 'Physics BSc', 'MSc in Bioinformatics']
                       , 'business': ['MBA MSC', 'Economist, university', 'Economics', 'Hons Bachelor + MBA', 'Law'
 , 'Bachelor degree in Law', 'MBA']
                       , 'math': ['Mathematics ', 'BMath', 'BSc (Hons) Maths', 'Mathematics'
, 'Master of Science, Mathematics']
                       , 'art': ['Bachelors in Music', 'BA in Literature', 'BA Music', 'Graphic Design', 'New Media']
                       , 'philosophy': ['M.A. Philosophy']
                       , 'psychology':['psychology']
                       , 'other': [' BS City Planning', 'Bachelors of Interdisciplinary studies'
 , 'Master of Architecture', 'Bachelor ODEC', 'Events Management', 'International relations', 'Jx', 'PhD, linguistics']}

countries_map = {'the netherlands': 'netherlands'
    , 'scotland': 'Great Britain'
    , 'united states of america ': 'USA'
    , 'based in czech republic; originally from ukraine': 'czech republic'
    , 'india ': 'india'
    , 'indoa': 'india'
    , 'russian federation': 'russia'
    , 'us': 'USA'
    , 'america': 'USA'
    , 'england': 'Great Britain'
    , 'pk': 'Pakistan'
    , 'pakistan': 'Pakistan'
    , 'the united states of america': 'USA'
    , 'mx': 'mexico'
    , 'cz': 'czech republic'
    , 'united state': 'USA'
    , 'canada ': 'Canada'
    , 'canada': 'Canada'
    , 'france / switzerland': 'france'
    , 'french': 'france'
    , 'united kingdom': 'Great Britain'
    , 'usa': 'USA'
    , 'united states': 'USA'
    , 'u.s.a': 'USA'
    , 'de': 'germany'
    , 'united states of america': 'USA'
    , 'united states ': 'USA'
    , 'united states': 'USA'
    , 'usa ': 'USA'
    , 'swesen': 'sweden'
    , 'uk': 'Great Britain'
    , 'seeden': 'sweden'
    , 'scotland, uk': 'Great Britain'}


def country_distribution():

    unidentified = ['y', 'dx', 'united kingdon',  'swesen', 'seeden', 'indoa']

    df = get_survey_ds()

    df = enhance_df_with_country(df)
    print(df[df['country'] != '0']['country'].value_counts(normalize=True).sort_values())
    print(sorted([set(i.lower() for i in df[~df['country'].isna()]['country'].unique())]))
    print("Countries #"
          , df[~df['country'].isna()]['country'].nunique())

    print("Country typos"
          , len(df[df[COUNTRY_QUESTION].str.lower().isin(unidentified)])/len(df[df['country'] != '0']))


def enhance_df_with_country(df):
    df['country'] = df[COUNTRY_QUESTION].map(lambda x: countries_map.get(x.lower(), x.lower()))

    return df

def gender_distribution():
    df = get_survey_ds()

    print("Male ratio"
          , len(df[df[GENDER_COLUMN].isin(male_encoding)])/len(df[df[GENDER_COLUMN].isin(gender_encoding)]))
    print("Female ratio"
          , len(df[df[GENDER_COLUMN].isin(female_encoding)])/len(df[df[GENDER_COLUMN].isin(gender_encoding)]))

def age_analysis():
    df = get_survey_ds()

    print("Average age"
    , df[AGE_COLUMN].mean())
    print("Cumulative age distribution"
          , df[AGE_COLUMN].value_counts(normalize=True).sort_index().cumsum())

def professional_dist():
    # 'Q63' I work as a professional programmer
    df = get_survey_ds()
    print("professional"
          , len(df[df['Q63'] == 1])/len(df[df['Q63'].isin([1,2])]))

def experience_years_dist():
    df = get_survey_ds()

    df['exp'] = df[EXPERIENCE_QUESTION].map(lambda x: None if x == '0' or not x.isnumeric() else int(x))
    print("Average experience"
    , df['exp'].mean())
    agg = df['exp'].value_counts(normalize=True).sort_index().cumsum()

    print("%.3f" % agg[1], "have one year of experience")
    print("%.3f" % (agg[5] - agg[1]), "have 2 to 5 years of experience")
    print("%.3f" % (agg[10] - agg[5]), "have 6 to 10 years of experience")
    print("%.3f" % (1 - agg[19]), "have at least 20 years")

    print("Cumulative experience distribution"
          , agg)

def github_experience_years_dist():
    df = get_survey_ds()

    print("GitHub Average experience"
    , df[GITHUB_YEARS_QUESTION].mean())
    agg = df[GITHUB_YEARS_QUESTION].value_counts(normalize=True).sort_index().cumsum()
    print("%.3f" % agg[1], "have one year of experience")
    print("%.3f" % (agg[5] - agg[1]), "have 2 to 5 years of experience")
    print("%.3f" % (agg[10] - agg[5]), "have 6 to 10 years of experience")
    print("%.3f" % (1 - agg[10]), "have more than 10 years")
    print("Cumulative GitHub experience distribution"
          , agg)

    df['exp'] = df[EXPERIENCE_QUESTION].map(lambda x: None if x == '0' or not x.isnumeric() else int(x))

    df['exp_diff'] = df.apply(lambda x: x['exp'] - x[GITHUB_YEARS_QUESTION]
                              , axis=1)

    print("Exp - GitHub Average experience"
    , df['exp_diff'].mean())
    diff_agg = df['exp_diff'].value_counts(normalize=True).sort_index().cumsum()
    print("%.3f" % diff_agg[-1], "More Github experience")
    print("%.3f" % (diff_agg[0] - diff_agg[-1]), "Same experience")
    print("%.3f" % (diff_agg[5] - diff_agg[0]), "have 1 to 5 years of experience")
    print("%.3f" % (diff_agg[10] - diff_agg[5]), "have 6 to 10 years of experience")
    print("%.3f" % (1 - diff_agg[10]), "have more than 10 years")


    print("Cumulative (Experince - GitHub experience) distribution"
          , diff_agg)
    print("Years and GitHub years correlation"
            , df.corr()[GITHUB_YEARS_QUESTION]['exp'])

def get_academic_degree(description):

    return dict_array_lookup(academic_level
                , description)

def get_academic_domain(description):

    return dict_array_lookup(academic_domain
                , description)


def academic_dist():

    # 'Q66': 'Academic background (degree)',
    # 'Q67.1': 'Academic background (degree and graduation year)'


    df = get_survey_ds()
    print(df['Q66'].value_counts().sort_values())
    print(df['Q67.1'].value_counts().sort_values())
    print(list(df['Q66'].unique()))

    df['degree'] = df['Q66'].map(get_academic_degree)
    print(df['degree'].value_counts(normalize=True).sort_values())


    df['domain'] = df['Q66'].map(get_academic_domain)
    print(df['domain'].value_counts(normalize=True).sort_values())


def enhance_df_with_academy(df):
    df['exp'] = df[EXPERIENCE_QUESTION].map(lambda x: None if x == '0' or not x.isnumeric() else int(x))
    df['degree'] = df['Q66'].map(get_academic_degree)
    df['domain'] = df['Q66'].map(get_academic_domain)

    return df

def skill_analysis():

    SKILL_QUESTION = 'Q87' # 'I am skilled in software development'

    df = get_survey_ds()
    df = enhance_df_with_academy()
    print(df[SKILL_QUESTION].value_counts(normalize=True).sort_index().cumsum())

    print("Correlation with experience", df.corr()['exp'][SKILL_QUESTION])

    print(df.groupby(['degree']).agg({SKILL_QUESTION: 'mean'}))

    print(df.groupby(['domain']).agg({SKILL_QUESTION: 'mean'
                                      , DEV_KEY: 'count'}))

def run_demographic_analysis():
    country_distribution()
    gender_distribution()
    age_analysis()
    professional_dist()
    experience_years_dist()
    github_experience_years_dist()
    academic_dist()
    skill_analysis()

if __name__ == "__main__":
    run_demographic_analysis()


