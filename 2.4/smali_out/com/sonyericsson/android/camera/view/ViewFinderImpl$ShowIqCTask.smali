.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowIqCTask;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowIqCTask"
.end annotation


# instance fields
.field private mControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;)V"
        }
    .end annotation

    .line 11476
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowIqCTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11477
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowIqCTask;->mControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 11480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowIqCTask;->mControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->show()V

    .line 11481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowIqCTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateVisibilityForSpecificDisplaySize()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
