package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {

    @Test
    public void testPozdrav() {
        String rezultat = App.pozdrav();
        assertEquals("Pozdrav iz Java aplikacije!", rezultat);
    }
}

