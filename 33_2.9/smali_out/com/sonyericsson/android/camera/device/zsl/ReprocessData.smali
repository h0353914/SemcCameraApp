.class public Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# instance fields
.field private image:Landroid/media/Image;

.field private result:Landroid/hardware/camera2/TotalCaptureResult;

.field private token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/media/Image;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    return-object p0
.end method

.method public getResult()Landroid/hardware/camera2/TotalCaptureResult;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public recycle()V
    .registers 5

    .line 69
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycle() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 70
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    if-eqz v0, :cond_31

    .line 72
    :try_start_24
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception v0

    const-string v1, " ### IllegalArgumentException e : "

    .line 74
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 78
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    if-eqz p0, :cond_38

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->recycle()V

    :cond_38
    return-void
.end method

.method public setImage(Landroid/media/Image;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    return-void
.end method

.method public setResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReprocessData{image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->image:Landroid/media/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->result:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->token:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
