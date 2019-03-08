module Accounting
  class ReportsController < ApplicationController
    def menu
    end 
    def index
      @accounts = GlAccount.all
      respond_to do |format|
        format.html
        format.pdf do
          pdf = ChartPdf.new(@accounts, view_context)
          time = Time.now.to_i
          send_data pdf.render,
          filename: "#{time}_chart_accounts.pdf",
          type: 'application/pdf',
          disposition: 'inline'
        end
      end
    end

    def transactions
      @gl_transactions = GlTransaction.all
      @transaction_details = TransactionDetail.all
      respond_to do |format|
        format.html
        format.pdf do
          pdf = TransactionPdf.new(@gl_transactions, @transaction_details, view_context)
          time = Time.now
          send_data pdf.render,
          filename: "#{time.strftime('%y%m%d')}_Transactions.pdf",
          type: 'application/pdf',
          disposition: 'inline'
        end
      end
    end
  end
end
