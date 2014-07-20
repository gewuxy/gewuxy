package com.lqg.dao.profile;

import org.springframework.stereotype.Repository;

import com.lqg.dao.DaoSupport;
import com.lqg.model.profile.Comment;
@Repository("commentDao")
public class CommentDaoImpl extends DaoSupport<Comment> implements CommentDao {

}
