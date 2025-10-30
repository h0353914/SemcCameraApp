.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;,
        Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;,
        Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;
    }
.end annotation


# static fields
.field private static final DELETE_MEDIA_FILE_THREAD_NAME:Ljava/lang/String; = "DelFile"

.field private static final ILLUMINANCE_VALUE_THRESHOLD:F = 2.0f

.field private static final MIN_DISPLAY_TIME_MILLIS:J = 0x7d0L


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mAscDetectionType:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

.field private mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

.field private mDisplayStartTime:J

.field private mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

.field private mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

.field private mFaultPreviewHintUserRejectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;",
            "Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;",
            ">;"
        }
    .end annotation
.end field

.field private mHideHintTextPreviewTask:Ljava/lang/Runnable;

.field private mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

.field private mHintTextFaultDetectionSnapshot:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

.field private final mHintTextPreviewEventListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

.field private mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

.field private mIlluminanceValue:F

.field private mIsBlurRestricted:Z

.field private mIsDuringSnapshot:Z

.field private mIsRestrictedFaultDetection:Z

.field private mMotionChangedListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

.field private mNeedResetFaultDetectionRestriction:Z

.field private final mOutSideClickListener:Landroid/view/View$OnClickListener;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .registers 6

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mOutSideClickListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$2;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextPreviewEventListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    const/high16 v0, 0x40000000    # 2.0f

    .line 104
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIlluminanceValue:F

    .line 106
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$3;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$4;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mAscDetectionType:Ljava/util/Comparator;

    .line 128
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$5;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mMotionChangedListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 172
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 173
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 174
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextPreviewEventListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;

    .line 176
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->setHintTextFaultDetectionPreviewEventLister(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextFaultDetectionPreviewEventLister;)V

    .line 178
    new-instance p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    .line 179
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionSnapshot:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 180
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Ljava/util/Map;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->needToHideHintTextPreview(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/CameraActivity;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showFaultPreview(ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method private changeFaultPreviewOrientation()V
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz v0, :cond_1e

    .line 658
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v0, 0x0

    goto :goto_19

    :cond_17
    const/16 v0, -0x5a

    .line 672
    :goto_19
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->changeOrientation(I)V

    :cond_1e
    return-void
.end method

.method private getHighestPriorityType(Ljava/util/List;)Lcom/sonyericsson/android/camera/faultdetection/DetectionType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;)",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mAscDetectionType:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 708
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    return-object p1
.end method

.method private getNotificationTextResId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)I
    .registers 3

    .line 677
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$view$hint$HintTextFaultDetectionSnapshot$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1a

    const/4 p1, -0x1

    return p1

    :pswitch_d
    const p1, 0x7f0e016c

    return p1

    :pswitch_11
    const p1, 0x7f0e0165

    return p1

    :pswitch_15
    const p1, 0x7f0e0169

    return p1

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private varargs hidePreviewHintText([Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V
    .registers 4

    .line 212
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 217
    :cond_f
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 218
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    :cond_2d
    return-void
.end method

.method private initFaultDetectionDataHolder()V
    .registers 3

    .line 271
    new-instance v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    return-void
.end method

.method private initFaultPreviewHintShowingHistoryMap()V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->NOT_REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->NOT_REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->NOT_REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    .line 263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBlurRestricted()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsBlurRestricted:Z

    return v0
.end method

.method private isDuringSnapshot()Z
    .registers 2

    .line 758
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsDuringSnapshot:Z

    return v0
.end method

.method private isRestrictedFaultDetection()Z
    .registers 2

    .line 744
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsRestrictedFaultDetection:Z

    return v0
.end method

.method private needToHideHintTextPreview(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z
    .registers 10

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 523
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v0

    .line 525
    sget-object v2, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_23

    .line 526
    sget-object p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    if-ne v0, p1, :cond_21

    move p1, v3

    goto :goto_2f

    :cond_21
    move p1, v1

    goto :goto_2f

    .line 528
    :cond_23
    sget-object p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    if-eq v0, p1, :cond_2e

    sget-object p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    if-ne v0, p1, :cond_2c

    goto :goto_2e

    :cond_2c
    move p1, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move p1, v3

    :goto_2f
    if-eqz p1, :cond_53

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDisplayStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-gez p1, :cond_52

    .line 535
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    sub-long/2addr v6, v4

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_52
    return v3

    :cond_53
    return v1
.end method

.method private showFaultPreview(ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 15

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-nez v1, :cond_1d

    .line 625
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFaultPreviewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0900b4

    .line 626
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 627
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    .line 629
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz v0, :cond_55

    .line 631
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    move v8, v2

    goto :goto_38

    :cond_35
    const/16 v0, -0x5a

    move v8, v0

    .line 645
    :goto_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 646
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mOutSideClickListener:Landroid/view/View$OnClickListener;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 647
    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->show(ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V

    .line 649
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_55

    const-string p1, "Show FaultPreview"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method private showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V
    .registers 9

    .line 571
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->getNotificationTextResId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)I

    move-result v2

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreUri:Landroid/net/Uri;

    .line 573
    new-instance v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$6;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Landroid/net/Uri;)V

    .line 584
    new-instance v5, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$7;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$7;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V

    .line 591
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    if-ne p1, v0, :cond_1e

    iget v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIlluminanceValue:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_36

    .line 592
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionSnapshot:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->setMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V

    .line 593
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionSnapshot:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    new-instance v6, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;->setShowContentButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionSnapshot:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->post(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_36
    const/4 p1, 0x0

    .line 618
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 619
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    return-void
.end method


# virtual methods
.method hideAutoFocusPreviewHintText()V
    .registers 4

    const/4 v0, 0x2

    .line 207
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hidePreviewHintText([Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V

    return-void
.end method

.method hideFaultPreview()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz v0, :cond_2d

    .line 188
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->hide()V

    .line 191
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "Hidden FaultPreview"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 192
    :cond_26
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCheckFaultPhotoEvent()V

    :cond_2d
    return-void
.end method

.method hidePreviewHintText()V
    .registers 2

    .line 200
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->values()[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->hidePreviewHintText([Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V

    return-void
.end method

.method initialize()V
    .registers 2

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->initFaultPreviewHintShowingHistoryMap()V

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->initFaultDetectionDataHolder()V

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    return-void
.end method

.method isFaultPreviewShown()Z
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz v0, :cond_c

    .line 230
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method onCaptureCancel()V
    .registers 2

    .line 733
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->isDuringSnapshot()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    :cond_a
    return-void
.end method

.method onFaultDetectionNotificationSnapshotUpdate(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;I)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->isBlurRestricted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 336
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->HAND_BLUR:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 338
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->NONE:Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_18
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 341
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", detection list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 341
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 346
    :cond_44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->getHighestPriorityType(Ljava/util/List;)Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    move-result-object p1

    .line 348
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_126

    .line 364
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    if-ne p1, p2, :cond_123

    .line 365
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 366
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    goto/16 :goto_125

    .line 358
    :pswitch_61
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    goto :goto_69

    .line 354
    :pswitch_64
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->HAND_BLUR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    goto :goto_69

    .line 350
    :pswitch_67
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->EYE_BLINK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    .line 373
    :goto_69
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->updateFaultDetection(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    .line 375
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_a0

    .line 376
    new-array p1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_a0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 381
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_c6

    new-array p1, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fault Notification was already shown: type = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 382
    :cond_c6
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 383
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    return-void

    .line 387
    :cond_cd
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    if-eq p1, p2, :cond_da

    .line 388
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iput p2, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    .line 389
    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    goto :goto_fc

    .line 392
    :cond_da
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    if-eqz p1, :cond_f8

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    .line 393
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;->isPriorityHigh(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)Z

    move-result p1

    if-eqz p1, :cond_eb

    goto :goto_f8

    .line 397
    :cond_eb
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    if-ne p1, p2, :cond_f7

    .line 398
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 399
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    :cond_f7
    return-void

    .line 394
    :cond_f8
    :goto_f8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    .line 405
    :goto_fc
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class p2, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 406
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 405
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 407
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class p2, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 408
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    .line 411
    :cond_115
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    if-ne p1, p2, :cond_122

    .line 413
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V

    :cond_122
    return-void

    .line 368
    :cond_123
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mNeedResetFaultDetectionRestriction:Z

    :goto_125
    return-void

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_67
        :pswitch_64
        :pswitch_61
    .end packed-switch
.end method

.method onFaultNotificationPreviewUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
            ">;)V"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 425
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 426
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_1b

    const-string p1, "Snapshot HintText is displayed"

    .line 427
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1b
    return-void

    .line 432
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->isRestrictedFaultDetection()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 433
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2f

    const-string p1, "during snapshot."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    .line 439
    sget-object v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$9;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$DetectionType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_114

    return-void

    .line 449
    :pswitch_43
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    goto :goto_5d

    .line 445
    :pswitch_46
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    goto :goto_5d

    .line 455
    :pswitch_49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->needToHideHintTextPreview(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 456
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 457
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    :cond_5a
    return-void

    .line 441
    :pswitch_5b
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    .line 465
    :goto_5d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->updateFaultDetection(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)V

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    if-ne p1, v1, :cond_6f

    return-void

    .line 471
    :cond_6f
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->isMoving()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 472
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_86

    const-string p1, "device is moving."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_86
    return-void

    .line 476
    :cond_87
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 477
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isFaultDetectionHintDisplayed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 478
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object p1

    if-ne v0, p1, :cond_a7

    .line 479
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 483
    :cond_a7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getType()Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->isPriorityHigh(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 484
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHideHintTextPreviewTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 486
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    goto :goto_c9

    :cond_c8
    return-void

    .line 492
    :cond_c9
    :goto_c9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_d4

    return-void

    .line 496
    :cond_d4
    sget-object p1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    if-ne v0, p1, :cond_e0

    iget p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIlluminanceValue:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_113

    .line 498
    :cond_e0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->setMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V

    .line 499
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->setType(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)V

    .line 501
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    .line 502
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;->getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isHintTextVisible(Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;)Z

    move-result p1

    if-nez p1, :cond_106

    .line 503
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_105

    const-string p1, "Hint text is hidden."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_105
    return-void

    .line 507
    :cond_106
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextFaultDetectionPreview:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->post(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDisplayStartTime:J

    :cond_113
    return-void

    :pswitch_data_114
    .packed-switch 0x3
        :pswitch_5b
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_49
    .end packed-switch
.end method

.method onStoreCompleted()V
    .registers 6

    .line 551
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 552
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFaultRequestId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mStoreRequestId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 557
    :cond_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;

    .line 559
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionNotificationView:Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/FaultDetectionNotificationView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 560
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_58

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fault Notification was already shown: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_58
    return-void

    .line 564
    :cond_59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    if-ne v1, v2, :cond_66

    .line 566
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V

    :cond_66
    return-void
.end method

.method registerDeviceMotionMonitor()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultPreviewHintUserRejectionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;->NOT_REJECT:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$HintRejection;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 279
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "Do not register MotionChangedListener"

    .line 280
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_17
    return-void

    .line 284
    :cond_18
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 285
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isInHouseDetectWhileMovingEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_41

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    if-nez v0, :cond_3c

    .line 288
    new-instance v0, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mMotionChangedListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->registerListener(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;)V

    .line 291
    :cond_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->startMonitoring()V

    :cond_41
    return-void
.end method

.method restrictFaultDetection()V
    .registers 2

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    return-void
.end method

.method setDuringSnapshot(Z)V
    .registers 2

    .line 754
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsDuringSnapshot:Z

    return-void
.end method

.method setFaultDetectionRestriction(Z)V
    .registers 6

    .line 739
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestricted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 740
    :cond_1e
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsRestrictedFaultDetection:Z

    return-void
.end method

.method setFaultDetectionRestrictionIfNeeded()V
    .registers 3

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 725
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    :cond_e
    return-void
.end method

.method setHandBlurDisplayRestricted(Z)V
    .registers 6

    .line 698
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restricted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 699
    :cond_1e
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIsBlurRestricted:Z

    return-void
.end method

.method setIlluminance(F)V
    .registers 2

    .line 513
    iput p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mIlluminanceValue:F

    return-void
.end method

.method setStoredPhotoInfo(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 316
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    iput p1, p3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    .line 317
    iput-object p2, p3, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreUri:Landroid/net/Uri;

    .line 319
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mNeedResetFaultDetectionRestriction:Z

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 320
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mNeedResetFaultDetectionRestriction:Z

    .line 321
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setDuringSnapshot(Z)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->setFaultDetectionRestriction(Z)V

    :cond_13
    return-void
.end method

.method unregisterDeviceMotionMonitor()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    if-nez v0, :cond_5

    return-void

    .line 302
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mMotionChangedListener:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->unregisterListener(Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor$MotionChangedListener;)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->stopMonitoring()V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;->release()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mDeviceMotionMonitor:Lcom/sonyericsson/android/camera/view/DeviceMotionMonitor;

    return-void
.end method

.method updateUiOrientation()V
    .registers 2

    .line 237
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->isFaultPreviewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->changeFaultPreviewOrientation()V

    :cond_9
    return-void
.end method
