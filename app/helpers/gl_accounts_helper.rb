module GlAccountsHelper
  def self.create_chart_of_accounts_html
    chart_file = File.new("app/views/reports/gl_accounts_list.html.erb", "w")
    glacs = GlAccount.order(:acc_code).all

      chart_file.puts(
        "<div class = 'container'>
          <h1>General Ledger Chart of Accounts</h1>")

        chart_file.puts(
          "<div class='row'>
          <div class = 'col-md-1'>
          </div>
          <div class='col-md-10'>
          <table>
            <tr>
              <th>ID</th>
              <th>Code</th>
              <th>Name</th>
              <th>Account Type</th>
              <th>Description</th>
            </tr>"
        )
        glacs.each do |gla|
          chart_file.puts(
          "<tr>
             <td>#{gla.id   }   </td>
             <td>  #{  gla.acc_code}</td>
             <td>#{gla.name}</td>
             <td>#{gla.account_type_id}</td>
             <td>#{gla.description}</td>
          </tr>")
        end
    chart_file.puts('</table></div></div></div>')
    chart_file.close
  end
end
