.class public Lcom/sonyericsson/android/camera/view/hint/HintTextHighSensitivityFusionCondition;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextHighSensitivityFusionCondition.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextHighSensitivityFusionCondition;->mTransparentBackground:Z

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 26
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
