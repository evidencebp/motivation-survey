create or replace function continue.tree (Is_Paid int64, Productivity is more important to me than quality int64, I feel responsible to the repository success int64, I have significant influence on the repository int64, I have complete autonomy in contributing to the repository int64, Age int64, Years of contribution to GitHub - Click to write Choice 1 int64, I�m interested in the repository for my own needs int64, We have many heated arguments in the community. If you are the only developer in the project, please skip. int64, I wish that certain developers in the repository will leave. If you are the only developer in the project, please skip. int64, My work on the repository is creative int64, I contribute to open source due to ideology int64, Working on this repository is challenging int64, I derive satisfaction from working on this repository int64, The repository is important int64, When I look at what we accomplish, I feel a sense of pride int64, Belonging to the  community is motivating my work on the repository. If you are the only developer in the project, please skip. int64, The community is very professional. If you are the only developer in the project, please skip. int64, I get recognition due to my contribution to the repository int64, I am a core member of the repository int64, I learn from my contributions int64, The quality of the code in this repository is better than others int64, Code quality in the repository improved since a year ago int64, My motivation has more influence on my productivity, than my skill int64, The repository�s community of developers is more motivated than that of other repositories. If you are the only developer in the project, please skip. int64, I regularly reach a high level of productivity int64, My personal motivation in this repository has increased since a year ago int64, I am a relatively productive programmer int64, I am skilled in software development int64, My code is of high quality int64, I am satisfied with my performance in software development int64, I want my code to be beautiful int64, I enjoy software development very much int64, It is important for me to program well int64, I write tests for my code int64, I write detailed commit messages int64, I contribute to open source in order to have an online portfolio int64, In the past year, members of my GitHub community put me down or were condescending to me. If you are the only developer in the project, please skip. int64, I try to write high quality code because others will see it int64, In the past year, members of my GitHub community made demeaning or derogatory remarks about me. If you are the only developer in the project, please skip. int64, I enjoy trying to solve complex problems int64, In the past year, members of my GitHub community asked questions that show their understanding of my contributions. If you are the only developer in the project, please skip. int64, I contribute to open source in order to become a better programmer int64, In the past year, members of my GitHub community expressed interest in my contributions. If you are the only developer in the project, please skip. int64, I improved as a programmer since a year ago int64) as (
  case when I derive satisfaction from working on this repository <= 0.5 then
    case when I get recognition due to my contribution to the repository <= 0.5 then
        0.0 
    else  # if I get recognition due to my contribution to the repository > 0.5
      case when Working on this repository is challenging <= 0.5 then
        case when I am satisfied with my performance in software development <= 0.5 then
            1.0 
        else  # if I am satisfied with my performance in software development > 0.5
            0.0 
        end       else  # if Working on this repository is challenging > 0.5
          0.0 
      end     end   else  # if I derive satisfaction from working on this repository > 0.5
    case when I feel responsible to the repository success <= 0.5 then
      case when I contribute to open source in order to become a better programmer <= 0.5 then
          0.0 
      else  # if I contribute to open source in order to become a better programmer > 0.5
        case when Code quality in the repository improved since a year ago <= 0.5 then
            1.0 
        else  # if Code quality in the repository improved since a year ago > 0.5
            0.0 
        end       end     else  # if I feel responsible to the repository success > 0.5
        1.0 
    end   end )