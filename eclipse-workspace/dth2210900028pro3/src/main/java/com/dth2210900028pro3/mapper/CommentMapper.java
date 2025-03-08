package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthCommentModel;

public class CommentMapper implements RowMapper<DthCommentModel> {

	@Override
	public DthCommentModel mapRow(ResultSet resultSet) {
		try {
			DthCommentModel comment = new DthCommentModel();
            comment.setIdComment(resultSet.getLong("idcomment"));
            comment.setIdProduct(resultSet.getLong("idproduct"));
            comment.setIdUser(resultSet.getLong("iduser"));
            comment.setCommentText(resultSet.getString("comment_text"));
            comment.setStatus(resultSet.getBoolean("status"));
            comment.setIsDelete(resultSet.getBoolean("isDelete"));
            comment.setCreatedDate(resultSet.getTimestamp("createddate"));
            comment.setModifieddate(resultSet.getTimestamp("modifieddate"));
            comment.setCreatedBy(resultSet.getString("createdby"));
            comment.setModifiedBy(resultSet.getString("modifiedby"));
            return comment;
        } catch (SQLException e) {
            e.printStackTrace(); // Ghi lại lỗi nếu cần
            return null;
        }
	}

}
