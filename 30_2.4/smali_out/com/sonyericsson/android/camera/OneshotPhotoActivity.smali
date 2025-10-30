.class public Lcom/sonyericsson/android/camera/OneshotPhotoActivity;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "OneshotPhotoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public terminateApplication()V
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivity;->finish()V

    return-void
.end method
