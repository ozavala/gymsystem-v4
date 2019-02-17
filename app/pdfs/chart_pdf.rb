class ChartPdf < Prawn::Document
  def initialize(accounts, view)
    super(top_margin: 30)
    @accounts = accounts
    @view = view
    # order_number
     line_items
    # total_price
    #create_chart_of_accounts
  end

  # def order_number
  #   text "Order \##{@order.order_number}", size: 30, style: :bold
  # end

   def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      #columns(1..3).align = :right
      columns(0).width = 30
      columns(1..2).width = 40
      columns(3).width = 150
      columns(4).width = 250
      #self.row_colors = ['DDDDDD', 'FFFFFF']
      self.header = true
    end
  end
#
  def line_item_rows
    [["Id", "Code","Parent", "Name",  "Description", "Type",]] +
    @accounts.map do |acc|
      [acc.id, acc.acc_code, acc.acc_parent_code, acc.name, acc.description, acc.account_type_id]
    end
  end
#
#   def total_price
#     move_down 15
#     text "Total Price: #{price(@order.total_price)}", size: 16, style: :bold
#   end

def create_chart_of_accounts
  "Chart of Accounts"



end
#
#   private
#
#   def price(n)
#     @view.number_to_currency(n)
#   end
 end
