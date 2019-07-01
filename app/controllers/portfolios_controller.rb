class PortfoliosController < ApplicationController
    def index
        @portfolio_items=Portfolio.all
    end

    def new
        @portfolio_items=Portfolio.new
    end

    def create
        @portfolio_items = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_items.save
            format.html { redirect_to portfolios_path, notice: 'Portfolio is now live' }
            
          else
            format.html { render :new }
    
          end
        end
      end

      def edit
        @portfolio_items=Portfolio.find(params[:id])
      end
      def update
        respond_to do |format|
          @portfolio_items=Portfolio.find(params[:id])
          if @portfolio_items.update(portfolio_params)
            format.html { redirect_to portfolios_path, notice: 'Post was successfully updated.' }
            
          else
            format.html { render :edit }
           
          end
        end
      end

      private
      def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
      end

end
