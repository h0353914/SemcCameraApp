.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.super Ljava/lang/Object;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    }
.end annotation


# static fields
.field public static final INFINITE_TIMEOUT_MILLIS:J = -0x1L

.field public static final NO_FADE:I = -0x1


# instance fields
.field protected mTransparentBackground:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 36
    :cond_3
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 37
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    .line 39
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMoveFocusToMessage()V

    :cond_13
    return-void
.end method

.method public detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 49
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 107
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz v0, :cond_13

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getButtonDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getButtonMessageResourceId()I
.end method

.method public getFadeDuration()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getMessageResourceId()I
.end method

.method public getNext()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object v0
.end method

.method public getSubMessage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 78
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

.method public hashCode()I
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isToast()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTransparentBackground()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return v0
.end method

.method public shouldVibrate()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
