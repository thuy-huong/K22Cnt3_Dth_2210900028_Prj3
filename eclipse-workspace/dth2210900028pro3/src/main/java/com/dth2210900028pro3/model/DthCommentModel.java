package com.dth2210900028pro3.model;

public class DthCommentModel extends AbstractModel<DthCommentModel> {
	private Long idComment;
	private Long idProduct;
	private Long idUser;
	private String commentText;
	private Boolean status;
	private Boolean isDelete;

	public Long getIdComment() {
		return idComment;
	}

	public void setIdComment(Long idComment) {
		this.idComment = idComment;
	}

	public Long getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Long idProduct) {
		this.idProduct = idProduct;
	}

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

}
