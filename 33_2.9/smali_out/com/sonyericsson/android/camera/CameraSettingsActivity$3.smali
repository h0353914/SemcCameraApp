.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$200(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->release()V

    .line 296
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$202(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/device/CameraActionSound;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    :cond_17
    return-void
.end method
