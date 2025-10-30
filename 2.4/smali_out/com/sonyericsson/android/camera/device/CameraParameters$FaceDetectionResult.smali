.class public Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionResult"
.end annotation


# instance fields
.field public extFaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;",
            ">;"
        }
    .end annotation
.end field

.field public faceNum:I

.field public indexOfSelectedFace:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addFaceResult(ILandroid/graphics/Rect;Landroid/graphics/Point;IIZ)V
    .registers 8

    .line 834
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;-><init>()V

    .line 835
    iput p4, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    .line 836
    iput p1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    .line 837
    iput-object p2, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    .line 838
    iput-object p3, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->eyePosition:Landroid/graphics/Point;

    .line 839
    iput p5, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->trackingId:I

    .line 840
    iput-boolean p6, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->isAnimalFace:Z

    .line 843
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setFrameResult(I)V
    .registers 2

    .line 822
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->faceNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    .line 865
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    .line 867
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->eyePosition:Landroid/graphics/Point;

    if-eqz v5, :cond_51

    .line 870
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->eyePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    :cond_51
    iget v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 875
    iget-boolean v4, v4, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->isAnimalFace:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    .line 876
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_64
    const/16 v1, 0x5d

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
