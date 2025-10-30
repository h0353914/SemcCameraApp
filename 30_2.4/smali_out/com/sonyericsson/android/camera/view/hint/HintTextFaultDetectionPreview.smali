.class public Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.source "HintTextFaultDetectionPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;
    }
.end annotation


# instance fields
.field private mResourceId:I

.field private mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_PREVIEW:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)V

    return-void
.end method


# virtual methods
.method public getButtonMessageResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageResourceId()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mResourceId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedOutDuration()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    return-object v0
.end method

.method public setMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V
    .registers 3

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionPreview$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1e

    goto :goto_1d

    :pswitch_c
    const p1, 0x7f0e016f

    .line 87
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mResourceId:I

    goto :goto_1d

    :pswitch_12
    const p1, 0x7f0e016e

    .line 83
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mResourceId:I

    goto :goto_1d

    :pswitch_18
    const p1, 0x7f0e016d

    .line 79
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mResourceId:I

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public setType(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    return-void
.end method

.method public shouldVibrate()Z
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
