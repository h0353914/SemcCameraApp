.class Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WalkingParamStatus"
.end annotation


# instance fields
.field private ev:J

.field private iso:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEv()J
    .registers 3

    .line 7477
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    return-wide v0
.end method

.method public getIso()I
    .registers 1

    .line 7485
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    return p0
.end method

.method public setEv(J)V
    .registers 3

    .line 7481
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    return-void
.end method

.method public setIso(I)V
    .registers 2

    .line 7489
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 7494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalkingParamStatus{iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
