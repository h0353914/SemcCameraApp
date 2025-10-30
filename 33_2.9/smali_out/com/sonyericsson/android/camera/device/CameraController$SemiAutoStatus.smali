.class Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemiAutoStatus"
.end annotation


# instance fields
.field private mISO:J

.field private mSS:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J
    .registers 3

    .line 7440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->getSS()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$17200(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V
    .registers 3

    .line 7440
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->updateISO(J)V

    return-void
.end method

.method static synthetic access$17300(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V
    .registers 3

    .line 7440
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->updateSS(J)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J
    .registers 3

    .line 7440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->getISO()J

    move-result-wide v0

    return-wide v0
.end method

.method private getISO()J
    .registers 3

    .line 7453
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    return-wide v0
.end method

.method private getSS()J
    .registers 3

    .line 7457
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    return-wide v0
.end method

.method private updateISO(J)V
    .registers 3

    .line 7445
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    return-void
.end method

.method private updateSS(J)V
    .registers 3

    .line 7449
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 7462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemiAutoStatus{mISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
