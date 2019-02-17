
# gym = Gymsite.create!(
#               name: "Round One",
#               legal_id: '0912345678-001',
#               description: "Centro Comercial La torre. Area 80 m2. Capacidad Max 15 alumnos por hora. Horario lunes a viernes",
#               street_address: "Centro Comercial 'La Torre', tercer piso, local # 38" ,
#               city: 'Samborondón',
#               state: 'Guayas',
#               country: 'Ecuador',
#               zip: '092301',
#               phone: '0991234567',
#               phone_type: nil,
#               email:  'infolatorre@roundone.com',
#               logo: 'assets/images/icon-logo-fer1.jpg',
#               from_date: '2019-02-11',
#               to_date: nil
#             )
# puts "Created a GymSite"
#
#
#
# gym.users.create!(
#   first_name: 'Fernando',
#   last_name: 'Zavala',
#   phone: Faker::PhoneNumber.cell_phone,
#   email: 'ferzagi@roundone.com',
#   avatar: nil,
#   password: 'password',
#   password_confirmation: 'password',
#   is_admin: true
# )
#
# gym.members.create(
#   first_name: 'Julio',
#   last_name: 'Fuertes',
#   email: 'jfuertes@example.com',
#   password_digest: 'password',
#   street_address: 'Lomas al Sol',
#   city: 'Guayaquil',
#   state: 'Guayas',
#   zip: ' 098765',
#   phone: '09996765443 ',
  # birthday:
  # is_active:
  # avatar:
  # notes:
  # from_date:
  # to_date:
  # level:
  # membership_type:
  # membership_price:
  # source:
# )
#**** Tipo de cuentas ****

# activo = AccountType.create(
#   acc_type_code: 'Activo',
#   classification: 'Balance'
# )
# #
# pasivo = AccountType.create(
#   acc_type_code: 'Pasivo',
#   classification: 'Balance'
# )
#
# capital = AccountType.create(
#   acc_type_code: 'Capital',
#   classification: 'Balance'
# )
#
# ingreso = AccountType.create(
#   acc_type_code: 'Ingreso',
#   classification: 'Perdidas o Ganacias'
# )
#
# gasto = AccountType.create(
#   acc_type_code: 'Gasto',
#   classification: 'Perdidas o Ganacias'
# )
#
# puts "5 GlAccountType created"

#### PeriodType accounts

# PeriodType.create(
#   period_type_code: 'Anual',
#   description: 'Periodo anual'
# )

# PeriodType.create(
#   period_type_code: 'Trimestral',
#   description: 'Periodo trimestral'
# )
#
# PeriodType.create(
#   period_type_code: 'Mensual',
#   description: 'Periodo mensual'
# )
#
# PeriodType.create(
#   period_type_code: 'Quincenal',
#   description: 'Periodo quincenal'
# )
# puts '4 PeriodTypes created'
# gym = Gymsite.first
#
# ptanual = PeriodType.find_by(period_type_code: 'Anual')
#
# gym.account_periods.create(
#   from_date:'2019-01-01',
#   to_date:'2019-12-31',
#   period_type: ptanual.id
# )
#### Gl Accounts
 activo = AccountType.find_by(acc_type_code: 'Activo')
 pasivo = AccountType.find_by(acc_type_code: 'Pasivo')
 capital = AccountType.find_by(acc_type_code: 'Capital')
 gasto = AccountType.find_by(acc_type_code: 'Gasto')
 ingreso = AccountType.find_by(acc_type_code: 'Ingreso')

#*** Cuentas de Activo Corriente ****

activo.gl_accounts.create(
 acc_code: '1',
 acc_parent_code: nil,
 name: 'Activos',
 description: 'Valores disponibles,activos de la empresa'
)

activo.gl_accounts.create(
 acc_code: '1000',
 acc_parent_code: '1',
 name: 'Activos Corrientes',
 description: 'Valores disponibles,activos de la empresa'
)
activo.gl_accounts.create(
  acc_code: '1010',
  acc_parent_code: '1000',
  name: 'Caja',
  description: 'Dinero efectivo del que se dispone'
)

activo.gl_accounts.create(
  acc_code: '1011',
  acc_parent_code: '1010',
  name: 'Caja Chica',
  description: 'Dinero en efectivo para gastos varios o para apertura de caja de venta'
)

activo.gl_accounts.create(
  acc_code: '1012',
  acc_parent_code: '1010',
  name: 'Valores a depositar',
  description: 'Cheques para depositar, cheques en cartera'
)

activo.gl_accounts.create(
  acc_code: '1013',
  acc_parent_code: '1010',
  name: 'Valores Diferidos a Depositar',
  description: 'Cheques que no pueden depositarse o cobrarse, diferidos a fecha'
)

 activo.gl_accounts.create(
  acc_code: '1020',
  acc_parent_code: '1000',
  name: 'Bancos',
  description: 'Cuentas de Bancos'
)

activo.gl_accounts.create(
  acc_code: '1021',
  acc_parent_code: '1020',
  name: 'Banco Bolivariano',
  description: 'Cta  cte de Banco No. 023456'
)

activo.gl_accounts.create(
  acc_code: '1022',
  acc_parent_code: '1020',
  name: 'Banco Bolivariano',
  description: 'Cta de Ahorro No. 023456'
)

activo.gl_accounts.create(
  acc_code: '1200',
  acc_parent_code: '1000',
  name: 'Inventario',
  description: 'Inventarios de productos y servicios'
)

activo.gl_accounts.create(
  acc_code: '1210',
  acc_parent_code: '1200',
  name: 'Inventario Productos',
  description: 'Artículos para la venta'
)

activo.gl_accounts.create(
  acc_code: '1220',
  acc_parent_code: '1200',
  name: 'Mercader´ias en Tránsito',
  description: 'Mercadería comprada no ingresada'
)

activo.gl_accounts.create(
  acc_code: '1400',
  acc_parent_code: '1000',
  name: 'Cuentas por Cobrar',
  description: 'Cuentas por cobrar'
)

activo.gl_accounts.create(
  acc_code: '1410',
  acc_parent_code: '1400',
  name: 'Clientes o Deudores por Ventas',
  description: 'Valores no documentados por ventas productos o servicios'
)

activo.gl_accounts.create(
  acc_code: '1420',
  acc_parent_code: '1400',
  name: 'Deudores Varios',
  description: 'Deudas por cobrar diferentes, préstamos a empleados, otros'
)
activo.gl_accounts.create(
  acc_code: '1430',
  acc_parent_code: '1400',
  name: 'Documentos por Cobrar- Corto Plazo',
  description: 'Pagarés firmados por terceros a favor de la empresa, corto plazo'
)

activo.gl_accounts.create(
  acc_code: '1500',
  acc_parent_code: '1000',
  name: 'Anticipos',
  description: 'Anticipos y depósitos pagados por anticipado'
)

activo.gl_accounts.create(
  acc_code: '1501',
  acc_parent_code: '1500',
  name: 'Arriendos Anticipados',
  description: 'Anticipos de arriendo por anticipado'
)

activo.gl_accounts.create(
  acc_code: '1510',
  acc_parent_code: '1500',
  name: 'Anticipo a Proveedores',
  description: 'Anticipos de arriendo por anticipado'
)

activo.gl_accounts.create(
  acc_code: '1590',
  acc_parent_code: '1500',
  name: 'IVA Crédito Fiscal',
  description: 'IVA pagado en compras a ser descontado del IVA Débito Fiscal'
)

activo.gl_accounts.create(
  acc_code: '1600',
  acc_parent_code: '1000',
  name: 'Activos No Corrientes',
  description: 'Activos No realizables de inmediato'
)

activo.gl_accounts.create(
  acc_code: '1610',
  acc_parent_code: '1600',
  name: 'Equipos y Maquinarias',
  description: 'Equipos para la operación'
)

activo.gl_accounts.create(
  acc_code: '1620',
  acc_parent_code: '1600',
  name: 'Instalaciones',
  description: 'Instalaciones y adecuaciones'
)

activo.gl_accounts.create(
  acc_code: '1630',
  acc_parent_code: '1600',
  name: 'Muebles y Enseres',
  description: 'Muebles de oficina y eneseres'
)

activo.gl_accounts.create(
  acc_code: '1640',
  acc_parent_code: '1600',
  name: 'Repuestos y Herramientas',
  description: 'Repuestos y herramientas comprados'
)

activo.gl_accounts.create(
  acc_code: '1650',
  acc_parent_code: '1600',
  name: 'Otras Propiedades Equipos',
  description: 'Otros equipos propiedad de la empresa'
)
activo.gl_accounts.create(
  acc_code: '1660',
  acc_parent_code: '1600',
  name: 'Documentos y Cuentas por Cobrar',
  description: 'Documentos de largo plazo por cobrar'
)
activo.gl_accounts.create(
  acc_code: '1660',
  acc_parent_code: '1600',
  name: '(-)Provisión Cuentas Incobrables',
  description: 'Provisión por cuentas incobrables'
)


activo.gl_accounts.create(
  acc_code: '1760',
  acc_parent_code: '1600',
  name: 'Depreciación Acumulada',
  description: 'Repuestos y herramientas comprados'
)

activo.gl_accounts.create(
  acc_code: '1770',
  acc_parent_code: '1600',
  name: 'Deterioro Acumulado',
  description: 'Repuestos y herramientas comprados'
)

activo.gl_accounts.create(
  acc_code: '1800',
  acc_parent_code: '1000',
  name: 'Activos Intangibles',
  description: 'Valor del negocion en marcha'
)

activo.gl_accounts.create(
  acc_code: '1810',
  acc_parent_code: '1800',
  name: 'Derecho de Llave',
  description: 'Valor atribuído a la cesión del local antes del vencimiento del contrato'
)

activo.gl_accounts.create(
  acc_code: '1820',
  acc_parent_code: '1800',
  name: 'Derecho de marca ',
  description: 'Valor del negocion en marcha'
)

 puts "#{GlAccount.where(account_type_id: activo.id).count} Cuentas de Balance-Activo creadas"

 pasivo.gl_accounts.create(
   acc_code: '2',
   acc_parent_code: nil,
   name: 'Pasivos',
   description: 'Valores que se deben '
 )

pasivo.gl_accounts.create(
  acc_code: '2000',
  acc_parent_code: '2',
  name: 'Pasivos Corrientes',
  description: 'Valores de pago corriente'
)

pasivo.gl_accounts.create(
  acc_code: '2100',
  acc_parent_code: '2000',
  name: 'Cuentas y Documentos por Pagar',
  description: 'Valores que se deben pagar en el corto plazo'
)

pasivo.gl_accounts.create(
  acc_code: '2110',
  acc_parent_code: '2100',
  name: 'Locales',
  description: 'Valores que se deben pagar en el país'
)

pasivo.gl_accounts.create(
  acc_code: '2120',
  acc_parent_code: '2100',
  name: 'Del Exteriors',
  description: 'Valores que se deben pagar exterior'
)

pasivo.gl_accounts.create(
  acc_code: '2110',
  acc_parent_code: '2100',
  name: 'Obligaciones Con Instituciones Financieras',
  description: 'Valores que se deben pagar a instituciones financieras'
)

pasivo.gl_accounts.create(
  acc_code: '2200',
  acc_parent_code: '2000',
  name: 'Obligaciones Tributarias',
  description: 'Valores que se deben  a institucion Tributarias'
)

pasivo.gl_accounts.create(
  acc_code: '2210',
  acc_parent_code: '2200',
  name: 'IVA a Pagar',
  description: 'IVA cobrado por facturación de servicios '
)

pasivo.gl_accounts.create(
  acc_code: '2220',
  acc_parent_code: '2200',
  name: 'Impuesto a la Renta del Ejercicio',
  description: 'Valor que se debepor concepto del impuesto a la renta'
)

pasivo.gl_accounts.create(
  acc_code: '2230',
  acc_parent_code: '2200',
  name: 'Con el IESS',
  description: 'Valores que se deben  al IESS'
)

pasivo.gl_accounts.create(
  acc_code: '2240',
  acc_parent_code: '2200',
  name: 'Beneficios de Ley a Empleados',
  description: 'Valores que se deben a empleados'
)

pasivo.gl_accounts.create(
  acc_code: '2250',
  acc_parent_code: '2200',
  name: 'Participación de Empleados por Pagar',
  description: 'Valores que se deben por utilidades'
)

pasivo.gl_accounts.create(
  acc_code: '2260',
  acc_parent_code: '2200',
  name: 'Dividendos Por Pagar',
  description: 'Valores que se deben a institución tributaria'
)

pasivo.gl_accounts.create(
  acc_code: '2300',
  acc_parent_code: '2000',
  name: 'Pasivo No Corriente',
  description: 'Valores a pagarse en mediano y largo plazo'
)

pasivo.gl_accounts.create(
  acc_code: '2310',
  acc_parent_code: '2300',
  name: 'Cuentas y Documentos a Pagar',
  description: 'Valores a pagarse en mediano y largo plazo'
)

pasivo.gl_accounts.create(
  acc_code: '2310',
  acc_parent_code: '2300',
  name: 'Cuentas y Documentos a Pagar',
  description: 'Valores a pagarse en mediano y largo plazo'
)

pasivo.gl_accounts.create(
  acc_code: '2320',
  acc_parent_code: '2300',
  name: 'Anticipo de Clientes',
  description: 'Valores pagados por anticipado de clientes'
)


puts "#{GlAccount.where(account_type_id: pasivo.id).count} Cuentas del Pasivo creadas"

#**** Cuentas de Capital ***

capital.gl_accounts.create(
  acc_code: '3',
  acc_parent_code: nil,
  name: 'Capital ',
  description: 'Valores para iniciar el negocio'
)

capital.gl_accounts.create(
  acc_code: '3000',
  acc_parent_code: '3',
  name: 'Capital Social ',
  description: 'Cuentas de Capital Social'
)

capital.gl_accounts.create(
  acc_code: '3010',
  acc_parent_code: '3000',
  name: 'Capital Suscrito ',
  description: 'Capital nominal'
)

capital.gl_accounts.create(
  acc_code: '3020',
  acc_parent_code: '3000',
  name: '(-)Capital Suscrito No Pagado ',
  description: 'Cuentas de accionistas'
)

capital.gl_accounts.create(
  acc_code: '3030',
  acc_parent_code: '3000',
  name: 'Aporte de Socios Capitalizaciones',
  description: 'Cuentas de aporte de socios para futuras capitalizaciones'
)
capital.gl_accounts.create(
  acc_code: '3100',
  acc_parent_code: '3000',
  name: 'Reservas',
  description: 'Utilidades retenidas para reinversión'
)

capital.gl_accounts.create(
  acc_code: '3110',
  acc_parent_code: '3100',
  name: 'Reserva Legal',
  description: 'Reserva legal'
)

capital.gl_accounts.create(
  acc_code: '3120',
  acc_parent_code: '3100',
  name: 'Reserva Facultativa',
  description: 'Reserva legal'
)

capital.gl_accounts.create(
  acc_code: '3200',
  acc_parent_code: '3000',
  name: 'Resultados Acumulados',
  description: 'Pérdidas o Ganacias en el ejercicio'
)

capital.gl_accounts.create(
  acc_code: '3210',
  acc_parent_code: '3200',
  name: 'Ganacias Acumuladas',
  description: 'Ganacias acumuladas en el ejercicio anterior'
)

capital.gl_accounts.create(
  acc_code: '3220',
  acc_parent_code: '3200',
  name: '(-)Pérdidas Acumuladas',
  description: 'Pérdidas acumuladas en el ejercicio anterior'
)

capital.gl_accounts.create(
  acc_code: '3300',
  acc_parent_code: '3000',
  name: 'Resultado del Ejercicio',
  description: 'Pérdidas o Ganacias en el ejercicio'
)

capital.gl_accounts.create(
  acc_code: '3310',
  acc_parent_code: '3300',
  name: 'Ganancia Neta del Periodo',
  description: 'Pérdidas o Ganacias en el ejercicio'
)

capital.gl_accounts.create(
  acc_code: '3320',
  acc_parent_code: '3300',
  name: '(-)Pérdida Neta del Periodo',
  description: 'Pérdidas o Ganacias en el ejercicio'
)


puts "Cuentas de Capital creadas"

#**** Cuentas de Ingreso ****
ingreso.gl_accounts.create(
  acc_code: '4',
  acc_parent_code: nil,
  name: 'Ingresos',
  description: 'Ingresos'
)

ingreso.gl_accounts.create(
  acc_code: '4000',
  acc_parent_code: '4',
  name: 'Ingresos Varios',
  description: 'Ingresos'
)

ingreso.gl_accounts.create(
  acc_code: '4100',
  acc_parent_code: '4000',
  name: 'Ingresos Varios',
  description: 'Ingresos ordinarios'
)

ingreso.gl_accounts.create(
  acc_code: '4110',
  acc_parent_code: '4100',
  name: 'Venta de Membresías',
  description: 'Ingresos obtenidos de las ventas de membresía'
)

ingreso.gl_accounts.create(
  acc_code: '4120',
  acc_parent_code: '4100',
  name: 'Venta de Servicios',
  description: 'Venta de servicios'
)

ingreso.gl_accounts.create(
  acc_code: '4130',
  acc_parent_code: '4100',
  name: 'Ingresos por Publicidad',
  description: 'Venta de publicidad'
)

ingreso.gl_accounts.create(
  acc_code: '4140',
  acc_parent_code: '4100',
  name: 'Ingresos por Regalías',
  description: 'Venta de publicidad'
)
ingreso.gl_accounts.create(
  acc_code: '4200',
  acc_parent_code: '4',
  name: 'Otros Ingresos',
  description: 'Otros Ingresos'
)

ingreso.gl_accounts.create(
  acc_code: '4210',
  acc_parent_code: '4200',
  name: 'Intereses financieros',
  description: 'Ingreso de intereses finacieros'
)

puts "Cuentas de Ingreso creadas"

#**** Cuentas de Gasto ****

gasto.gl_accounts.create(
  acc_code: '5',
  acc_parent_code: nil,
  name: 'Gastos',
  description: 'Gastos Operacionales'
)

gasto.gl_accounts.create(
  acc_code: '5000',
  acc_parent_code: '5',
  name: 'Gastos de Operación',
  description: 'Gastos Operacionales'
)

gasto.gl_accounts.create(
  acc_code: '5010',
  acc_parent_code: '5000',
  name: 'Comisiones por Ventas',
  description: 'Comisiones pagadas'
 )

gasto.gl_accounts.create(
  acc_code: '5020',
  acc_parent_code: '5000',
  name: 'Promoción de Ventas',
  description: 'Costo de promociones'
 )

gasto.gl_accounts.create(
  acc_code: '5030',
  acc_parent_code: '5000',
  name: 'Publicidad',
  description: 'Costo de publicidad'
)

gasto.gl_accounts.create(
  acc_code: '5040',
  acc_parent_code: '5000',
  name: 'Gasto de Mercadeo',
  description: 'Costo de marketing'
)

gasto.gl_accounts.create(
  acc_code: '5200',
  acc_parent_code: '5000',
  name: 'Rol de Pagos',
  description: 'Pagos de roles'
)

gasto.gl_accounts.create(
  acc_code: '5210',
  acc_parent_code: '5000',
  name: 'Labores Contratadas',
  description: 'Labores externas contratadas'
)

gasto.gl_accounts.create(
  acc_code: '5280',
  acc_parent_code: '5000',
  name: 'Alquiler',
  description: 'Alquiler'
)

gasto.gl_accounts.create(
  acc_code: '5281',
  acc_parent_code: '5000',
  name: 'Pago Alícuota',
  description: 'Alícuotas por servicios'
)

gasto.gl_accounts.create(
  acc_code: '5300',
  acc_parent_code: '5000',
  name: 'Empresas de Servicios',
  description: 'Costo de servicios elec. tel y agua'
)
gasto.gl_accounts.create(
  acc_code: '5310',
  acc_parent_code: '5300',
  name: 'Gasto de Agua',
  description: 'Costo de servicios  agua'
)

gasto.gl_accounts.create(
  acc_code: '5320',
  acc_parent_code: '5300',
  name: 'Gasto de Electricidad',
  description: 'Costo de servicios  energía eléctrica'
)

gasto.gl_accounts.create(
  acc_code: '5390',
  acc_parent_code: '5300',
  name: 'Servicios Profesionales',
  description: 'Servicios profesionales'
)
puts "Cuentas de Gasto creadas"
