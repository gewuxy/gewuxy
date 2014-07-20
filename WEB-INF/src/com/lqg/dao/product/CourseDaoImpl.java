package com.lqg.dao.product;

import org.springframework.stereotype.Repository;

import com.lqg.dao.DaoSupport;
import com.lqg.model.product.Course;
@Repository("courseDao")
public class CourseDaoImpl extends DaoSupport<Course> implements CourseDao {

}
