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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFadeDuration()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method public getLeftButtonResourceId()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mLeftButtonResourceId:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$600(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result v0

    return v0
.end method

.method public getMessageLines()I
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageLines:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result v0

    return v0
.end method

.method public getMessageListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mMessageListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageResourceId:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 133
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 134
    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageResourceId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I

    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageString:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    return-object v0
.end method

.method public getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedOutDuration()J
    .registers 3

    const-wide/16 v0, 0x1b58

    return-wide v0
.end method

.method public isToast()Z
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mIsToast:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Z

    move-result v0

    return v0
.end method

.method public setMessageListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mMessageListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMessageString(Ljava/lang/String;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    # setter for: Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->access$202(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
