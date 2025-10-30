.class abstract Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;
.source "SimpleTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ShortTutorialContent"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected setupResource()V
    .registers 2

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0c00ac

    goto :goto_d

    :cond_a
    const v0, 0x7f0c00ab

    .line 159
    :goto_d
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;->mLayoutId:I

    return-void
.end method
