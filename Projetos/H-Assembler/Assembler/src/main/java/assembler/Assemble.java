/**
 * Curso: Elementos de Sistemas
 * Arquivo: Assemble.java
 * Created by Luciano <lpsoares@insper.edu.br> 
 * Date: 04/02/2017
 *
 * 2018 @ Rafael Corsi
 */

package assembler;

import java.io.*;

/**
 * Faz a geração do código gerenciando os demais módulos
 */
public class Assemble {
    private String inputFile;              // arquivo de entrada nasm
    File hackFile = null;                  // arquivo de saída hack
    private PrintWriter outHACK = null;    // grava saida do código de máquina em Hack
    boolean debug;                         // flag que especifica se mensagens de debug são impressas
    private SymbolTable table;             // tabela de símbolos (variáveis e marcadores)

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public Assemble(String inFile, String outFileHack, boolean debug) throws IOException {
        this.debug = debug;
        inputFile  = inFile;
        hackFile   = new File(outFileHack);                      // Cria arquivo de saída .hack
        outHACK    = new PrintWriter(new FileWriter(hackFile));  // Cria saída do print para
        // o arquivo hackfile
        table      = new SymbolTable();                          // Cria e inicializa a tabela de simbolos

    }

    /**
     * primeiro passo para a construção da tabela de símbolos de marcadores (labels)
     * varre o código em busca de Símbolos novos Labels e Endereços de memórias
     * e atualiza a tabela de símbolos com os endereços.
     *
     * Dependencia : Parser, SymbolTable
     * @return
     */
    public SymbolTable fillSymbolTable() throws FileNotFoundException, IOException {
        int linha = 0;
        Parser parsLabel = new Parser(inputFile);
        while (parsLabel.advance()){
            if (parsLabel.commandType(parsLabel.command()).equals(Parser.CommandType.L_COMMAND)){
                String label = parsLabel.label(parsLabel.command());
                if (!table.contains(label)){
                    table.addEntry(label, linha);
                }
            }
            else{
                linha ++;
            }
        }
        int ramTemp = 16;
        Parser parsSymbol = new Parser(inputFile);
        while (parsSymbol.advance()){
            if (parsSymbol.commandType(parsSymbol.command()).equals(Parser.CommandType.A_COMMAND)){
                String symbol = parsSymbol.symbol(parsSymbol.command());
                if (!(symbol.charAt(0)>47 && symbol.charAt(0)<58)){ //if not number
                    if (!table.contains(symbol)){
                        table.addEntry(symbol, ramTemp);
                        ramTemp += 1;
                    }
                }
            }
        }
        return table;
    }

    /**
     * Segundo passo para a geração do código de máquina
     * Varre o código em busca de instruções do tipo A, C
     * gerando a linguagem de máquina a partir do parse das instruções.
     *
     * Dependencias : Parser, Code
     */
    public void generateMachineCode() throws FileNotFoundException, IOException{
        Parser parser = new Parser(inputFile);
        String instruction = null;
        String primeiro_segundo_bit;
        String dest, comp, jump, symbol, binario;
        /**
         * Aqui devemos varrer o código nasm linha a linha
         * e gerar a string 'instruction' para cada linha
         * de instrução válida do nasm
         */
        while (parser.advance()) {
            String[] command = parser.instruction(parser.command());
            switch (parser.commandType(parser.command())) {
                case C_COMMAND:
                    primeiro_segundo_bit = "10";
                    jump = Code.jump(command);
                    dest = Code.dest(command);
                    comp = Code.comp(command);
                    instruction = primeiro_segundo_bit + comp + dest + jump;
                    break;
                case A_COMMAND:
                    primeiro_segundo_bit = "00";
                    symbol = parser.symbol(parser.command());
                    if (table.contains(symbol)) {
                        int symbol_value = table.getAddress(symbol);
                        binario = Code.toBinary(Integer.toString(symbol_value));
                    } else {
                        binario = Code.toBinary(symbol);
                    }
                    instruction = primeiro_segundo_bit + binario;
                    break;
                default:
                    continue;
            }
            if (outHACK != null) {
                outHACK.println(instruction);
            }
        }

    }

    /**
     * Fecha arquivo de escrita
     */
    public void close() throws IOException {
        if(outHACK!=null) {
            outHACK.close();
        }
    }

    /**
     * Remove o arquivo de .hack se algum erro for encontrado
     */
    public void delete() {
        try{
            if(hackFile!=null) {
                hackFile.delete();
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

}
