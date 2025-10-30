.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->createCameraActionSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 1349
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraActionSound;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2502(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->STOP_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_FIRST_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    .line 1358
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK_SECOND_HALF:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V

    :cond_4d
    return-void
.end method
