package com.iteso.sweng.Profile;

/**
 * Created by Daniel on 12/10/14.
 */
public class Profile {

    private String name;
    private String lastname;
    private String email;
    private String password;
    private String address;
    private String phome;
    private String poffice;
    private String pmobile;
    private String nick;
    private boolean status;

    public Profile(){

        this.name=null;
        this.lastname=null;
        this.email=null;
        this.password=null;
        this.address=null;
        this.phome=null;
        this.poffice=null;
        this.pmobile=null;
        this.nick=null;
        this.status=false;

    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the phome
     */
    public String getPhome() {
        return phome;
    }

    /**
     * @param phome the phome to set
     */
    public void setPhome(String phome) {
        this.phome = phome;
    }

    /**
     * @return the poffice
     */
    public String getPoffice() {
        return poffice;
    }

    /**
     * @param poffice the poffice to set
     */
    public void setPoffice(String poffice) {
        this.poffice = poffice;
    }

    /**
     * @return the pmobile
     */
    public String getPmobile() {
        return pmobile;
    }

    /**
     * @param pmobile the pmobile to set
     */
    public void setPmobile(String pmobile) {
        this.pmobile = pmobile;
    }

    /**
     * @return the nick
     */
    public String getNick() {
        return nick;
    }

    /**
     * @param nick the nick to set
     */
    public void setNick(String nick) {
        this.nick = nick;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }
}
