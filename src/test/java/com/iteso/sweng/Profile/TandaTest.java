package com.iteso.sweng.Profile;

import com.iteso.sweng.Tanda.*;
import junit.framework.TestCase;
import org.junit.Test;

import static org.mockito.Mockito.mock;

public class TandaTest extends TestCase {
    Organizer organizer;

    Tanda tanda1;
    Tanda tanda2;
    Tanda tanda3;
    Tanda tanda4;
    Tanda tanda5;

    public void setUp() throws Exception {
        organizer = mock(Organizer.class);
        tanda1 = new Tanda("Tanda1", 1000,organizer);
        tanda2 = new Tanda("Tanda2", 2000,organizer);
        tanda3 = new Tanda("Tanda3", 3000,organizer);
        tanda4 = new Tanda("Tanda4", 4000,organizer);
        tanda5 = new Tanda("Tanda5", 5000,organizer);


    }

    @Test
    public void testStartTanda() throws Exception {
        assertEquals(true, tanda5.StartTanda(organizer,12,10,2014));
        assertEquals(false, tanda1.StartTanda(organizer,12,10,2013));
        assertEquals(false, tanda2.StartTanda(organizer,-12,10,2014));
        assertEquals(true, tanda3.StartTanda(organizer,1,1,2015));
        assertEquals(false, tanda4.StartTanda(organizer,1,1,2016));
        assertEquals(false, tanda5.StartTanda(null,12,10,2014));

    }
}