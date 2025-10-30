.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextSlowMotion.java"


# instance fields
.field private final mNameId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 22
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;->mNameId:I

    return-void
.end method


# virtual methods
.method public getButtonDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getButtonMessageResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageResourceId()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;->mNameId:I

    return v0
.end method
