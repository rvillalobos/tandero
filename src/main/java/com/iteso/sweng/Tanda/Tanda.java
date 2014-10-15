package com.iteso.sweng.Tanda;

/**
 * Created by Alejandro on 15/10/2014.
 */
import java.util.Calendar;

public class Tanda {
    private int monto;
    private String name;
    private boolean concluded;
    private boolean startNow;
    public boolean isConcluded() {
        return concluded;
    }
    public void setConcluded(boolean concluded) {
        this.concluded = concluded;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getMonto() {
        return monto;
    }
    public void setMonto(int monto) {
        this.monto = monto;
    }
    public Tanda (String name, int monto){
        setName(name);
        setMonto(monto);
    }
    public boolean StartTanda (Organizer organizer, int day, int month, int year){
        Calendar cal = Calendar.getInstance();
        Calendar calendar = Calendar.getInstance();
        int currentYear = calendar.get(Calendar.YEAR);
        int currentMonth = calendar.get(Calendar.MONTH);
        int currentDay = calendar.get(Calendar.DAY_OF_MONTH);
        int start = calendar.compareTo(cal);
        if(organizer==null){
            System.out.println("Not an organizer");
            return false;
        }
        if(concluded){
            System.out.println("The Tanda you're trying to start has already concluded");
            return false;
        }
        if (day <= 0 || month <= 0 || month >= 13 || year < currentYear) {
            System.out.println("Error in date, Check day/month/day");
            return false;
        }
        int dy = year - currentYear;
        int dm = month - currentMonth;
        int dd = day - currentDay;
        if (dy == 0 && dm == 0 && dd == 0) {
            cal.set(year,month,day);
            System.out.println("Date set successfully");
            return true;
        }
        if (dy == 0) {
            if (dm == 0 || dm > 0) // >=0
                if (dd == 0 || dd > 0) // >=0
                    System.out.println("SAME YEAR, FUTURE DATE");
            cal.set(year,month,day);
            System.out.println("Date set successfully");
            return true;
        }
        if(dy==1) if (dm <= 0) if (dd <= 0) {
            System.out.println("FUTURE YEAR, FUTURE DATE");
            cal.set(year,month,day);
            System.out.println("Date set successfully");
            return true;
        }
        if(start == 0){
            System.out.println("Starting Now...");
            startNow = true;
        }
        return false;
    }
}
