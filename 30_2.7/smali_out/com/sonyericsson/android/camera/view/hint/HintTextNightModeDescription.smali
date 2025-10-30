.class public Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextNightModeDescription.java"


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
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 34
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mNameId:I

    .line 35
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mDescription:Ljava/lang/String;

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

    const v0, 0x7f0f00f8

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
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mNameId:I

    return v0
.end method

.method public getSubMessage()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextNightModeDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object v0
.end method
