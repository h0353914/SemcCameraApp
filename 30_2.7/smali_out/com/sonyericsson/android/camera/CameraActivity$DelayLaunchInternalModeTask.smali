.class Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayLaunchInternalModeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 1469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .registers 3

    .line 1469
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->isKeyguardLocked()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2400(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->launchInternalMode()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2500(Lcom/sonyericsson/android/camera/CameraActivity;)V

    :cond_d
    return-void
.end method
