.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaultDetectionDataHolder"
.end annotation


# instance fields
.field mFaultRequestId:I

.field mStoreRequestId:I

.field mStoreUri:Landroid/net/Uri;

.field mType:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 771
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreRequestId:I

    const/4 v1, 0x0

    .line 772
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreUri:Landroid/net/Uri;

    .line 773
    iput v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mFaultRequestId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$1;)V
    .registers 2

    .line 770
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;-><init>()V

    return-void
.end method
