.class Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;
.super Ljava/lang/Object;
.source "QrDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$1000(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable$1;->this$1:Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/qrdetection/QrDetector$DetectRunnable;->this$0:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    # getter for: Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->mScanResult:Lcom/google/zxing/Result;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->access$800(Lcom/sonyericsson/android/camera/qrdetection/QrDetector;)Lcom/google/zxing/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;->onDetectResult(Lcom/google/zxing/Result;)V

    return-void
.end method
