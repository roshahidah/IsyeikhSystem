package bean;

public class DeviceBean {
    private int deviceID;
    private String deviceModel;
    private String deviceRepair;
    private String deviceStatus;
    private int custID;
    private int staffID;

    public DeviceBean() {
    }

    public DeviceBean(int deviceID, String deviceModel, String deviceRepair, String deviceStatus, int custID, int staffID) {
        this.deviceID = deviceID;
        this.deviceModel = deviceModel;
        this.deviceRepair = deviceRepair;
        this.deviceStatus = deviceStatus;
        this.custID = custID;
        this.staffID = staffID;
    }

    public int getDeviceID() {
        return deviceID;
    }

    public String getDeviceModel() {
        return deviceModel;
    }

    public String getDeviceRepair() {
        return deviceRepair;
    }

    public String getDeviceStatus() {
        return deviceStatus;
    }

    public int getCustID() {
        return custID;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setDeviceID(int deviceID) {
        this.deviceID = deviceID;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public void setDeviceRepair(String deviceRepair) {
        this.deviceRepair = deviceRepair;
    }

    public void setDeviceStatus(String deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    public void setCustID(int custID) {
        this.custID = custID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }
    
    
}
