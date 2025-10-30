.class Lcom/sonyericsson/android/camera/faultdetection/DetectorUtil;
.super Ljava/lang/Object;
.source "DetectorUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "detector"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native update()V
.end method
