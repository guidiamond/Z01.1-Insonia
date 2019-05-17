/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        if (mnemnonic[0].equals("movw")){
            if (mnemnonic.length == 4){
                if ((mnemnonic[mnemnonic.length -1].equals("%D") && mnemnonic[mnemnonic.length-2].equals("%S")) ||  ((mnemnonic[mnemnonic.length-1].equals("%S") && mnemnonic[mnemnonic.length-2].equals("%D")))){
                    return "0110";
                }
                else if((mnemnonic[mnemnonic.length -1].equals("%D") && mnemnonic[mnemnonic.length-2].equals("%A")) ||  ((mnemnonic[mnemnonic.length-1].equals("%A") && mnemnonic[mnemnonic.length-2].equals("%D")))){
                    return "1010";
                }
                else if((mnemnonic[mnemnonic.length -1].equals("%S") && mnemnonic[mnemnonic.length-2].equals("%A")) ||  ((mnemnonic[mnemnonic.length-1].equals("%A") && mnemnonic[mnemnonic.length-2].equals("%S")))){
                    return "1100";
                }
                else if((mnemnonic[mnemnonic.length -1].equals("%S") && mnemnonic[mnemnonic.length-2].equals("(%A)")) ||  ((mnemnonic[mnemnonic.length-1].equals("(%A)") && mnemnonic[mnemnonic.length-2].equals("%S")))){
                    return "0101";
                }
                else if((mnemnonic[mnemnonic.length -1].equals("%D") && mnemnonic[mnemnonic.length-2].equals("(%A)")) ||  ((mnemnonic[mnemnonic.length-1].equals("(%A)") && mnemnonic[mnemnonic.length-2].equals("%D")))){
                    return "0011";
                }}}

        switch (mnemnonic[mnemnonic.length-1]){
            case "jmp":
            case "jg":
            case "je":
            case "jge":
            case "jl":
            case "jne":
            case "jle":
                return "0000";
            case "%A":
                return "1000";
            case "%D":
                return "0010";
            case "%S":
                return "0100";
            case "(%A)":
                return "0001";
        }
        return "0000";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        String binconvert = "000";

        if (mnemnonic.length > 2){
            if ((mnemnonic[1].equals("%S") && mnemnonic[2].equals("%A")) || (mnemnonic[1].equals("%A") && mnemnonic[2].equals("%S"))) {
                binconvert = "001";
            }

            if ((mnemnonic[1].equals("%S") && mnemnonic[2].equals("(%A)")) || (mnemnonic[1].equals("(%A)") && mnemnonic[2].equals("%S"))) {
                binconvert = "011";
            }

            if ((mnemnonic[1].equals("%S") && mnemnonic[2].equals("%D")) || (mnemnonic[1].equals("%D") && mnemnonic[2].equals("%S"))) {
                binconvert = "100";

            }

            if ((mnemnonic[1].equals("%D") && mnemnonic[2].equals("(%A)")) || (mnemnonic[1].equals("(%A)") && mnemnonic[2].equals("%D"))) {
                binconvert = "010";
            }

            if (mnemnonic[2].equals("$0") || mnemnonic[2].equals("$1")) {
                if (mnemnonic[1].equals("(%A)")) binconvert = "010";
                if (mnemnonic[1].equals("%S")) binconvert = "001";
            }

        }
        else if (mnemnonic.length == 2) {
            if (mnemnonic[1].equals("(%A)")) binconvert = "010";
            if (mnemnonic[1].equals("%S")) binconvert = "001";
        }

        if (mnemnonic[0].equals("orw")) {
            String out = String.valueOf(binconvert);
            return out+"010101";
        }

        if (mnemnonic[0].equals("addw")) {
            String out = String.valueOf(binconvert);
            return out+"000010";
        }

        if (mnemnonic[0].equals("andw")) {
            String out = String.valueOf(binconvert);
            return out+"000000";
        }

        if (mnemnonic[0].equals("notw")) {
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].contains("%A")){
                return out+"110001";
            }
            else {
                return out+"001101";
            }
        }

        if (mnemnonic[0].equals("movw")) {
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].equals("%S")) {
                out = "001";
            }
            if (mnemnonic[1].equals("(%A)")) {
                out = "010";
            }
            if (mnemnonic[1].equals("%A")) {
                out = "000";
            }
            if (mnemnonic[1].equals("%D")) {
                out = "000";
            }
            if (mnemnonic[1].contains("%A") || mnemnonic[1].contains("(%A)")) {
                return out+"110000";
            }
            else {
                return out + "001100";
            }
        }

        if (mnemnonic[0].equals("incw")){
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].contains("%A")){
                return out+"110111";
            }
            else {
                return out+"011111";
            }
        }

        if (mnemnonic[0].equals("decw")){
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].contains("%A")) {
                return out+"110010";
            }
            if (mnemnonic[1].contains("(%A)")) {
                return out+"110010";
            }
            else {
                return out+"001110";
            }
        }

        if (mnemnonic[0].equals("negw")){
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].contains("%A")) {
                return out+"110011";
            }
            else {
                return out+"001111";
            }
        }


        if (mnemnonic[0].equals("subw")){
            String out = String.valueOf(binconvert);
            if (mnemnonic[1].equals("%D") || mnemnonic[1].equals("%S")) {
                if (( mnemnonic[2].equals("$1"))) {
                    return out+"001110";
                }
                if ((mnemnonic[1].equals("%D") && mnemnonic[2].equals("%S"))) {
                    return out+"000111";
                }
                return out+"010011";
            }
            if (mnemnonic[1].equals("%A") || mnemnonic[1].equals("(%A)")) {
                if (( mnemnonic[2].equals("$1"))) {
                    return out+"110010";
                }
                return out+"000111";
            }
            if ((mnemnonic[1].equals("%S") && mnemnonic[2].equals("%D"))) {
                return out+"010011";
            }



        }

        if (mnemnonic[0].equals("rsubw")) {
            String out = String.valueOf(binconvert);
            return out+"000111";
        }
        String out = String.valueOf(binconvert);
        if(mnemnonic[0].equals("jmp")) {
            return out+"001100";
        }
        else if(mnemnonic[0].equals("je")) {
            return out+"001100";
        }
        else if(mnemnonic[0].equals("jne")) {
            return out+"001100";}
        else if(mnemnonic[0].equals("jg")) {
            return out+"001100";}
        else if(mnemnonic[0].equals("jge")) {
            return out+"001100";}
        else if(mnemnonic[0].equals("jl")) {
            return out+"001100";}
        else if(mnemnonic[0].equals("jle")) {
            return out+"001100";}

        return "000000000";

    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jmp":
                return "111";
            case "jg":
                return "001";
            case "je":
                return "010";
            case "jge":
                return "011";
            case "jl":
                return "100";
            case "jne":
                return "101";
            case "jle":
                return "110";
            default:
                return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }

}