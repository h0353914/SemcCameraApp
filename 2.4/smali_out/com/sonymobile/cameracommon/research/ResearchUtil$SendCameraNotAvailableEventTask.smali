.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendCameraNotAvailableEventTask"
.end annotation


# instance fields
.field private final is_camera_available:Ljava/lang/String;

.field private final mReason:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;)V
    .registers 5

    .line 515
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->mType:Ljava/lang/String;

    .line 517
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 518
    invoke-virtual {p3, p1}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_25

    :cond_20
    const-string p1, "FALSE"

    .line 521
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->is_camera_available:Ljava/lang/String;

    goto :goto_29

    :cond_25
    :goto_25
    const-string p1, "TRUE"

    .line 519
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->is_camera_available:Ljava/lang/String;

    .line 523
    :goto_29
    invoke-virtual {p4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailableReason;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 528
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->mReason:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->is_camera_available:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendCameraNotAvailableEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
