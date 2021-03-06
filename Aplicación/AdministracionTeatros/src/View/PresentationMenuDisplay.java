
package View;

import javax.swing.JLabel;
import javax.swing.RowFilter;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;

public class PresentationMenuDisplay extends javax.swing.JFrame {
    
    public DefaultTableModel tableModel;
    private final int ColumnAmount = 1;

    public PresentationMenuDisplay() {
        initComponents();
        this.tableModel = (DefaultTableModel) jTable_Presentations.getModel();
        initTable();
    }
    
    public void filterSearch(){
        String query = jTextField_Search.getText();
        TableRowSorter<DefaultTableModel> sorter = new TableRowSorter<>(tableModel);
        jTable_Presentations.setRowSorter(sorter);
        sorter.setRowFilter(RowFilter.regexFilter("(?i)" + query));
    }
    
    private void initTable(){
        DefaultTableCellRenderer renderer = new DefaultTableCellRenderer();
        renderer.setHorizontalAlignment(JLabel.CENTER);
        for (int i = 0; i < ColumnAmount; i++)
            jTable_Presentations.getColumnModel().getColumn(i).setCellRenderer(renderer);
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
        jButton_Confirm = new javax.swing.JButton();
        jButton_Back = new javax.swing.JButton();
        jTextField_Search = new javax.swing.JTextField();
        jLabel_StartDate = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable_Presentations = new javax.swing.JTable();
        jTextField_DateStart = new javax.swing.JTextField();
        jTextField_DateEnd = new javax.swing.JTextField();
        jLabel_EndDate = new javax.swing.JLabel();
        jButton_SearchDate = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel_BG.setBackground(new java.awt.Color(255, 255, 255));

        jPanel_Header.setBackground(new java.awt.Color(0, 51, 204));

        jLabel_Title.setFont(new java.awt.Font("Gill Sans MT", 1, 42)); // NOI18N
        jLabel_Title.setForeground(new java.awt.Color(255, 255, 255));
        jLabel_Title.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_Title.setText("ELECCION DE PRESENTACION");

        javax.swing.GroupLayout jPanel_HeaderLayout = new javax.swing.GroupLayout(jPanel_Header);
        jPanel_Header.setLayout(jPanel_HeaderLayout);
        jPanel_HeaderLayout.setHorizontalGroup(
            jPanel_HeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_HeaderLayout.createSequentialGroup()
                .addContainerGap(225, Short.MAX_VALUE)
                .addComponent(jLabel_Title)
                .addContainerGap(200, Short.MAX_VALUE))
        );
        jPanel_HeaderLayout.setVerticalGroup(
            jPanel_HeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel_HeaderLayout.createSequentialGroup()
                .addContainerGap(21, Short.MAX_VALUE)
                .addComponent(jLabel_Title, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(24, Short.MAX_VALUE))
        );

        jButton_Confirm.setBackground(new java.awt.Color(0, 51, 204));
        jButton_Confirm.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_Confirm.setForeground(new java.awt.Color(255, 255, 255));
        jButton_Confirm.setText("CONFIRMAR");
        jButton_Confirm.setToolTipText("");

        jButton_Back.setBackground(new java.awt.Color(0, 51, 204));
        jButton_Back.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_Back.setForeground(new java.awt.Color(255, 255, 255));
        jButton_Back.setText("REGRESAR");

        jTextField_Search.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTextField_Search.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextField_SearchKeyReleased(evt);
            }
        });

        jLabel_StartDate.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_StartDate.setText("FECHA INICIO (YYYY-MM-DD HH:MM)");

        jTable_Presentations.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTable_Presentations.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Inicio"
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
        jTable_Presentations.getTableHeader().setReorderingAllowed(false);
        jScrollPane2.setViewportView(jTable_Presentations);

        jTextField_DateStart.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTextField_DateStart.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextField_DateStartKeyReleased(evt);
            }
        });

        jTextField_DateEnd.setFont(new java.awt.Font("Gill Sans MT", 0, 18)); // NOI18N
        jTextField_DateEnd.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jTextField_DateEndKeyReleased(evt);
            }
        });

        jLabel_EndDate.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel_EndDate.setText("FECHA INICIO (YYYY-MM-DD HH:MM)");

        jButton_SearchDate.setBackground(new java.awt.Color(0, 51, 204));
        jButton_SearchDate.setFont(new java.awt.Font("Gill Sans MT", 1, 12)); // NOI18N
        jButton_SearchDate.setForeground(new java.awt.Color(255, 255, 255));
        jButton_SearchDate.setText("FILTRAR");
        jButton_SearchDate.setToolTipText("");

        javax.swing.GroupLayout jPanel_BGLayout = new javax.swing.GroupLayout(jPanel_BG);
        jPanel_BG.setLayout(jPanel_BGLayout);
        jPanel_BGLayout.setHorizontalGroup(
            jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel_Header, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel_BGLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2)
                    .addGroup(jPanel_BGLayout.createSequentialGroup()
                        .addComponent(jButton_Back, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jTextField_Search, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel_StartDate, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jTextField_DateStart))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel_EndDate, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jTextField_DateEnd))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton_SearchDate)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton_Confirm)))
                .addContainerGap())
        );
        jPanel_BGLayout.setVerticalGroup(
            jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel_BGLayout.createSequentialGroup()
                .addComponent(jPanel_Header, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jButton_Confirm, javax.swing.GroupLayout.DEFAULT_SIZE, 43, Short.MAX_VALUE)
                        .addComponent(jButton_SearchDate, javax.swing.GroupLayout.DEFAULT_SIZE, 43, Short.MAX_VALUE))
                    .addComponent(jButton_Back, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jTextField_Search)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel_BGLayout.createSequentialGroup()
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel_StartDate)
                            .addComponent(jLabel_EndDate))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel_BGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField_DateStart, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jTextField_DateEnd, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 8, Short.MAX_VALUE)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 437, Short.MAX_VALUE)
                .addContainerGap())
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

    private void jTextField_SearchKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField_SearchKeyReleased
        filterSearch();
    }//GEN-LAST:event_jTextField_SearchKeyReleased

    private void jTextField_DateStartKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField_DateStartKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField_DateStartKeyReleased

    private void jTextField_DateEndKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField_DateEndKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField_DateEndKeyReleased

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton jButton_Back;
    public javax.swing.JButton jButton_Confirm;
    public javax.swing.JButton jButton_SearchDate;
    private javax.swing.JLabel jLabel_EndDate;
    private javax.swing.JLabel jLabel_StartDate;
    private javax.swing.JLabel jLabel_Title;
    private javax.swing.JPanel jPanel_BG;
    private javax.swing.JPanel jPanel_Header;
    private javax.swing.JScrollPane jScrollPane2;
    public javax.swing.JTable jTable_Presentations;
    public javax.swing.JTextField jTextField_DateEnd;
    public javax.swing.JTextField jTextField_DateStart;
    public javax.swing.JTextField jTextField_Search;
    // End of variables declaration//GEN-END:variables
}
