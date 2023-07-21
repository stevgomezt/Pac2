from flask import Blueprint, request, render_template, redirect, url_for, flash
from db import mysql

contacts = Blueprint('contacts', __name__, template_folder='app/templates')


@contacts.route('/index')
def Index():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM contacts')
    data = cur.fetchall()
    cur.close()
    return render_template('index.html', contacts=data)


@contacts.route('/list', methods=['POST', 'GET'])
def list():
    per_page = 10
    cur = mysql.connection.cursor()

    # Obtener el número total de registros
    cur.execute('SELECT COUNT(*) AS total FROM contacts')
    total_records = cur.fetchone()['total']

    # Calcular el número total de páginas
    total_pages = (total_records + per_page - 1) // per_page

    # Obtener el número de página actual desde los parámetros de la solicitud GET
    page = request.args.get('page', 1, type=int)

    # Calcular el índice del primer registro en la página actual
    start_index = (page - 1) * per_page

    # Obtener los datos de los contactos para la página actual
    cur.execute('SELECT * FROM contacts LIMIT %s OFFSET %s', (per_page, start_index))
    data = cur.fetchall()

    cur.close()

    # Calcular el rango de registros mostrados en la página actual
    start_range = start_index + 1
    end_range = min(start_index + per_page, total_records)

    # Calcular el contador global de filas
    global_row_number = start_index + 1

    return render_template('list-contacts.html', contacts=data, total_pages=total_pages, current_page=page, total_records=total_records, start_range=start_range, end_range=end_range, global_row_number=global_row_number)

@contacts.route('/add_contact', methods=['POST'])
def add_contact():
    if request.method == 'POST':
        numero_documento = request.form['numero_documento']
        nombre = request.form['nombre']
        edad = request.form['edad']
        genero = request.form['genero']
        estado_civil = request.form['estado_civil']
        correo = request.form['correo']
        telefono = request.form['telefono']
        nivel_estudios = request.form['nivel_estudios']
        estrato = request.form['estrato']
        num_hijos = request.form['num_hijos']
        personas_cargo = request.form['personas_cargo']
        experiencia = request.form['experiencia']
        area_experiencia = request.form['area_experiencia']
        tiempo_ventas = request.form['tiempo_ventas']
        experiencia_general = request.form['experiencia_general']
        otra_area_experiencia = request.form['otra_area_experiencia']
        pda_color = request.form['pda_color']
        try:
            cur = mysql.connection.cursor()
            cur.execute(
                """INSERT INTO contacts 
                (numero_documento, nombre, edad, genero, estado_civil, correo, 
                telefono, nivel_estudios, estrato, num_hijos, personas_cargo, 
                experiencia, area_experiencia, tiempo_ventas, experiencia_general, 
                otra_area_experiencia, pda_color) 
                VALUES 
                (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)""",
                (numero_documento, nombre, edad, genero, estado_civil,
                 correo, telefono, nivel_estudios, estrato, num_hijos, personas_cargo,
                 experiencia, area_experiencia, tiempo_ventas, experiencia_general,
                 otra_area_experiencia, pda_color))
            mysql.connection.commit()
            flash('Contact Added successfully')
            return redirect(url_for('contacts.Index'))
        except Exception as e:
            flash(e.args[1])
            return redirect(url_for('contacts.Index'))


@contacts.route('/edit/<id>', methods=['POST', 'GET'])
def get_contact(id):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM contacts WHERE id = %s', (id))
    data = cur.fetchall()
    cur.close()
    print(data[0])
    return render_template('edit-contact.html', contact=data[0])


@contacts.route('/update/<id>', methods=['POST'])
def update_contact(id):
    if request.method == 'POST':
        numero_documento = request.form['numero_documento']
        nombre = request.form['nombre']
        edad = request.form['edad']
        genero = request.form['genero']
        estado_civil = request.form['estado_civil']
        correo = request.form['correo']
        telefono = request.form['telefono']
        nivel_estudios = request.form['nivel_estudios']
        estrato = request.form['estrato']
        num_hijos = request.form['num_hijos']
        personas_cargo = request.form['personas_cargo']
        experiencia = request.form['experiencia']
        area_experiencia = request.form['area_experiencia']
        tiempo_ventas = request.form['tiempo_ventas']
        experiencia_general = request.form['experiencia_general']
        otra_area_experiencia = request.form['otra_area_experiencia']
        pda_color = request.form['pda_color']
        cur = mysql.connection.cursor()
        cur.execute(
            """UPDATE contacts
            SET numero_documento = %s,
                nombre = %s,
                edad = %s,
                genero = %s,
                estado_civil = %s,
                correo = %s,
                telefono = %s,
                nivel_estudios = %s,
                estrato = %s,
                num_hijos = %s,
                personas_cargo = %s,
                experiencia = %s,
                area_experiencia = %s,
                tiempo_ventas = %s,
                experiencia_general = %s,
                otra_area_experiencia = %s,
                pda_color = %s
            WHERE id = %s """,
            (numero_documento, nombre, edad, genero, estado_civil, correo, telefono, nivel_estudios, estrato,
             num_hijos, personas_cargo, experiencia, area_experiencia, tiempo_ventas, experiencia_general,
             otra_area_experiencia, pda_color, id))
        flash('Contact Updated Successfully')
        mysql.connection.commit()
        return redirect(url_for('contacts.Index'))


@contacts.route('/delete/<string:id>', methods=['POST', 'GET'])
def delete_contact(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM contacts WHERE id = {0}'.format(id))
    mysql.connection.commit()
    flash('Contact Removed Successfully')
    return redirect(url_for('contacts.Index'))
