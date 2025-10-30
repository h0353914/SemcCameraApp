.class Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$2;
.super Ljava/lang/Object;
.source "FaultDetectorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->startDetection()V
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

    .line 282
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$2;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl$2;->this$0:Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;

    # invokes: Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->initialize()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;->access$100(Lcom/sonyericsson/android/camera/faultdetection/FaultDetectorImpl;)V

    return-void
.end method
