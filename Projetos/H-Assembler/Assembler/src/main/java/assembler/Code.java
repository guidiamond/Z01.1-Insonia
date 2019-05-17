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
        char d3, d2, d1, d0;
        d3 = '0'; d2 = '0'; d1 = '0'; d0 = '0';
        if (mnemnonic.length < 2)
            return "0000";

        int idx_start;

        switch (mnemnonic[0]) {
            case "incw":
            case "decw":
            case "notw":
            case "negw":
                idx_start = 1;
                break;
            case "movw":
                idx_start = 2;
                break;
            default:
                idx_start = 3;
                break;
        }

        for (int idx = idx_start; idx < mnemnonic.length; idx++) {
            String temp = mnemnonic[idx];
            String s = "";
            for (int t_idx = 0; t_idx < temp.length(); t_idx++) {
                char t_char = temp.charAt(t_idx);
                if (t_char!='%') {
                    s += t_char;
                }
            }

            switch (s) {
                case "A":
                    d3 = '1';
                    break;
                case "S":
                    d2 = '1';
                    break;
                case "D":
                    d1 = '1';
                    break;
                case "(A)":
                    d0 = '1';
                    break;
            }
        }

        return new StringBuilder().append(d3).append(d2).append(d1).append(d0).toString();
    }

    public static String register(String s) {
        switch (s) {
            case "(%A)":
                return "010110000";
            case "%A":
                return "000110000";
            case "%D":
                return "000001100";
            case "%S":
                return "001001100";
        }
        return "000000000";
    }
    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 9 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {

        if (mnemnonic[0].equals("movw")) {
            if (mnemnonic[1].equals("%D")) {
                return "000001100";
            }
            if (mnemnonic[1].equals("%A")) {
                return "000110000";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001100";
            }
            if (mnemnonic[1].equals("(%A)")) {
                return "010110000";
            }
            if (mnemnonic[1].equals("$1")) {
                return "000111111";
            }
            if (mnemnonic[1].equals("$-1")) {
                return "000111010";
            }
            if (mnemnonic[1].equals("$0")) {
                return "000101010";
            }
        }

        if (mnemnonic[0].equals("decw")) {
            if (mnemnonic[1].equals("%D")) {
                return "000001110";
            }
            if (mnemnonic[1].equals("%A")) {
                return "000110010";
            }
            if (mnemnonic[1].equals("(%A)")) {
                return "010110010";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001110";
            } else {
                return "000101010";
            }
        }

        if (mnemnonic[0].equals("negw")) {

            if (mnemnonic[1].equals("%D")) {
                return "000001111";
            }

            if (mnemnonic[1].equals("%A")) {
                return "000110011";
            }

            if (mnemnonic[1].equals("(%A)")) {
                return "010110011";
            }

            if (mnemnonic[1].equals("%S")) {
                return "001001111";
            }
        }


        if (mnemnonic[0].equals("addw")) {
            String a = mnemnonic[1] + mnemnonic[2];
            if (a.equals("%A%D")) {
                return "000000010";
            }
            if (a.equals("%D%A")) {
                return "000000010";
            }
            if (a.equals("%S%A")) {
                return "001000010";
            }
            if (a.equals("%A%S")) {
                return "001000010";
            }
            if (a.equals("%D(%A)")) {
                return "010000010";
            }
            if (a.equals("(%A)%D")) {
                return "010000010";
            }
            if (a.equals("%S(%A)")) {
                return "011000010";
            }
            if (a.equals("(%A)%S")) {
                return "011000010";
            }
            if (a.equals("%S%D")) {
                return "101000010";
            }
            if (a.equals("%D%S")) {
                return "101000010";
            }
            if (a.equals("%A$1")) {
                return "000110111";
            }
            if (a.equals("%1$A")) {
                return "000110111";
            }
            if (a.equals("%S$1")) {
                return "001011111";
            }
            if (a.equals("%1$S")) {
                return "001011111";
            }
            if (a.equals("%D$1")) {
                return "000011111";
            }
            if (a.equals("%1$D")) {
                return "000011111";
            }
            if (a.equals("(%A)$1")) {
                return "010110111";
            }
            if (a.equals("%1($A)")) {
                return "010110111";
            }
        }
        if (mnemnonic[0].equals("incw")) {
            if (mnemnonic[1].equals("%D")) {
                return "000011111";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001011111";
            }
            if (mnemnonic[1].equals("%A")) {
                return "000110111";
            }
            if (mnemnonic[1].equals("(%A)")) {
                return "010110111";
            } else {
                return "000101010";
            }

        }

        if (mnemnonic[0].equals("notw")) {
            if (mnemnonic[1].equals("%D")) {
                return "000001101";
            }
            if (mnemnonic[1].equals("%A")) {
                return "000110001";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001101";
            }
            if (mnemnonic[1].equals("(%A)")) {
                return "010110001";
            } else {
                return "000101010";
            }
        }

        if (mnemnonic[0].equals("orw")) {
            String a = mnemnonic[1] + mnemnonic[2];

            if (a.equals("%D%A")) {
                return "000010101";
            }

            if (a.equals("%A%D")) {
                return "000010101";
            }

            if (a.equals("%S%A")) {
                return "001010101";
            }

            if (a.equals("%A%S")) {
                return "001010101";
            }
            if (a.equals("%D(%A)")) {
                return "010010101";
            }

            if (a.equals("(%A)%D")) {
                return "010010101";
            }

            if (a.equals("%S(%A)")) {
                return "011010101";
            }

            if (a.equals("(%A)%S")) {
                return "011010101";
            }

            if (a.equals("%S%D")) {
                return "101010101";
            }

            if (a.equals("%D%S")) {
                return "101010101";
            } else {
                return "000101010";
            }
        }

        if (mnemnonic[0].equals("subw")) {
            String a = mnemnonic[1] + mnemnonic[2];
            if (a.equals("%D%A")) {
                return "000010011";
            }

            if (a.equals("%A%D")) {
                return "000000111";
            }

            if (a.equals("%S%A")) {
                return "001010011";
            }

            if (a.equals("%A%S")) {
                return "001000111";
            }

            if (a.equals("%D(%A)")) {
                return "010010011";
            }

            if (a.equals("(%A)%D")) {
                return "010000111";
            }

            if (a.equals("%S(%A)")) {
                return "011010011";
            }

            if (a.equals("(%A)%S")) {
                return "011000111";
            }

            if (a.equals("%S%D")) {
                return "101010011";
            }

            if (a.equals("%D%S")) {
                return "101000111";
            }

            if (a.equals("%A$1")) {
                return "000110010";
            }

            if (a.equals("%D$1")) {
                return "000001110";
            }

            if (a.equals("%S$1")) {
                return "010001110";
            }

            if (a.equals("(%A)$1")) {
                return "010110010";
            } else {
                return "000101010";
            }
        }
        if (mnemnonic[0].equals("rsubw")) {
            String a = mnemnonic[1] + mnemnonic[2];

            if (a.equals("%D%A")) {
                return "000000111";
            }
            if (a.equals("%A%D")) {
                return "000010011";
            }
            if (a.equals("%S%A")) {
                return "001000111";
            }
            if (a.equals("%A%S")) {
                return "001010011";
            }
            if (a.equals("%D(%A)")) {
                return "010000111";
            }
            if (a.equals("(%A)%D")) {
                return "010010011";
            }
            if (a.equals("%S(%A)")) {
                return "011000111";
            }
            if (a.equals("(%A)%S")) {
                return "011010011";
            }
            if (a.equals("%S%D")) {
                return "101000111";
            }
            if (a.equals("%D%S")) {
                return "101010011";
            }
            if (a.equals("$1%A")) {
                return "000110010";
            }
            if (a.equals("$1%D")) {
                return "000001110";
            }
            if (a.equals("$1%S")) {
                return "010001110";
            }
            if (a.equals("$1(%A)")) {
                return "010110010";
            } else {
                return "000101010";
            }
        }
        if (mnemnonic[0].equals("andw")) {
            String a = mnemnonic[1] + mnemnonic[2];
            if (a.equals("%D%A")) {
                return "000000000";
            }
            if (a.equals("%A%D")) {
                return "000000000";
            }
            if (a.equals("%S%A")) {
                return "001000000";
            }
            if (a.equals("%A%S")) {
                return "001000000";
            }
            if (a.equals("%D(%A)")) {
                return "010000000";
            }
            if (a.equals("(%A)%D")) {
                return "010000000";
            }
            if (a.equals("%S(%A)")) {
                return "011000000";
            }
            if (a.equals("(%A)%S")) {
                return "011000000";
            }
            if (a.equals("%S%D")) {
                return "101000000";
            }
            if (a.equals("%D%S")) {
                return "101000000";
            } else {
                return "000101010";
            }
        }

        if (mnemnonic[0].equals("jg")) {
            switch (mnemnonic[1]) {
                case "%D":
                    return "000001100";
                case "%S":
                    return "001001100";
            }
        }
        if (mnemnonic[0].equals("je")) {

            if (mnemnonic[1].equals("%D")) {
                return "000001100";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001100";
            }
        }

        if (mnemnonic[0].equals("jge")) {

            if (mnemnonic[1].equals("%D")) {
                return "000001100";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001100";
            }
        }

        if (mnemnonic[0].equals("jl")) {

            if (mnemnonic[1].equals("%D")) {
                return "000001100";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001100";
            }
        }

        if (mnemnonic[0].equals("jne")) {
            if (mnemnonic[1].equals("%D")) {
                return "000001100";
            }
            if (mnemnonic[1].equals("%S")) {
                return "001001100";
            }
        }

        if (mnemnonic[0].equals("jle")) {
            if (mnemnonic.length == 2) {
                if (mnemnonic[1].equals("%D")) {
                    return "000001100";
                }
                if (mnemnonic[1].equals("%S")) {
                    return "001001100";
                }

            } else {
                return "000000000";
            }}

        if (mnemnonic[0].equals("jmp")) {
            if (mnemnonic.length == 2) {
                if (mnemnonic[1].equals("%D")) {
                    return "000001100";
                }
                if (mnemnonic[1].equals("%S")) {
                    return "001001100";
                }

            } else {
                return "000001100";
            }}

        return null;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch(mnemnonic[0]) {
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
            case "jmp":
                return "111";
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


