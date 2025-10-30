.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showHintTextFaultDetectionSnapshot(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

.field final synthetic val$closeListener:Landroid/view/View$OnClickListener;

.field final synthetic val$deleteListener:Landroid/view/View$OnClickListener;

.field final synthetic val$resId:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 594
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$resId:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$deleteListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$closeListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 597
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mHintTextViewController:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$300(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionSnapshot;

    .line 598
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancel(Ljava/lang/String;)Z

    .line 599
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v0, "_id"

    .line 600
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$600(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    .line 605
    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mFaultDetectionDataHolder:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$700(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$FaultDetectionDataHolder;->mStoreUri:Landroid/net/Uri;

    .line 604
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 608
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_47

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$resId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$deleteListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$8;->val$closeListener:Landroid/view/View$OnClickListener;

    # invokes: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->showFaultPreview(ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$800(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;ILandroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 611
    :cond_47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4a
    return-void
.end method
