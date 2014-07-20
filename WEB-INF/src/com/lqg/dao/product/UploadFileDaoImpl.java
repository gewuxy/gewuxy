package com.lqg.dao.product;

import org.springframework.stereotype.Repository;

import com.lqg.dao.DaoSupport;
import com.lqg.model.product.UploadFile;
@Repository("uploadFileDao")
public class UploadFileDaoImpl extends DaoSupport<UploadFile> implements UploadFileDao {

}
