.class public Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextTimedOutMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    }
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x3e8

.field private static final SHOW_DURATION:I = 0x1388


# instance fields
.field private final mIsToast:Z

.field private final mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 127
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mIsToast:Z

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mTransparentBackground:Z

    return-void
.end method

.method public static createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;

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

.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 159
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 160
    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I

    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageString:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedOutDuration()J
    .registers 3

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public isToast()Z
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z

    move-result v0

    return v0
.end method
