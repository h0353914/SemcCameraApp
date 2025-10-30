.class public Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextBokehCondition.java"


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mTransparentBackground:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    packed-switch p1, :pswitch_data_32

    goto :goto_30

    :pswitch_d
    const p1, 0x7f0f00b6

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_13
    const p1, 0x7f0f00b7

    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_19
    const p1, 0x7f0f00b9

    .line 32
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_1f
    const p1, 0x7f0f00b8

    .line 35
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_25
    const p1, 0x7f0f00ba

    .line 38
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_30

    :pswitch_2b
    const p1, 0x7f0f00bb

    .line 44
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
.method public getButtonMessageResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageResourceId()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    return v0
.end method
