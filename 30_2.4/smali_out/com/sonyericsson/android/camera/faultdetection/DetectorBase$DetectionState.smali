.class abstract Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;
.super Ljava/lang/Object;
.source "DetectorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DetectionState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;->this$0:Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;)V
    .registers 3

    .line 202
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$DetectionState;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DetectorBase;)V

    return-void
.end method


# virtual methods
.method protected canDetectInPreview()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected canDetectInSnapshot()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
.end method

.method protected abstract changeDetectableIfNeeded(Lcom/sonyericsson/android/camera/configuration/parameters/FaultDetection;)V
.end method

.method protected isDetectableCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .registers 3

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectorBase$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_10

    const/4 p1, 0x0

    return p1

    :pswitch_d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected pause()V
    .registers 1

    return-void
.end method

.method protected resume()V
    .registers 1

    return-void
.end method
