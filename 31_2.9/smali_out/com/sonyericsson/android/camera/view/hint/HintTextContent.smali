.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.super Ljava/lang/Object;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    }
.end annotation


# static fields
.field public static final INFINITE_TIMEOUT_MILLIS:J = -0x1L

.field public static final MESSAGE_LINES:I = 0x3

.field public static final NO_FADE:I = -0x1


# instance fields
.field protected mTransparentBackground:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 43
    :cond_3
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 44
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 55
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 126
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz v0, :cond_13

    .line 127
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

.method public getFadeDuration()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getLeftButtonDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getLeftButtonResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageLines()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getMessageListener()Landroid/view/View$OnClickListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMessageString()Ljava/lang/String;
.end method

.method public getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNext()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object v0
.end method

.method public getRightButtonDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getRightButtonResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getSubMessage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 106
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

    .line 134
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

    .line 121
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return v0
.end method
