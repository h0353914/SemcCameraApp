.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EyeDetectionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;
    }
.end annotation


# instance fields
.field private mIsAvailable:Z

.field private mIsEyeDetectionEnabled:Z

.field private mRequestVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z

    return p1
.end method

.method private update()V
    .registers 3

    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mRequestVisible:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setClickable(Z)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setVisibility(I)V

    goto :goto_19

    .line 92
    :cond_11
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setClickable(Z)V

    const/16 v0, 0x8

    .line 93
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setVisibility(I)V

    :goto_19
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mRequestVisible:Z

    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->update()V

    return-void
.end method

.method public isEyeDetectionEnabled()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z

    return v0
.end method

.method public resetButton()V
    .registers 3

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsEyeDetectionEnabled:Z

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f080156

    .line 65
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setBackgroundResource(I)V

    return-void
.end method

.method public set(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mIsAvailable:Z

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->update()V

    return-void
.end method

.method public setEyeDetectionOnClickListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;)V
    .registers 3

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton$EyeDetectionStateListener;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->mRequestVisible:Z

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/EyeDetectionButton;->update()V

    return-void
.end method
