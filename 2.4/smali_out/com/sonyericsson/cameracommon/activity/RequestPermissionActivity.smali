.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    }
.end annotation


# static fields
.field private static HIGHEST_PRIORITY:I = 0x0

.field private static INVALID_ID:I = -0x1

.field private static LOWEST_PRIORITY:I = 0x7ffffffe

.field public static final TAG:Ljava/lang/String; = "RequestPermissionActivity"


# instance fields
.field private final ID_FOR_POST_DIALOG:I

.field private final ID_FOR_PRE_DIALOG:I

.field private final REQUEST_CODE_FOR_PERMISSION:I

.field private mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

.field private mCurrentShownDialog:Landroid/app/AlertDialog;

.field private mPermissionStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x100

    .line 57
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->REQUEST_CODE_FOR_PERMISSION:I

    const/16 v0, 0x201

    .line 58
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_PRE_DIALOG:I

    const/16 v0, 0x202

    .line 59
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_POST_DIALOG:I

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 235
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 236
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 238
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 52
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 52
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createPermissionStateList(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation

    .line 289
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "createPermissionStateList() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 291
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_69

    aget-object v5, v1, v4

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getGroupList()Ljava/util/List;

    move-result-object v7

    .line 296
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    if-eqz p1, :cond_2a

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 299
    invoke-virtual {v8, v10}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3c

    invoke-virtual {p0, v10}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3c

    .line 301
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 307
    :cond_58
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_66

    .line 308
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-direct {v7, p0, v5, v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 312
    :cond_69
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_96

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPermissionStateList() end:PermissionState num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    .line 312
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_96
    return-object v0
.end method

.method private decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .registers 6

    .line 414
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "decideNextAction() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 416
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 417
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const-string v0, "decideNextAction() end:DO_NOTHING"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 418
    :cond_1e
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object v0

    .line 421
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez v0, :cond_35

    .line 422
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_32

    const-string v0, "decideNextAction() end:FINISH"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 423
    :cond_32
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object v0

    .line 427
    :cond_35
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->areAllPermissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 430
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_5a

    .line 432
    :cond_46
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_5a

    .line 435
    :cond_49
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 436
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_5a

    .line 438
    :cond_58
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 442
    :goto_5a
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_7c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decideNextAction() end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7c
    return-object v0
.end method

.method private doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z
    .registers 12

    .line 447
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction() start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 449
    :cond_22
    new-array v0, v2, [Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v3, :cond_2c

    .line 451
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_2c
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$7;->$SwitchMap$com$sonyericsson$cameracommon$activity$RequestPermissionActivity$PermissionAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_f2

    goto/16 :goto_e4

    .line 502
    :pswitch_39
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    goto/16 :goto_e4

    .line 479
    :pswitch_3e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    array-length v3, v0

    move v4, v2

    :goto_45
    if-ge v4, v3, :cond_7f

    aget-object v5, v0, v4

    .line 482
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7c

    .line 483
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 484
    invoke-virtual {v7, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 485
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v8, v9, :cond_59

    .line 486
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    .line 487
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 493
    :cond_7f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_93

    .line 494
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_92

    const-string p1, "doAction() end:not done"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_92
    return v2

    .line 497
    :cond_93
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPostDialog(Ljava/util/List;)V

    goto :goto_e4

    .line 456
    :pswitch_97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    array-length v3, v0

    :goto_9d
    if-ge v2, v3, :cond_d7

    aget-object v4, v0, v2

    .line 459
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 460
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 461
    invoke-virtual {v6, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 462
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v7

    sget v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v7, v8, :cond_b1

    .line 463
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b1

    .line 464
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d4
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 470
    :cond_d7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e1

    .line 471
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    goto :goto_e4

    .line 474
    :cond_e1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPreDialog(Ljava/util/List;)V

    .line 510
    :goto_e4
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_f1

    const-string p1, "doAction() end:done"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f1
    return v1

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_97
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method private doNextAction()V
    .registers 4

    .line 398
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    .line 399
    :goto_4
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v1, :cond_10

    .line 400
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 401
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    goto :goto_4

    .line 404
    :cond_10
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z

    move-result v1

    .line 405
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v2, :cond_1b

    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    :cond_1b
    if-nez v1, :cond_20

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    :cond_20
    return-void
.end method

.method private finishActivity()V
    .registers 3

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finish()V

    return-void
.end method

.method private getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .registers 8

    .line 658
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "getPermissionGroupLabel() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const-string v0, ""

    .line 661
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getGroupName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 663
    :try_start_15
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 664
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 666
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 667
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 668
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_69

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPermissionGroupLabel label :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_4f} :catch_50

    goto :goto_69

    :catch_50
    move-exception p1

    .line 674
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPermissionGroupLabel(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 677
    :cond_69
    :goto_69
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_76

    const-string p1, "getPermissionGroupLabel() end"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_76
    return-object v0
.end method

.method private isRestrictedMode()Z
    .registers 2

    const-string v0, "keyguard"

    .line 696
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 698
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .registers 2

    const-string v0, "keyguard"

    .line 702
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 704
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .registers 3

    .line 515
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "requestPermissions() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/16 v0, 0x100

    .line 517
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->setRequested()V

    .line 520
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_24

    const-string p1, "requestPermissions() end"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private showPermissionDialog(ILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .line 536
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "showPermissionDialog() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 538
    :cond_d
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 541
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x201

    const v4, 0x7f090122

    const v5, 0x7f090021

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p1, v3, :cond_ae

    const v3, 0x7f0b0075

    .line 546
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 548
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 549
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0e02c3

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_68

    .line 555
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 558
    :cond_68
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0e02c4

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 560
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 563
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0268

    .line 572
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 581
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x80

    .line 582
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 583
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_12d

    :cond_ae
    const/16 v3, 0x202

    if-ne p1, v3, :cond_12d

    const v3, 0x7f0b0073

    .line 586
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0e02c5

    .line 589
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 591
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_d7

    .line 593
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_d7
    const p1, 0x7f090020

    .line 596
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0e02c6

    .line 597
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 599
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0e02c7

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 601
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 602
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e02c2

    .line 605
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e00cb

    .line 626
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 647
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 653
    :cond_12d
    :goto_12d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_13a

    const-string p1, "showPermissionDialog() end"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_13a
    return-void
.end method

.method private showPermissionPostDialog(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x202

    .line 531
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    return-void
.end method

.method private showPermissionPreDialog(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x201

    .line 525
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    return-void
.end method

.method private updateCurrentState()V
    .registers 11

    .line 319
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "updateCurrentState() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 321
    :cond_d
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    .line 323
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v0

    .line 324
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_52

    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentState() before state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 325
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 324
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_52

    .line 327
    :cond_45
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_52

    const-string v2, "updateCurrentState() before state=null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    :cond_52
    :goto_52
    sget v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->LOWEST_PRIORITY:I

    add-int/2addr v2, v1

    .line 333
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v2

    move-object v2, v5

    :cond_5e
    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 334
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v8

    .line 335
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v9

    if-ge v0, v8, :cond_5e

    if-ge v8, v6, :cond_5e

    if-nez v9, :cond_5e

    move-object v2, v7

    move v6, v8

    goto :goto_5e

    .line 341
    :cond_7f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-ne v0, v2, :cond_86

    .line 342
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    goto :goto_88

    .line 344
    :cond_86
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 347
    :goto_88
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_bc

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_b3

    .line 349
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentState() after state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 350
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 349
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_bc

    :cond_b3
    const-string v0, "updateCurrentState() after state=null"

    .line 352
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 356
    :cond_bc
    :goto_bc
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_c9

    const-string v0, "updateCurrentState() end"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_c9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onCreate() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 249
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "permissions_theme_res_id"

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1f

    .line 254
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setTheme(I)V

    .line 258
    :cond_1f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 259
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setContentView(I)V

    if-nez v0, :cond_3b

    .line 263
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_37

    const-string p1, "onCreate() finish():intent = null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 264
    :cond_37
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    return-void

    :cond_3b
    const-string p1, "permissions_list"

    .line 267
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->createPermissionStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 271
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez p1, :cond_5f

    .line 274
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 275
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5e

    const-string p1, "onCreate() finish()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5e
    return-void

    .line 279
    :cond_5f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_6c

    const-string p1, "onCreate() end"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 683
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDestroy() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 685
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->unregisterFrom(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 689
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 690
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 692
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_29

    const-string v0, "onDestroy() end"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 361
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onResume() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 363
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->registerTo(Landroid/content/Context;)V

    .line 367
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4b

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 369
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 370
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 369
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_4b

    :cond_42
    const-string v0, "onResume() state=null"

    .line 372
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 376
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    .line 378
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5b

    const-string v0, "onResume() end"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 383
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onStop() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 384
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    .line 387
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_21

    const-string v0, "onStop() Current dialog is shown."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 391
    :cond_21
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 394
    :cond_24
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_31

    const-string v0, "onStop() end"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_31
    return-void
.end method
