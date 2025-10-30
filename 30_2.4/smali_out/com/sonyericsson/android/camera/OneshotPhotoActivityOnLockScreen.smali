.class public Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "OneshotPhotoActivityOnLockScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSuspend()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;->finish()V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public terminateApplication()V
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;->finish()V

    return-void
.end method
