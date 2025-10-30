.class public Lcom/sonyericsson/android/camera/OneshotVideoActivity;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "OneshotVideoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public terminateApplication()V
    .registers 1

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotVideoActivity;->finish()V

    return-void
.end method
