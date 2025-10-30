.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$3;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->stopDetection()V
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

    .line 328
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$3;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$3;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->shutdown()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$200(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    return-void
.end method
