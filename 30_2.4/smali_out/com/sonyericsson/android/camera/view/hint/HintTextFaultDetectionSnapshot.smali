.class public Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.source "HintTextFaultDetectionSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private mResourceId:I

.field private mShowContentListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FAULT_DETECTION_SNAPSHOT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mShowContentListener:Landroid/view/View$OnClickListener;

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

    .line 60
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mResourceId:I

    return v0
.end method

.method public getShowContentButtonClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mShowContentListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedOutDuration()J
    .registers 3

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public setMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V
    .registers 3

    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$1;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1e

    goto :goto_1d

    :pswitch_c
    const p1, 0x7f0e016b

    .line 84
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mResourceId:I

    goto :goto_1d

    :pswitch_12
    const p1, 0x7f0e0166

    .line 80
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mResourceId:I

    goto :goto_1d

    :pswitch_18
    const p1, 0x7f0e016a

    .line 76
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mResourceId:I

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public setShowContentButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->mShowContentListener:Landroid/view/View$OnClickListener;

    return-void
.end method
