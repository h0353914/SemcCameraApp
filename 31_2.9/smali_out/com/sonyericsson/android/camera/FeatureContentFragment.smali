.class public Lcom/sonyericsson/android/camera/FeatureContentFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeatureContentFragment.java"


# static fields
.field public static final FRAGMENT_NAME_FEATURE_CONTENT:Ljava/lang/String; = "feature_content_fragment"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "key_orientation"

.field public static final KEY_TUTORIAL_TYPE:Ljava/lang/String; = "key_tutorial_type"


# instance fields
.field private mContainerWidth:I

.field private final mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mOrientation:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/FeatureContentFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment$1;-><init>(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->closeContentFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/FeatureContentFragment;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method private closeContentFragment()V
    .registers 4

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    .line 194
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_1a

    .line 196
    :cond_17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_1a
    return-void
.end method

.method private setupLayout()V
    .registers 5

    .line 162
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 166
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 168
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_5c

    .line 177
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 182
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_5c
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_18

    const-string v0, "key_tutorial_type"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    goto :goto_24

    :cond_18
    const-string v0, "key_tutorial_type"

    .line 75
    const-class v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 79
    :goto_24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "key_orientation"

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 83
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 84
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setupLayout()V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;-><init>(Ljava/util/List;ZZ)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_1e

    .line 146
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-eqz p1, :cond_1b

    .line 148
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 150
    :cond_1b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setupLayout()V

    :cond_1e
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1001

    if-ne p1, v4, :cond_1c

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getView()Landroid/view/View;

    move-result-object p1

    const-string p2, "translationX"

    new-array p3, v3, [F

    iget v3, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    int-to-float v3, v3

    aput v3, p3, v2

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_1c
    const/16 v4, 0x2002

    if-ne p1, v4, :cond_34

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getView()Landroid/view/View;

    move-result-object p1

    const-string p2, "translationX"

    new-array p3, v3, [F

    aput v0, p3, v2

    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    int-to-float v0, v0

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 114
    :cond_34
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0c0048

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    .line 122
    invoke-virtual {p1, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 123
    new-instance p3, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;-><init>(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 135
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    const p2, 0x7f0900b0

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onPause()V
    .registers 3

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 157
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 158
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_30

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 101
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getFeatureListTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->initSetupwizard(ZZ)V

    .line 103
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    :cond_30
    return-void
.end method
