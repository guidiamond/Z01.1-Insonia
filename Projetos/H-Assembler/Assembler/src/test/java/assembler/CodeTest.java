/**
 * Curso: Elementos de Sistemas
 * Arquivo: CodeTest.java
 * Created by Luciano Soares <lpsoares@insper.edu.br> 
 * Date: 16/04/2017
 */

package assembler;

import org.junit.Test;
import org.junit.Assert;
import static org.junit.Assert.assertTrue;

import assembler.Code;

public class CodeTest  {

    /**
     * Create the test case
     */
    public CodeTest() {

    }
	
    /**
     * Teste para conversão para binário
     */
    @Test
    public void testCode_toBinary() {

    	try {
    		org.junit.Assume.assumeNotNull( Code.toBinary("0") );		// ignora test
        } catch(Exception e) { 
        	org.junit.Assume.assumeNoException(e);
        	org.junit.Assert.fail();
        }  
    	
        try {

			assertTrue(Code.toBinary(    "0").equals("0000000000000000"));
			assertTrue(Code.toBinary(    "1").equals("0000000000000001"));
			assertTrue(Code.toBinary(   "10").equals("0000000000001010"));
			assertTrue(Code.toBinary(  "100").equals("0000000001100100"));
			assertTrue(Code.toBinary( "1000").equals("0000001111101000"));
			assertTrue(Code.toBinary("21845").equals("0101010101010101"));
			assertTrue(Code.toBinary("32767").equals("0111111111111111"));
			assertTrue(Code.toBinary("32767").equals("0111111111111111"));
			assertTrue(Code.toBinary("65535").equals("1111111111111111"));

                	
        } catch(Exception e) {
            e.printStackTrace();
        	org.junit.Assert.fail();
        }
    }

	/**
     * Teste para geração de código para Destino
     */
    @Test
    public void testCode_Destine() {
		try {
			assertTrue("movw %S, %A"		,Code.dest(new String[] {"movw","%S","%A"}).equals("1000"));
			assertTrue("movw %A, %S"		,Code.dest(new String[] {"movw","%A","%S"}).equals("0100"));
			assertTrue("movw %A, %D"		,Code.dest(new String[] {"movw","%A","%D"}).equals("0010"));
			assertTrue("movw %A, (%A)"		,Code.dest(new String[] {"movw","%A","(%A)"}).equals("0001"));
			assertTrue("movw %A, %S, %D"	,Code.dest(new String[] {"movw","%A","%S","%D"}).equals("0110"));
			assertTrue("movw %A, %D, %S"	,Code.dest(new String[] {"movw","%A","%D","%S"}).equals("0110"));
			assertTrue("movw %A, %D, (%A)"	,Code.dest(new String[] {"movw","%A","%D","(%A)"}).equals("0011"));
			assertTrue("movw (%A), %D"		,Code.dest(new String[] {"movw","(%A)","%D"}).equals("0010"));

			assertTrue("addw %A, %S, %S"	,Code.dest(new String[] {"addw","%A","%S","%S"}).equals("0100"));
			assertTrue("addw %S, %D, %A"	,Code.dest(new String[] {"addw","%S","%D","%A"}).equals("1000"));
            assertTrue("addw (%A) %D %D",Code.dest(new String[] {"addw","(%A)","%D","%D"}).equals("0010"));

        	assertTrue("incw %A"			,Code.dest(new String[] {"incw","%A"}).equals("1000"));
			assertTrue("incw %S"			,Code.dest(new String[] {"incw","%S"}).equals("0100"));
			assertTrue("incw %D"			,Code.dest(new String[] {"incw","%D"}).equals("0010"));
			assertTrue("incw (%A)"			,Code.dest(new String[] {"incw","(%A)"}).equals("0001"));

			assertTrue("nop",Code.dest(new String[] {"nop"}).equals("0000"));

			assertTrue("subw %D (%A) %A",Code.dest(new String[] {"subw","%D","(%A)","%A"}).equals("1000"));
			assertTrue("rsubw %D (%A) %A",Code.dest(new String[] {"rsubw","%D","(%A)","%A"}).equals("1000"));

			assertTrue("subw %D (%A) %S",Code.dest(new String[] {"subw","%D","(%A)","%S"}).equals("0100"));
			assertTrue("rsubw %D (%A) %S",Code.dest(new String[] {"rsubw","%D","(%A)","%S"}).equals("0100"));

        	assertTrue("decw %A",Code.dest(new String[] {"decw","%A"}).equals("1000"));
        	assertTrue("decw %D",Code.dest(new String[] {"decw","%D"}).equals("0010"));

        	assertTrue("notw %A",Code.dest(new String[] {"notw","%A"}).equals("1000"));
        	assertTrue("notw %D",Code.dest(new String[] {"notw","%D"}).equals("0010"));

        	assertTrue("negw %A",Code.dest(new String[] {"negw","%A"}).equals("1000"));
        	assertTrue("negw %D",Code.dest(new String[] {"negw","%D"}).equals("0010"));

        	assertTrue("andw (%A) %D %D",Code.dest(new String[] {"andw","(%A)","%D","%D"}).equals("0010"));
        	assertTrue("andw %D %A %A",Code.dest(new String[] {"andw","%D","%A","%A"}).equals("1000"));

        	assertTrue("orw (%A) %D %D",Code.dest(new String[] {"orw","(%A)","%D","%D"}).equals("0010"));
        	assertTrue("orw %D %A %A",Code.dest(new String[] {"orw","%D","%A","%A"}).equals("1000"));

        	assertTrue("jmp",Code.dest(new String[] {"jmp"}).equals("0000"));
        	assertTrue("je",Code.dest(new String[] {"je"}).equals("0000"));
        	assertTrue("jne",Code.dest(new String[] {"jne"}).equals("0000"));
        	assertTrue("jg",Code.dest(new String[] {"jg"}).equals("0000"));
        	assertTrue("jge",Code.dest(new String[] {"jge"}).equals("0000"));
        	assertTrue("jl",Code.dest(new String[] {"jl"}).equals("0000"));
        	assertTrue("jle",Code.dest(new String[] {"jle"}).equals("0000"));

		} catch(Exception e) {
		  	e.printStackTrace();
		}
    	
    }

	/**
     * Teste para geração de código para Calculo
     */
    //@Ignore
    @Test
    public void testCode_Computation() {
		try {
		
		
            assertTrue("movw %A %D",Code.comp(new String[] {"movw","%A","%D"}).equals("000110000"));
            assertTrue("movw %S %D",Code.comp(new String[] {"movw","%S","%A"}).equals("001001100"));
            assertTrue("movw %S %A",Code.comp(new String[] {"movw","%S","%A"}).equals("001001100"));
            assertTrue("movw %S (%A)",Code.comp(new String[] {"movw","%S","(%A)"}).equals("001001100"));
            assertTrue("movw %D %A",Code.comp(new String[] {"movw","%D","%A"}).equals("000001100"));
            assertTrue("movw %D (%A)",Code.comp(new String[] {"movw","%D","(%A)"}).equals("000001100"));
            assertTrue("movw (%A), %A"		,Code.comp(new String[] {"movw","(%A)","%A"}).equals("010110000"));

            assertTrue("addw %A   %D %D",Code.comp(new String[] {"addw","%A","%D","%D"}).equals("000000010"));
            assertTrue("addw (%A) %D %D",Code.comp(new String[] {"addw","(%A)","%D","%D"}).equals("010000010"));
            assertTrue("addw %A   %S %D",Code.comp(new String[] {"addw","%A","%S","%D"}).equals("001000010"));
            assertTrue("addw (%A) %S %D",Code.comp(new String[] {"addw","(%A)","%S","%D"}).equals("011000010"));
            assertTrue("addw %S   %D %D",Code.comp(new String[] {"addw","%S","%D","%D"}).equals("101000010"));
            assertTrue("addw %D   %S %S",Code.comp(new String[] {"addw","%D","%S","%D"}).equals("101000010"));

            assertTrue("incw %A"  ,Code.comp(new String[] {"incw","%A"}).equals("000110111"));
            assertTrue("incw %S"  ,Code.comp(new String[] {"incw","%S"}).equals("001011111"));
            assertTrue("incw %D"  ,Code.comp(new String[] {"incw","%D"}).equals("000011111"));
            assertTrue("incw (%A)",Code.comp(new String[] {"incw","(%A)"}).equals("010110111"));

            assertTrue("movw (%A) %D",Code.comp(new String[] {"movw","(%A)","%D"}).equals("010110000"));
            assertTrue("addw (%A) %D %D",Code.comp(new String[] {"addw","(%A)","%D","%D"}).equals("010000010"));
            assertTrue("subw %D (%A) %A",Code.comp(new String[] {"subw","%D","(%A)","%A"}).equals("010010011"));
            assertTrue("subw %D %S   %A",Code.comp(new String[] {"subw","%D","%S","%A"}).equals("101000111"));

            assertTrue("rsubw %D (%A) %A",Code.comp(new String[] {"rsubw","%D","(%A)","%A"}).equals("010000111"));
            assertTrue("decw %A",Code.comp(new String[] {"decw","%A"}).equals("000110010"));
            assertTrue("decw %D",Code.comp(new String[] {"decw","%D"}).equals("000001110"));
            assertTrue("notw %A",Code.comp(new String[] {"notw","%A"}).equals("000110001"));
            assertTrue("notw %D",Code.comp(new String[] {"notw","%D"}).equals("000001101"));
            assertTrue("negw %A",Code.comp(new String[] {"negw","%A"}).equals("000110011"));
            assertTrue("negw %D",Code.comp(new String[] {"negw","%D"}).equals("000001111"));
            assertTrue("andw (%A) %D %D",Code.comp(new String[] {"andw","(%A)","%D","%D"}).equals("010000000"));
            assertTrue("andw %D %A %A",Code.comp(new String[] {"andw","%D","%A","%A"}).equals("000000000"));
            assertTrue("orw (%A) %D %D",Code.comp(new String[] {"orw","(%A)","%D","%D"}).equals("010010101"));
            assertTrue("orw %D %A %A",Code.comp(new String[] {"orw","%D","%A","%A"}).equals("000010101"));
            assertTrue("subw (%A), $1, %A",Code.comp(new String[] {"subw","(%A)", "$1", "%A"}).equals("010110010"));

            assertTrue("jmp %D",Code.comp(new String[] {"jmp", "%D"}).equals("000001100"));
            assertTrue("je %D",Code.comp(new String[] {"je", "%D"}).equals("000001100"));
            assertTrue("jne %D",Code.comp(new String[] {"jne", "%D"}).equals("000001100"));
            assertTrue("jg %D",Code.comp(new String[] {"jg", "%D"}).equals("000001100"));
            assertTrue("jge %D",Code.comp(new String[] {"jge", "%D"}).equals("000001100"));
            assertTrue("jl %S",Code.comp(new String[] {"jl", "%S"}).equals("001001100"));
            assertTrue("jle %S",Code.comp(new String[] {"jle", "%S"}).equals("001001100"));
		} catch(Exception e) {
		  	e.printStackTrace();
		}
    	
    }

	/**
     * Teste para geração de código para Calculo
     */
    @Test
    public void testCode_Jump() {
		try {
        	assertTrue("jmp",Code.jump(new String[] {"jmp"}).equals("111"));
        	assertTrue("je",Code.jump(new String[] {"je"}).equals("010"));
        	assertTrue("jne",Code.jump(new String[] {"jne"}).equals("101"));
        	assertTrue("jg",Code.jump(new String[] {"jg"}).equals("001"));
        	assertTrue("jge",Code.jump(new String[] {"jge"}).equals("011"));
        	assertTrue("jl",Code.jump(new String[] {"jl"}).equals("100"));
        	assertTrue("jle",Code.jump(new String[] {"jle"}).equals("110"));
			assertTrue("orw %D,%A,%A",Code.jump(new String[] {"orw","%D","%A","%A"}).equals("000"));
		} catch(Exception e) {
		  	e.printStackTrace();
		}
    	
    }

}
