
package View;

import javax.swing.JLabel;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

public class SeatCreationDisplay extends javax.swing.JFrame {
    
    public DefaultTableModel tableModel1;
    public DefaultTableModel tableModel2;
    public DefaultTableModel tableModel3;
    private final int ColumnAmount1 = 1;
    private final int ColumnAmount2 = 2;

    public SeatCreationDisplay() {
        initComponents();
        this.tableModel1 = (DefaultTableModel) jTable_Theaters.getModel();
        initTable1();
        this.tableModel2 = (DefaultTableModel) jTable_Blocks.getModel();
        initTable2();
        this.tableModel3 = (DefaultTableModel) jTable_Seats.getModel();
        initTable3();
    }
    
    private void initTable1(){
        DefaultTableCellRenderer renderer = new DefaultTableCellRenderer();
        renderer.setHorizontalAlignment(JLabel.CENTER);
        for (int i = 0; i < ColumnAmount1; i++)
            jTable_Theaters.getColumnModel().getColumn(i).setCellRenderer(renderer);
    }
    
    private void initTable2(){
        DefaultTableCellRenderer renderer = new DefaultTableCellRenderer();
        renderer.setHorizontalAlignment(JLabel.CENTER);
        for (int i = 0; i < ColumnAmount1; i++)
            jTable_Blocks.getColumnModel().getColumn(i).setCellRenderer(renderer);
    }
    
    private void initTable3(){
        DefaultTableCellRenderer renderer = new DefaultTableCellRenderer();
        renderer.setHorizontalAlignment(JLabel.CENTER);
        for (int i = 0; i < ColumnAmount2; i++)
            jTable_Seats.getColumnModel().getColumn(i).setCellRenderer(renderer);
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel_BG = new javax.swing.JPanel();
        jPanel_Header = new javax.swing.JPanel();
        jLabel_Title = new javax.swing.JLabel();
        jButton_Back = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable_Theaters = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTable_Blocks = new javax.swing.JTable();
        jButton_ViewTheater = new javax.swing.JButton();
        jButton_AddBlock = new javax.swing.JButton();
        jScrollPane4 = new javax.swing.JScrollPane();
        jTable_Seats = new javax.swing.JTable();
        jButton_ViewBlock = new javax.swing.JButton();
        jTextField_Block = new javax.swing.JTextField();
        jLabel_Block = new javax.swing.JLabel();
        jTextField_SeatAmount = new javax.swing.JTextField();
        jLabel_SeatAmount = new javax.swing.JLabel();
        jButton_AddSeats = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel_BG.setBackground(new java.awt.Color(255, 255, 255));

        jPanel_Header.setBackground(new java.awt.Color(0, 51, 204));

        jLabel_Title.setFont(new java.awt.Font("Gill Sans MT", 1, 42)); // NOI18N
        jLabel_Title.setForeground(new java.awt.Color(255, 255, 255));
        jLabel_Title.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_Title.setText("AGREGAR ASIENTOS");

        javax.swing.GroupLayout jPanel_HeaderLayout = new javax.swing.GroupLayout(jPanel_Header);
        jPanel_Header.setLayout(jPanel_HeaderLayout);
        jPanel_HeaderLayout.setHorizontalGroup(
            jPanel_HeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_HeaderLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel_Title)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel_HeaderLayout.setVerticalGroup(
            jPanel_HeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel_HeaderLayout.createSequentialGroup()
                .addContainerGap(21, Short.MAX_VALUE)
                .addComponent(jLabel_Title, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(24, Short.MAX_VALUE))
        );

        jButton_Back.setBackground(new java.awt.Color(0, 51, 204));
        jButton_Back.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_Back.setForeground(new java.awt.Color(255, 255, 255));
        jButton_Back.setText("REGRESAR");

        jTable_Theaters.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTable_Theaters.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Teatro"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable_Theaters.getTableHeader().setReorderingAllowed(false);
        jScrollPane2.setViewportView(jTable_Theaters);

        jTable_Blocks.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTable_Blocks.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Bloque"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable_Blocks.getTableHeader().setReorderingAllowed(false);
        jScrollPane3.setViewportView(jTable_Blocks);

        jButton_ViewTheater.setBackground(new java.awt.Color(0, 51, 204));
        jButton_ViewTheater.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_ViewTheater.setForeground(new java.awt.Color(255, 255, 255));
        jButton_ViewTheater.setText("INSPECCIONAR");
        jButton_ViewTheater.setToolTipText("");

        jButton_AddBlock.setBackground(new java.awt.Color(0, 51, 204));
        jButton_AddBlock.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_AddBlock.setForeground(new java.awt.Color(255, 255, 255));
        jButton_AddBlock.setText("AGREGAR");
        jButton_AddBlock.setToolTipText("");

        jTable_Seats.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTable_Seats.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Fila", "Cantidad"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable_Seats.getTableHeader().setReorderingAllowed(false);
        jScrollPane4.setViewportView(jTable_Seats);

        jButton_ViewBlock.setBackground(new java.awt.Color(0, 51, 204));
        jButton_ViewBlock.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_ViewBlock.setForeground(new java.awt.Color(255, 255, 255));
        jButton_ViewBlock.setText("INSPECCIONAR");
        jButton_ViewBlock.setToolTipText("");

        jTextField_Block.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jTextField_Block.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        jLabel_Block.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel_Block.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_Block.setText("NOMBRE:");

        jTextField_SeatAmount.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jTextField_SeatAmount.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        jLabel_SeatAmount.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel_SeatAmount.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_SeatAmount.setText("CANTIDAD:");

        jButton_AddSeats.setBackground(new java.awt.Color(0, 51, 204));
        jButton_AddSeats.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_AddSeats.setForeground(new java.awt.Color(255, 255, 255));
        jButton_AddSeats.setText("AGREGAR");
        jButton_AddSeats.setToolTipText("");

        javax.swing.GroupLayout jPanel_BGLayout = new javax.swing.GroupLayout(jPanel_BG);
        jPanel_BG.setLayout(jPanel_BGLayout);
        jPanel_BGLayout.setHorizontalGroup(
            jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel_Header, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel_BGLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton_Back, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel_BGLayout.createSequentialGroup()
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 350, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel_BGLayout.createSequentialGroup()
                                .addGap(94, 94, 94)
                                .addComponent(jButton_ViewTheater)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel_BGLayout.createSequentialGroup()
                                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jTextField_Block)
                                    .addComponent(jLabel_Block, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton_AddBlock)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton_ViewBlock))
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 350, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 350, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_BGLayout.createSequentialGroup()
                                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jTextField_SeatAmount)
                                    .addComponent(jLabel_SeatAmount, javax.swing.GroupLayout.DEFAULT_SIZE, 114, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButton_AddSeats)))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel_BGLayout.setVerticalGroup(
            jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel_BGLayout.createSequentialGroup()
                .addComponent(jPanel_Header, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton_Back, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(5, 5, 5)
                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel_BGLayout.createSequentialGroup()
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 320, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 320, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton_ViewTheater, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jButton_ViewBlock, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jButton_AddBlock, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_BGLayout.createSequentialGroup()
                                .addComponent(jLabel_Block, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jTextField_Block, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel_BGLayout.createSequentialGroup()
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 320, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton_AddSeats, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_BGLayout.createSequentialGroup()
                                .addComponent(jLabel_SeatAmount, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jTextField_SeatAmount, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel_BG, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel_BG, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton jButton_AddBlock;
    public javax.swing.JButton jButton_AddSeats;
    public javax.swing.JButton jButton_Back;
    public javax.swing.JButton jButton_ViewBlock;
    public javax.swing.JButton jButton_ViewTheater;
    private javax.swing.JLabel jLabel_Block;
    private javax.swing.JLabel jLabel_SeatAmount;
    private javax.swing.JLabel jLabel_Title;
    private javax.swing.JPanel jPanel_BG;
    private javax.swing.JPanel jPanel_Header;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    public javax.swing.JTable jTable_Blocks;
    public javax.swing.JTable jTable_Seats;
    public javax.swing.JTable jTable_Theaters;
    public javax.swing.JTextField jTextField_Block;
    public javax.swing.JTextField jTextField_SeatAmount;
    // End of variables declaration//GEN-END:variables
}
