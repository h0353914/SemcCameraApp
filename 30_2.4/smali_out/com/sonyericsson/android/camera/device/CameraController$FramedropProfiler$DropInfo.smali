.class Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DropInfo"
.end annotation


# instance fields
.field private durationNanos:J

.field private frameNumber:I

.field private timestampNanos:J


# direct methods
.method constructor <init>(IJJ)V
    .registers 6

    .line 2896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2897
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->frameNumber:I

    .line 2898
    iput-wide p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->timestampNanos:J

    .line 2899
    iput-wide p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J

    return-void
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J
    .registers 3

    .line 2891
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J

    return-wide v0
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)I
    .registers 1

    .line 2891
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->frameNumber:I

    return p0
.end method

.method static synthetic access$7200(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)J
    .registers 3

    .line 2891
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->timestampNanos:J

    return-wide v0
.end method

.method static synthetic access$7300(Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;)Ljava/util/Map;
    .registers 1

    .line 2891
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->getDropInfoMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getDropInfoMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2903
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "frameNumber"

    .line 2904
    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->frameNumber:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    .line 2905
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->timestampNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    .line 2906
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$FramedropProfiler$DropInfo;->durationNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
