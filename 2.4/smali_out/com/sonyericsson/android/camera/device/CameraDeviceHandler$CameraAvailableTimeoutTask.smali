.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAvailableTimeoutTask"
.end annotation


# instance fields
.field mIsOpenCloseCompleted:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 5449
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5450
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->mIsOpenCloseCompleted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 3

    .line 5449
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;)V
    .registers 1

    .line 5449
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->setOpenCloseCompleted()V

    return-void
.end method

.method private setOpenCloseCompleted()V
    .registers 2

    const/4 v0, 0x1

    .line 5465
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->mIsOpenCloseCompleted:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraAvailableTimeoutTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
