.class Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraActivityFinishBroadcastReceiver"
.end annotation


# instance fields
.field final mCameraActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/android/camera/CameraActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 3

    .line 2674
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2675
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;->mCameraActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2681
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;->mCameraActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p1, :cond_13

    .line 2682
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_13

    .line 2683
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    :cond_13
    return-void
.end method
