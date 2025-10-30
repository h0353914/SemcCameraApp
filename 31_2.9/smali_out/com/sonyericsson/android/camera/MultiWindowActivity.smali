.class public Lcom/sonyericsson/android/camera/MultiWindowActivity;
.super Landroid/app/Activity;
.source "MultiWindowActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowActivity"


# instance fields
.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private grantedPermission:Z

.field private isCameraActivityLaunched:Z

.field private isForeground:Z

.field private mActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeFromWindow:Z

.field private mMultiWindowMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getPermissionList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mFreeFromWindow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/MultiWindowActivity;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/MultiWindowActivity;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    return p1
.end method

.method private addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 190
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private checkCameraDisabled()Z
    .registers 3

    const-string v0, "device_policy"

    .line 218
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)"

    .line 221
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private getPermissionList()[Ljava/lang/String;
    .registers 5

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_11

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 246
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 252
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchCamera()V
    .registers 6

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->checkCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->showCameraNotAvailableError()V

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    if-ne v2, v3, :cond_32

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sonyericsson/android/camera/OneshotPhotoActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->resetNewTaskFlag(Landroid/content/Intent;)V

    goto :goto_87

    :cond_32
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    if-ne v2, v3, :cond_43

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sonyericsson/android/camera/OneshotVideoActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->resetNewTaskFlag(Landroid/content/Intent;)V

    goto :goto_87

    :cond_43
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    if-eq v2, v3, :cond_7e

    const-string v3, "android.media.action.VIDEO_CAMERA"

    if-ne v2, v3, :cond_4c

    goto :goto_7e

    .line 119
    :cond_4c
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_69

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No oneshot action found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_69
    const-string v0, "android.intent.action.MAIN"

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->finish()V

    return-void

    .line 117
    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_87
    const/high16 v0, 0x2000000

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->finish()V

    return-void
.end method

.method private resetNewTaskFlag(Landroid/content/Intent;)V
    .registers 4

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_10
    return-void
.end method

.method private showCameraNotAvailableError()V
    .registers 4

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f016c

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0464

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 235
    new-instance v1, Lcom/sonyericsson/android/camera/MultiWindowActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity$2;-><init>(Lcom/sonyericsson/android/camera/MultiWindowActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .registers 5

    .line 148
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    new-instance v1, Lcom/sonyericsson/android/camera/MultiWindowActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/camera/MultiWindowActivity$1;-><init>(Lcom/sonyericsson/android/camera/MultiWindowActivity;[Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_e
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_8

    return-void

    .line 205
    :cond_8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_1b

    .line 207
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 208
    iget-object p2, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    :cond_1b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    :cond_26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090103

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mFreeFromWindow:Z

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    .line 55
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mFreeFromWindow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f04f9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 59
    :cond_4f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f02d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    if-nez p1, :cond_15

    .line 94
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    if-nez p1, :cond_15

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->launchCamera()V

    :cond_15
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    goto :goto_16

    .line 74
    :cond_14
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    .line 77
    :goto_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    if-nez v0, :cond_27

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->launchCamera()V

    :cond_27
    return-void
.end method
