module GlAccountsHelper

  def self.create_chart_of_accounts_html
    chart_file = File.new("app/views/reports/gl_accounts_list.html.erb", "w")
    glacs = GlAccount.order(:acc_code).all

      chart_file.puts(
        "<div class = 'container'>
          <h1>Listado de Cuentas del Libro Mayor</h1>
        </div>")

        chart_file.puts(
          "<div class='row'>
          <div class = 'col-md-1'></div>
          <div class='col-md-10'>
          <table class='table table-hover'>
          <thead class='table-header'>
            <tr>
              <th>#</th>
              <th>Código</th>
              <th>Cta. Padre</th>
              <th>Nombre</th>
              <th>Tipo</th>
              <th>Description</th>
            </tr><thead>"
        )
        glacs.each do |gla|
          chart_file.puts(
          "<tbody><tr>
             <td> #{gla.id  }</td>
             <td> #{  gla.acc_code}</td>
             <td> #{  gla.acc_parent_code}</td>
             <td>#{gla.name}</td>
             <td>#{gla.account_type_id}</td>
             <td>#{gla.description}</td>
          </tr>")
        end
    chart_file.puts('</tbody></table></div></div></div>')
    chart_file.close
    # render 'reports/gl_accounts_list.html.erb'

  end
    #'reports/gl_accounts_list',
    

end
