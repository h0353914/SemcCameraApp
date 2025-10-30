.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V
    .registers 2

    .line 3973
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 3973
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .registers 3

    .line 3982
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 3977
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    return-void
.end method
