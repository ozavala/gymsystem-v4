class TransactionPdf < Prawn::Document

  def initialize(trans, details, view)
    super(top_margin: 30)
    @transactions = trans
    @details = details
    @view = view

    make_report
  end

  def make_report
    move_down 20
  table trans_rows do
      row(0).font_style = :bold
      self.header = true
    end
  end

  def trans_rows
    [["Id", "Tr-Date", "Entry", "Description", "Type", "To", "From"]]+
    @transactions.map  do |tran|
      [tran.id, tran.transaction_date, tran.entry_date, tran.description, tran.transaction_type_id, tran.to_party, tran.from_party]+
        [["sub"], ["table"]]+
      [[subtable, "original"]]
    end

  end
end
