.class final Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalAlertReceiverOnDestroyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 2119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 2119
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2000(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    move-result-object v0

    monitor-enter v0

    .line 2123
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3800(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2124
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v2, 0x1

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsCalledOnDestroy:Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3802(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    .line 2125
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2000(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 2126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnDestroyTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onDestroy()V

    .line 2128
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p0
.end method
