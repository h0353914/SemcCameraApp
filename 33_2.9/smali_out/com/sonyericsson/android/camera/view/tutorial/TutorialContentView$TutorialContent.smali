.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
.super Ljava/lang/Object;
.source "TutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TutorialContent"
.end annotation


# instance fields
.field protected mLayoutId:I

.field protected mOrientation:I

.field protected mParams:[Ljava/lang/Object;

.field protected mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V
    .registers 5

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 163
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->changeOrientation(I)Z

    .line 164
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mParams:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected final changeOrientation(I)Z
    .registers 3

    .line 190
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    .line 193
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->setupResource()V

    :cond_e
    return v0
.end method

.method protected equalsWith(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z
    .registers 4

    if-eqz p1, :cond_18

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    iget p1, p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method protected abstract getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
.end method

.method protected abstract getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
.end method

.method protected abstract getPages()I
.end method

.method protected abstract getTutorialContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
.end method

.method protected abstract getTutorialTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation
.end method

.method protected final isPortrait()Z
    .registers 2

    .line 176
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected abstract isSimpleTutorialContent()Z
.end method

.method protected abstract setupResource()V
.end method
