.class public Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoPowerOffTimerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 2982
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 2996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public enable()V
    .registers 2

    .line 2991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public resetTimer()V
    .registers 2

    .line 2986
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return-void
.end method
