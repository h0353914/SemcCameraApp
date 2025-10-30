.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 5

    .line 72
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close preview hinttext type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    .line 74
    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 76
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$200(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$200(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->NOT_REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 79
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_58

    const-string v0, "Unregister MotionChangedListener"

    .line 80
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 82
    :cond_58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->unregisterDeviceMotionMonitor()V

    :cond_5d
    return-void
.end method
