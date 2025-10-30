.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$1;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$1;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;)I
    .registers 3

    .line 93
    iget p1, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    iget p2, p2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 90
    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    check-cast p2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$1;->compare(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;)I

    move-result p1

    return p1
.end method
