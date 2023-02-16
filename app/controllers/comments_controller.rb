class CommentsController < ApplicationController

    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def create
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comments.create(comment_params)

        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comments.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(@gossip), status: :see_other
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
    end
end
