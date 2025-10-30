.class public Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;
.super Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;
.source "OneshotPhotoActivityOnLockScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public terminateApplication()V
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;->finish()V

    return-void
.end method
