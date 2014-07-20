package com.lqg.dao.profile;

import org.springframework.stereotype.Repository;

import com.lqg.dao.DaoSupport;
import com.lqg.model.profile.Question;
@Repository("questionDao")
public class QuestionDaoImpl extends DaoSupport<Question> implements QuestionDao {

}
