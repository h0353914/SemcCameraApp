.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;


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

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChanged(Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 141
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    goto :goto_3e

    .line 148
    :pswitch_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->OUT_OF_FOCUS_NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    # invokes: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->needToHideHintTextPreview(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$400(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z

    move-result p1

    goto :goto_3e

    .line 143
    :pswitch_36
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    # invokes: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->needToHideHintTextPreview(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$400(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z

    move-result p1

    :goto_3e
    if-eqz p1, :cond_4f

    .line 155
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    :cond_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_36
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
