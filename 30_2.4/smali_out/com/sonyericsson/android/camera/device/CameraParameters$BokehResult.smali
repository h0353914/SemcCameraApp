.class public Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BokehResult"
.end annotation


# instance fields
.field private mQuality:I

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mStatus:I

    .line 1015
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mQuality:I

    return-void
.end method


# virtual methods
.method public getQuality()I
    .registers 2

    .line 1023
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mQuality:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 1019
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mStatus:I

    return v0
.end method
