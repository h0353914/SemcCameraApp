.class public Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextQrDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    }
.end annotation


# static fields
.field private static final FADE_OUT_DURATION_MS:I = 0x3e8

.field private static final SHOW_DURATION_MS:I = 0x1b58


# instance fields
.field private mMessageListener:Landroid/view/View$OnClickListener;

.field private final mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mTransparentBackground:Z

    return-void
.end method

.method public static createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HintTextQrDetect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFadeDuration()I
    .registers 1

    const/16 p0, 0x3e8

    return p0
.end method

.method public getLeftButtonResourceId()I
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmLeftButtonResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result p0

    return p0
.end method

.method public getMessageLines()I
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmMessageLines(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result p0

    return p0
.end method

.method public getMessageListener()Landroid/view/View$OnClickListener;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mMessageListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 133
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessageType()Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    return-object p0
.end method

.method public getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmWrapType(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmPriority(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimedOutDuration()J
    .registers 3

    const-wide/16 v0, 0x1b58

    return-wide v0
.end method

.method public isToast()Z
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fgetmIsToast(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Z

    move-result p0

    return p0
.end method

.method public setMessageListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mMessageListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMessageString(Ljava/lang/String;)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->-$$Nest$fputmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;Ljava/lang/String;)V

    return-void
.end method
