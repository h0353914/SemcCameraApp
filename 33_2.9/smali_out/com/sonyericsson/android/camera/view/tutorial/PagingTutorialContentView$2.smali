.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V
    .registers 3

    .line 365
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 369
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # setter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$602(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 370
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->val$position:I

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createMediaPlayer(I)V
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # invokes: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$500(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
