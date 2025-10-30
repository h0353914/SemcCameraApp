.class public Lcom/sonyericsson/android/camera/view/hint/HintTextHighSensitivityFusionCondition;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextHighSensitivityFusionCondition.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextHighSensitivityFusionCondition;->mTransparentBackground:Z

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

    const v0, 0x7f0e01e6

    return v0
.end method
