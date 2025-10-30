.class Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;
.super Ljava/lang/Object;
.source "IconTextIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_48

    const/16 v0, -0x5a

    .line 43
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 44
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 46
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v2

    goto :goto_49

    :cond_48
    move v1, v3

    .line 48
    :goto_49
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
