.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnAutoReviewEventListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAutoReviewEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 7718
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnAutoReviewEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 7718
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnAutoReviewEventListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onAutoReviewClosed()V
    .registers 2

    .line 7722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnAutoReviewEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateAllOverlayControlVisibility()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 7723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnAutoReviewEventListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateVisibilityForSpecificDisplaySize()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
