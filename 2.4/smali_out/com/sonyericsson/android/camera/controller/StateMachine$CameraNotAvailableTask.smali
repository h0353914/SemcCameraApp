.class Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraNotAvailableTask"
.end annotation


# instance fields
.field private final mCameraNotAvailableReason:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

.field private final mCameraNotAvailableType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V
    .registers 4

    .line 10420
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10421
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->mCameraNotAvailableType:Ljava/lang/String;

    .line 10422
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->mCameraNotAvailableReason:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 10427
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "invoke CameraNotAvailableTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10429
    :cond_d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->mCameraNotAvailableType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 10430
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraNotAvailableTask;->mCameraNotAvailableReason:Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;

    .line 10429
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCameraNotAvailableEvent(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V

    return-void
.end method
