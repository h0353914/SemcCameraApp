.class public Lcom/sonyericsson/android/camera/SetupWizardActivity;
.super Landroid/app/Activity;
.source "SetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;
    }
.end annotation


# static fields
.field static final BACK_KEY:I = 0x1

.field static final GEO_TAG_RESULT:Ljava/lang/String; = "geo_tag_result"

.field static final LENS_CORRECTION_RESULT:Ljava/lang/String; = "lens_correction_result"

.field static final SIDE_SENSE_RESULT:Ljava/lang/String; = "side_sense_result"

.field private static final TAG:Ljava/lang/String; = "SetupWizardActivity"

.field private static final TRACE:Z = true

.field static final ZOOM_ASSIST_RESULT:Ljava/lang/String; = "zoom_assist_result"


# instance fields
.field private final REQUEST_CODE_FOR_PERMISSION:I

.field REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field private mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

.field private mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field private mIsGeotagEnabled:Z

.field private mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

.field private mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

.field private mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private mResultData:Landroid/content/Intent;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    .line 87
    iput v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_CODE_FOR_PERMISSION:I

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 90
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 94
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    .line 96
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 100
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    .line 131
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 152
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 178
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .registers 1

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupLayout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setZoomAssistResult(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setLensCorrection(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return p1
.end method

.method private close()V
    .registers 3

    const v0, 0x7f090188

    .line 870
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 872
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method private dismissKeyguard()V
    .registers 3

    .line 352
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private fromExternalSettings()V
    .registers 3

    .line 819
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    goto :goto_32

    :cond_11
    const/4 v0, 0x0

    .line 829
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 830
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    goto :goto_32

    .line 821
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 822
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_32

    .line 824
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 837
    :goto_32
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-void
.end method

.method private getOrientation(I)I
    .registers 7

    .line 764
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v0

    rsub-int v0, v0, 0x168

    add-int/2addr p1, v0

    .line 765
    rem-int/lit16 p1, p1, 0x168

    .line 771
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x3c

    goto :goto_14

    :cond_12
    const/16 v0, 0x1e

    :goto_14
    rsub-int/lit8 v1, v0, 0x5a

    add-int/lit8 v2, v0, 0x5a

    .line 783
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    return v3

    :cond_20
    rsub-int v1, v0, 0x10e

    .line 786
    invoke-direct {p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2a

    return v4

    :cond_2a
    add-int/lit16 v0, v0, 0x10e

    .line 789
    invoke-direct {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_33

    return v3

    :cond_33
    return v4
.end method

.method private getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 654
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "getPermissionGroupLabel() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 658
    :try_start_11
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 659
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 661
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 663
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_69

    new-array p0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPermissionGroupLabel label :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_4d} :catch_4e

    goto :goto_69

    :catch_4e
    move-exception p0

    new-array p1, v2, [Ljava/lang/String;

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermissionGroupLabel(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 672
    :cond_69
    :goto_69
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_76

    const-string p0, "getPermissionGroupLabel() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_76
    return-object v0
.end method

.method private in(III)Z
    .registers 4

    if-lt p1, p2, :cond_6

    if-ge p1, p3, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isInteractive()Z
    .registers 2

    const-string v0, "power"

    .line 368
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_12

    .line 369
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private isPortrait()Z
    .registers 2

    .line 348
    iget p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isRestrictedMode()Z
    .registers 2

    const-string v0, "keyguard"

    .line 356
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 358
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .registers 2

    const-string v0, "keyguard"

    .line 362
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 364
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private setGeoTagResult(Z)V
    .registers 3

    .line 845
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "geo_tag_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setLensCorrection(Z)V
    .registers 3

    .line 849
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "lens_correction_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setSideSenseResult(Z)V
    .registers 3

    .line 841
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "side_sense_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setZoomAssistResult(Z)V
    .registers 3

    .line 853
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string/jumbo v0, "zoom_assist_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setupCompleted()V
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 866
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    return-void
.end method

.method private setupInterrupted()V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 858
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 859
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 860
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 861
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    return-void
.end method

.method private setupLayout()V
    .registers 5

    const-string v0, "setupLayout() E"

    .line 486
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 488
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 490
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 492
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 493
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 495
    iget-object v3, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const v0, 0x7f090188

    .line 501
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 503
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 505
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f080252

    .line 507
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p0, "setupLayout() X"

    .line 509
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .registers 4

    .line 798
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 799
    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    goto :goto_2b

    .line 812
    :cond_16
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_2b

    .line 806
    :cond_1a
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 807
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2b

    .line 801
    :cond_25
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 802
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    :goto_2b
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 79
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->backToPreviousPage()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 517
    :cond_9
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 518
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v1, "geo_tag_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 524
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_3f
    const/4 v0, 0x0

    .line 525
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 527
    :cond_47
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void

    :cond_4b
    const/4 v0, 0x1

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 532
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "onCreate() E"

    .line 214
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 219
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 223
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 226
    new-instance p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;

    invoke-direct {p1, p0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 253
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const p1, 0x7f0c0020

    .line 255
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setContentView(I)V

    const p1, 0x7f090189

    .line 256
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 259
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 289
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "onCreate() X"

    .line 293
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const-string v0, "onDestroy() E"

    .line 339
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p0, "onDestroy() X"

    .line 344
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 542
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 552
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .registers 4

    const-string v0, "onPause() E"

    .line 314
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    if-ne v0, v1, :cond_21

    .line 320
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    :cond_1e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupInterrupted()V

    .line 326
    :cond_21
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string p0, "onPause() X"

    .line 327
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8

    const-string v0, "onRequestPermissionsResult() E"

    .line 700
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 701
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 704
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 705
    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    move v0, v1

    .line 706
    :goto_12
    array-length v2, p2

    if-ge v0, v2, :cond_23

    .line 707
    aget-object v2, p2, v0

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 712
    :cond_23
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    .line 713
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 714
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_60

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 715
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_59

    goto :goto_60

    .line 732
    :cond_59
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    goto :goto_8f

    .line 717
    :cond_60
    :goto_60
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 718
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 719
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 720
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_8f

    .line 722
    :cond_79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    goto :goto_8f

    .line 726
    :cond_81
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 727
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 728
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    :cond_8f
    :goto_8f
    const-string p0, "onRequestPermissionsResult() X"

    .line 736
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    const-string v0, "onResume() E"

    .line 298
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    if-eqz v0, :cond_12

    .line 301
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 304
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->fromExternalSettings()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "onResume() X"

    .line 309
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    const-string v0, "onStop() E"

    .line 332
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "onStop() X"

    .line 334
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public showOptionalRuntimePermissionDialog()V
    .registers 9

    .line 562
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 565
    new-instance v2, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0361

    .line 568
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0079

    .line 573
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f09001f

    .line 575
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090105

    .line 576
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009b

    .line 577
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09001e

    .line 578
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f035f

    .line 581
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "android.permission-group.LOCATION"

    .line 582
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0363

    .line 583
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0f0360

    .line 584
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 586
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 589
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f035c

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f00e0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 646
    iget v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 649
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 650
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    return-void
.end method
