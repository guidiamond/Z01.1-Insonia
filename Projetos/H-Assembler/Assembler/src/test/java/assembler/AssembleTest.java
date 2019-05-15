package assembler;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import static org.junit.Assert.*;
import static org.junit.Assert.assertTrue;

public class AssembleTest {

    Assemble assembler = null;
    private String inFile  = "src/test/resources/isEven.nasm";
    private String outFile = "src/test/resources/isEven.hack";

    public AssembleTest() {
        try {
            // Cria objeto assembler auxiliar
            assembler = new Assemble(inFile, outFile, false );
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void fillSymbolTable() throws IOException {
        // Cria tabela de símbolos
        SymbolTable table = assembler.fillSymbolTable();
        assertTrue("R1",table.contains("R1")==true);
        assertTrue("$falso",table.contains("falso")==true);
        assertTrue("$falso",table.getAddress("falso")==13);
        assertTrue("$verdade",table.contains("verdade")==true);
        assertTrue("$verdade",table.getAddress("verdade")==7);
        assertTrue("$end",table.contains("end")==true);
        assertTrue("$end",table.getAddress("end")==16);
        assertTrue("nao",table.contains("nao")==false);
    }

    @Test
    public void generateMachineCode() throws IOException {
       // SymbolTable table = assembler.fillSymbolTable();
        SymbolTable table = assembler.fillSymbolTable();

        assembler.generateMachineCode();
        assembler.close();
        BufferedReader fileReader = new BufferedReader(new FileReader(outFile));
        assertEquals(fileReader.readLine(),"000000000000000101"); // leaw $5, %A
        assertEquals(fileReader.readLine(),"100101100000010000"); // movw (%A), %D
        assertEquals(fileReader.readLine(),"000000000000000001"); // leaw $1, %A
        assertEquals(fileReader.readLine(),"100000000000100000"); // andw %A, %D, %S
        assertEquals(fileReader.readLine(),"000000000000001101"); // leaw $falso, %A
        assertEquals(fileReader.readLine(),"100010011000000001"); // jg %S
        fileReader.readLine();                                          // nop
        assertEquals(fileReader.readLine(),"100001111110100000"); // movw $1, %S
        assertEquals(fileReader.readLine(),"000000000000010000"); // leaw $RESULTADO, %A
        assertEquals(fileReader.readLine(),"100010011000001000"); // movw %S, (%A)
        assertEquals(fileReader.readLine(),"000000000000010000"); // leaw $end, %A
        assertEquals(fileReader.readLine(),"100000011000000111"); // jmp
        fileReader.readLine();                                          // nop
        assertEquals(fileReader.readLine(),"100001010100100000"); // movw $0, %S
        assertEquals(fileReader.readLine(),"000000000000010000"); // leaw $RESULTADO, %A
        assertEquals(fileReader.readLine(),"100010011000001000"); // movw %S, (%A)
        assertEquals(fileReader.readLine(),"000000000000010000"); // leaw $RESULTADO, %A
        assertEquals(fileReader.readLine(),"100101100000100000"); // movw (%A), %S
        assertEquals(fileReader.readLine(),"000000000000000000"); // leaw $0, %A
        assertEquals(fileReader.readLine(),"100010011000001000"); // movw %S, (%A)
    }
}
