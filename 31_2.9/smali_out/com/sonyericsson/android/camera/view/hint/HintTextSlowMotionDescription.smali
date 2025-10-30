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

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 35
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    .line 36
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .registers 3

    .line 45
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

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

.method public getSubMessage()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object v0
.end method
