.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mInHouseDetector:Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$300(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/InHouseFaultDetector;->release()V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$4;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->mEyeBlinkDetector:Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$400(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/faultdetection/EyeBlinkDetector;->release()V

    :cond_1a
    return-void
.end method
