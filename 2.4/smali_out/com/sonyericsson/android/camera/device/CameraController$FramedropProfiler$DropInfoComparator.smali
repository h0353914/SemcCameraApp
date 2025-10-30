.class Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfoComparator;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)I
    .registers 5

    .line 2914
    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7000(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J

    move-result-wide v0

    # getter for: Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->access$7000(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2911
    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;

    check-cast p2, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfoComparator;->compare(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)I

    move-result p1

    return p1
.end method
