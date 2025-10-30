.class public Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextBokehCondition.java"


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mTransparentBackground:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    packed-switch p1, :pswitch_data_32

    goto :goto_30

    :pswitch_d
    const p1, 0x7f0f00c1

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_13
    const p1, 0x7f0f00c3

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_19
    const p1, 0x7f0f00c5

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_1f
    const p1, 0x7f0f00c4

    .line 36
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_25
    const p1, 0x7f0f00c6

    .line 39
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_2b
    const p1, 0x7f0f00c7

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 52
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_7
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
