.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextSlowMotionDescription.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mNameId:I

.field private final mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private final mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILjava/lang/String;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 34
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    .line 35
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getButtonDescriptionResourceId()I
    .registers 2

    const v0, 0x7f0e00f1

    return v0
.end method

.method public getButtonMessageResourceId()I
    .registers 2

    const v0, 0x7f0e00f1

    return v0
.end method

.method public getMessageDescriptionResourceId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageResourceId()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    return v0
.end method

.method public getSubMessage()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object v0
.end method
