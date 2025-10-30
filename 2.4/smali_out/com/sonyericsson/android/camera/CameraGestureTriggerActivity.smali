.class public Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "CameraGestureTriggerActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSuspend()V
    .registers 2

    const/16 v0, 0x8

    .line 23
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0x9

    .line 24
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xe

    .line 25
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xc

    .line 26
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xd

    .line 27
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0x15

    .line 28
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0x16

    .line 29
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishAffinity()V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
