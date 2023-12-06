from configuration import motivation_type_questions
from questions_utils import get_question_text

def print_category_features(categories_dict):

    for cat in categories_dict.keys():
        print("\nQuestions related to {category}\n".format(category=cat))
        print(r"\begin{itemize}")
        for i in sorted(categories_dict[cat]):
            print(r"\item {description}".format(description=get_question_text(i)))

        print(r"\end{itemize}")

if __name__ == "__main__":
    print_category_features(motivation_type_questions)