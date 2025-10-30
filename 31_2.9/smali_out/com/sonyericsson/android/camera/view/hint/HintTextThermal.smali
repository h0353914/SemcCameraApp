.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextThermal;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextThermal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object v0
.end method

.method public getRightButtonDescriptionResourceId()I
    .registers 2

    const v0, 0x7f0f0107

    return v0
.end method

.method public getRightButtonResourceId()I
    .registers 2

    const v0, 0x7f080184

    return v0
.end method
