package bean;

public class RepairBean implements java.io.Serializable {
    
    private int repairID;
    private String repairStatus;
    private String overallRepair;
    private String dateRepair;
    private int deviceID;
    private int custID;
    private int staffID;

    public RepairBean() {
    }

    public RepairBean(int repairID, String repairStatus, String overallRepair, String dateRepair, int deviceID, int custID, int staffID) {
        this.repairID = repairID;
        this.repairStatus = repairStatus;
        this.overallRepair = overallRepair;
        this.dateRepair = dateRepair;
        this.deviceID = deviceID;
        this.custID = custID;
        this.staffID = staffID;
    }

    public int getRepairID() {
        return repairID;
    }

    public String getRepairStatus() {
        return repairStatus;
    }

    public String getOverallRepair() {
        return overallRepair;
    }

    public String getDateRepair() {
        return dateRepair;
    }

    public int getDeviceID() {
        return deviceID;
    }

    public int getCustID() {
        return custID;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setRepairID(int repairID) {
        this.repairID = repairID;
    }

    public void setRepairStatus(String repairStatus) {
        this.repairStatus = repairStatus;
    }

    public void setOverallRepair(String overallRepair) {
        this.overallRepair = overallRepair;
    }

    public void setDateRepair(String dateRepair) {
        this.dateRepair = dateRepair;
    }

    public void setDeviceID(int deviceID) {
        this.deviceID = deviceID;
    }

    public void setCustID(int custID) {
        this.custID = custID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }
    
}
