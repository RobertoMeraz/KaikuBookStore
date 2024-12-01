/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rober
 */
public class usuarios implements Serializable {

    private String user;
    private int userId;
    private String pwd;
    private String nombre;
    private String correo;
    private boolean vigente;
    private Date fecha_nac;
    private static ArrayList<usuarios> listaUsuarios = null;
    private int contadorID = 13;

    public usuarios() {
    }

    public usuarios(int userId, String pwd, String nombre, String correo, boolean vigente, Date fecha_nac) {
        this.userId = userId;
        this.pwd = pwd;
        this.nombre = nombre;
        this.correo = correo;
        this.vigente = vigente;
        this.fecha_nac = fecha_nac;
    }

    private static ArrayList<usuarios> getListaUsuarios() {
        if (listaUsuarios == null) {
            listaUsuarios = inicializarUsuarios();
        }
        return listaUsuarios;
    }

    public usuarios(String correo, String pwd, String name, boolean activo, Date fecha) {
        this.correo = correo;
        this.nombre = name;
        this.userId = contadorID++;
        this.pwd = pwd;
        this.vigente = activo;
        this.fecha_nac = fecha;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public boolean isVigente() {
        return vigente;
    }

    public void setVigente(boolean vigente) {
        this.vigente = vigente;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public static Date formateoFecha(String date) {
        try {
            return new SimpleDateFormat("dd/MM/yyyy").parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean validarUsuario(String login, String password) {
        return login.equals("admin") && password.equals("admin");
    }

    public ArrayList<usuarios> agregaUsuario(usuarios neew) {
        ArrayList<usuarios> listaUsuarios = inicializarUsuarios();
        listaUsuarios.add(neew);
        return listaUsuarios;
    }

    static public ArrayList<usuarios> ActualizaDatos(usuarios act, int id) {
        ArrayList<usuarios> lista = inicializarUsuarios();
        for (usuarios user : lista) {
            if (act.getUserId() == id) {
                int index = lista.indexOf(act);
                lista.set(index, act);
                return lista;
            }
        }
        return lista;
    }

    static public ArrayList<usuarios> EliminarDatos(String correo) {
        ArrayList<usuarios> lista = inicializarUsuarios();
        for (usuarios user : lista) {
            if (user.getCorreo().equals(correo)) {
                int index = lista.indexOf(user);
                lista.remove(index);
                return lista;
            }
        }
        return lista;
    }

    private static ArrayList<usuarios> inicializarUsuarios() {
        ArrayList<usuarios> listado = new ArrayList<>();
        usuarios u = new usuarios();
        u.setCorreo("roberto.meraz91@uabc.edu.mx");
        u.setNombre("Roberto Meraz");
        u.setFecha_nac(new Date());
        u.setUserId(1);
        u.setVigente(true);
        u.setPwd("54321");
        listado.add(u);

        usuarios u2 = new usuarios();
        u2.setCorreo("valeria.gomez@gmail.com");
        u2.setNombre("Valeria Gomez");
        u2.setFecha_nac((formateoFecha("12/10/2001")));
        u2.setUserId(2);
        u2.setVigente(true);
        u2.setPwd("12345");
        listado.add(u2);
        return listado;
    }

    public boolean validarUsuario2(String u, String p) {
        ArrayList<usuarios> lista = getListaUsuarios();
        for (usuarios user : lista) {
            if (user.getCorreo().equals(u) && user.getPwd().equals(p)) {
                return true;
            }
        }
        return false;
    }

    static public ArrayList<usuarios> consulta() {
        return getListaUsuarios();
    }

    static public ArrayList<usuarios> EliminarUserByID(int id) {
        ArrayList<usuarios> lista = getListaUsuarios();
        lista.removeIf(user -> user.getUserId() == id);
        return lista;
    }

    static public ArrayList<usuarios> ActualizaUser(usuarios act, int id) {
        ArrayList<usuarios> lista = getListaUsuarios();
        for (int i = 0; i < lista.size(); i++) {
            if (lista.get(i).getUserId() == id) {
                lista.set(i, act);
                break;
            }
        }
        return lista;
    }

    static public boolean buscarPorId(int id) {
        ArrayList<usuarios> lista = getListaUsuarios();
        return lista.stream().anyMatch(user -> user.getUserId() == id);
    }

    public static ArrayList<usuarios> agregarUsuario(usuarios newUser, HttpSession session) {
        ArrayList<usuarios> listaUsuarios = inicializarUsuarios();
        if (session != null) {
            session.setAttribute("usuarioActual", newUser);
        }
        listaUsuarios.add(newUser);
        return listaUsuarios;
    }

    public static boolean agregarUsuario2(usuarios newUser, HttpSession session) {
        ArrayList<usuarios> listaUsuarios = getListaUsuarios(); // Usa la lista existente

        // Verifica duplicados
        if (correoExiste(newUser.getCorreo())) {
            System.out.println("Correo ya registrado: " + newUser.getCorreo());
            return false;
        }

        // Agrega el usuario
        listaUsuarios.add(newUser);

        // Actualiza la sesión si es necesario
        if (session != null) {
            session.setAttribute("usuarios", listaUsuarios);
        }

        System.out.println("Usuario registrado: " + newUser.getCorreo());
        return true;
    }

    public static boolean correoExiste(String correo) {
        return getListaUsuarios().stream()
                .anyMatch(user -> user.getCorreo().equalsIgnoreCase(correo));
    }

}
