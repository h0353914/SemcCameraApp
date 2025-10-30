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
    .registers 1

    .line 16
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public getRightButtonDescriptionResourceId()I
    .registers 1

    const p0, 0x7f0f0107

    return p0
.end method

.method public getRightButtonResourceId()I
    .registers 1

    const p0, 0x7f080184

    return p0
.end method
