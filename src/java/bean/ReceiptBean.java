package bean;

public class ReceiptBean implements java.io.Serializable {
    private int recNo;
    private String recDetails;
    private String datePayment;
    private double totalPayment;
    private String methodPayment;
    private int staffID;
    private int deviceID;
    private int custID;

    public ReceiptBean() {
    }

    public ReceiptBean(int recNo, String recDetails, String datePayment, double totalPayment, String methodPayment, int staffID, int deviceID, int custID) {
        this.recNo = recNo;
        this.recDetails = recDetails;
        this.datePayment = datePayment;
        this.totalPayment = totalPayment;
        this.methodPayment = methodPayment;
        this.staffID = staffID;
        this.deviceID = deviceID;
        this.custID = custID;
    }

    public int getRecNo() {
        return recNo;
    }

    public String getRecDetails() {
        return recDetails;
    }

    public String getDatePayment() {
        return datePayment;
    }

    public double getTotalPayment() {
        return totalPayment;
    }

    public String getMethodPayment() {
        return methodPayment;
    }

    public int getStaffID() {
        return staffID;
    }

    public int getDeviceID() {
        return deviceID;
    }

    public int getCustID() {
        return custID;
    }

    public void setRecNo(int recNo) {
        this.recNo = recNo;
    }

    public void setRecDetails(String recDetails) {
        this.recDetails = recDetails;
    }

    public void setDatePayment(String datePayment) {
        this.datePayment = datePayment;
    }

    public void setTotalPayment(double totalPayment) {
        this.totalPayment = totalPayment;
    }

    public void setMethodPayment(String methodPayment) {
        this.methodPayment = methodPayment;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public void setDeviceID(int deviceID) {
        this.deviceID = deviceID;
    }

    public void setCustID(int custID) {
        this.custID = custID;
    }
    
    
}
